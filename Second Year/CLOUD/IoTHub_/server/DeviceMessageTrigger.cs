using IoTHubTrigger = Microsoft.Azure.WebJobs.EventHubTriggerAttribute;

using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Azure.EventHubs;
using System.Text;
using System.Net.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Azure.WebJobs.Host.Bindings;
using System;
using Microsoft.Azure.Cosmos;
using Newtonsoft.Json;
using device.Models;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Howest.mct
{
    public class DeviceMessageTrigger
    {
        private static HttpClient client = new HttpClient();

        [FunctionName("DeviceMessageTrigger")]
        public async Task Run([IoTHubTrigger("messages/events", Connection = "EventHubEndpoint")] EventData message, ILogger log)
        {
            log.LogInformation($"C# IoT Hub trigger function processed a message: {Encoding.UTF8.GetString(message.Body.Array)}");

            log.LogInformation(Encoding.UTF8.GetString(message.Body.Array));

            string connectionString = Environment.GetEnvironmentVariable("cosmosDB");

            var cosmosClientOptions = new CosmosClientOptions()
            {
                ConnectionMode = ConnectionMode.Gateway
            };

            var person = JsonConvert.DeserializeObject<SensorData>(Encoding.UTF8.GetString(message.Body.Array));
            Console.WriteLine(person.ToString());

            var cosmosClient = new CosmosClient(connectionString, cosmosClientOptions);
            var database = cosmosClient.GetDatabase("first database");
            var container = database.GetContainer("Devices");
            person.id = Guid.NewGuid().ToString();
            Console.WriteLine(person.ToString());

            await container.CreateItemAsync<SensorData>(person, new PartitionKey(person.device));
            // Console.WriteLine(result);
            return;

        }
    }
}