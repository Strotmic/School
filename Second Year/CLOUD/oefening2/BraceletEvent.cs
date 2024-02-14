using System;
using System.Collections.Generic;
using IoTHubTrigger = Microsoft.Azure.WebJobs.EventHubTriggerAttribute;

using System.Threading.Tasks;
using Microsoft.Azure.WebJobs;
using System.Text;
using Newtonsoft.Json;
using System.Net.Http;
using Microsoft.Extensions.Logging;
using Azure.Messaging.EventHubs;
using Microsoft.Azure.Devices.Shared;
using Microsoft.Azure.Devices;
using Microsoft.Azure.Cosmos;

namespace examen.oefening2.models;

public static class BraceletEvent
{
    [FunctionName("BraceletEvent")]
    public static async Task Run(
        [IoTHubTrigger("messages/events", Connection = "EventHubEndpoint")] EventData eventData, 
        ILogger log)
    {
        try
        {
            var messageString = Encoding.UTF8.GetString(eventData.Body.ToArray());
            var messageJson = JsonConvert.DeserializeObject<Dictionary<string, object>>(messageString);

            if (!messageJson.TryGetValue("IsEntry", out var isEntryObj) || !(isEntryObj is bool isEntry))
            {
                log.LogError("Invalid message format or missing IsEntry field.");
                return;
            }

            string deviceId = eventData.SystemProperties["iothub-connection-device-id"].ToString();
            string iotHubConnectionString = Environment.GetEnvironmentVariable("IoTHubConnectionString");
            using var registryManager = RegistryManager.CreateFromConnectionString(iotHubConnectionString);
            Twin twin = await registryManager.GetTwinAsync(deviceId);

            string cosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
            string cosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
            var cosmosClient = new CosmosClient(cosmosUrl, cosmosKey);
            var container = cosmosClient.GetContainer("exam", "registrations");

            if (isEntry)
            {
                var registration = new
                {
                    id = Guid.NewGuid().ToString(),
                    braceletId = deviceId,
                    eventId = twin.Properties.Desired["EventId"],
                    name = $"{twin.Properties.Desired["FirstName"]} {twin.Properties.Desired["LastName"]}",
                    age = twin.Properties.Desired["Age"],
                    photoName = twin.Properties.Desired["PhotoName"],
                    arrivalTime = DateTime.UtcNow,
                    departureTime = (DateTime?)null
                };
                
                string partitionKeyValue = registration.eventId; 
                await container.CreateItemAsync(registration, new PartitionKey(partitionKeyValue));
            }
            else
            {
                var sqlQueryText = $"SELECT * FROM c WHERE c.braceletId = '{deviceId}' AND c.departureTime = null";
                var queryDefinition = new QueryDefinition(sqlQueryText);
                var queryResultSetIterator = container.GetItemQueryIterator<dynamic>(queryDefinition);

                while (queryResultSetIterator.HasMoreResults)
                {
                    var currentResultSet = await queryResultSetIterator.ReadNextAsync();
                    foreach (var registration in currentResultSet)
                    {
                        dynamic updatedRegistration = registration;
                        updatedRegistration.departureTime = DateTime.UtcNow;
                        string partitionKeyValue = updatedRegistration.eventId; 
                        await container.ReplaceItemAsync<dynamic>(updatedRegistration, updatedRegistration.id.ToString(), new PartitionKey(partitionKeyValue));
                    }
                }
            }

            // Update the device twin with the last activity time and type
            twin.Properties.Reported["LastActivityTime"] = DateTime.UtcNow;
            twin.Properties.Reported["LastActivityType"] = isEntry ? "Entry" : "Exit";
            await registryManager.UpdateTwinAsync(deviceId, twin, twin.ETag);

            log.LogInformation($"Processed { (isEntry ? "entry" : "exit") } for device ID: {deviceId}");
        }
        catch (Exception ex)
        {
            log.LogError($"Error processing message: {ex.Message}");
        }
    }
}
