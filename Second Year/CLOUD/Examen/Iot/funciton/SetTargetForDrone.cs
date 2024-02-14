using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Azure.Devices;
using Azure.Data.Tables;
using Azure;
using Howest.models;
using System.Collections.Generic;
using Microsoft.AspNetCore.Http.Internal;
namespace Company.Function
{
    public static class SetTargetForDrone
    {
        [FunctionName("SetTargetForDrone")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "{deviceId}/{countryCode}/{targetId}")] HttpRequest req,
            ILogger log, string deviceId, string countryCode, string targetId)
        {
            string accountName = Environment.GetEnvironmentVariable("accountName");
            string accountKey = Environment.GetEnvironmentVariable("storageKey");
            string uri = Environment.GetEnvironmentVariable("uri");

            var tableClient = new TableClient(new Uri(uri), "Locations", new TableSharedKeyCredential(accountName, accountKey));

            string partionKey = countryCode;

            Pageable<TableEntity> Locations;

            Locations = tableClient.Query<TableEntity>(filter: $"PartitionKey eq '{partionKey}'");

            List<Location> returnValue = new List<Location>();

            returnValue = new List<Location>();

            foreach (var registration in Locations)
            {
                returnValue.Add(new Location()
                {
                    targetID = registration.RowKey,
                    countryCode = registration.PartitionKey,
                    name = registration["name"].ToString(),
                    lattitude = registration["lattitude"].ToString(),
                    longitude = registration["longitude"].ToString(),
                    personName = registration["personName"].ToString(),
                    detect = registration["detect"].ToString()
                });
            }

            string lattitude = returnValue[0].lattitude;
            string longitude = returnValue[0].longitude;
            string detect = returnValue[0].detect;

            Console.WriteLine("lattitude: " + lattitude);
            Console.WriteLine("longitude: " + longitude);
            Console.WriteLine("detect: " + detect);
            var IotHubAdminConnectionString = Environment.GetEnvironmentVariable("IotHhubOwner");
            RegistryManager registryManager = RegistryManager.CreateFromConnectionString(IotHubAdminConnectionString);
            var twin = await registryManager.GetTwinAsync(deviceId);
            twin.Properties.Desired["longitude"] = longitude;
            await registryManager.UpdateTwinAsync(deviceId, twin, twin.ETag);


            var twin2 = await registryManager.GetTwinAsync(deviceId);
            twin2.Properties.Desired["lattitude"] = lattitude;
            await registryManager.UpdateTwinAsync(deviceId, twin2, twin2.ETag);

            var twin3 = await registryManager.GetTwinAsync(deviceId);
            twin3.Properties.Desired["detect"] = detect;
            await registryManager.UpdateTwinAsync(deviceId, twin3, twin3.ETag);

            string responseMessage = "The targetId is set to " + targetId + " for device " + deviceId + " in country " + countryCode;

            return new OkObjectResult($"De drone met deviceId {deviceId} is nu op weg naar targetId {targetId} in land {countryCode} en lattitude {lattitude} en longitude {longitude} en detect {detect}");
        }
    }
}
