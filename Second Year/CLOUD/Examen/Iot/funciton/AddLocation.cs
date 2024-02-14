using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Howest.models;
using Azure.Data.Tables;
using Azure.Identity;

namespace Company.Function
{
    public static class AddLocation
    {
        [FunctionName("AddLocation")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "v1/addLocation/")] HttpRequest req,
            ILogger log)
        {
            string accountName = Environment.GetEnvironmentVariable("accountName");
            string accountKey = Environment.GetEnvironmentVariable("storageKey");
            string uri = Environment.GetEnvironmentVariable("uri");

            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            var registration = JsonConvert.DeserializeObject<Location>(requestBody);

            var tableClient = new TableClient(new Uri(uri), "Locations", new TableSharedKeyCredential(accountName, accountKey));

            string partionKey = registration.countryCode;
            string rowKey = Guid.NewGuid().ToString();

            var registrationEntity = new TableEntity(partionKey, rowKey)
            {
                { "targetID", rowKey },
                { "countryCode", registration.countryCode },
                { "name", registration.name },
                { "lattitude", registration.lattitude },
                { "longitude", registration.longitude },
                { "personName", registration.personName },
                { "detect", registration.detect }
            };

            await tableClient.AddEntityAsync(registrationEntity);


            registration.targetID = rowKey;

            return new OkObjectResult(registration);
        }
    }
}
