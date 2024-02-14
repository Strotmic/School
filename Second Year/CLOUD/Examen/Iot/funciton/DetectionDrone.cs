using IoTHubTrigger = Microsoft.Azure.WebJobs.EventHubTriggerAttribute;

using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Azure.EventHubs;
using System.Text;
using System.Net.Http;
using Microsoft.Extensions.Logging;
using System;
using Microsoft.Azure.Cosmos;
using Howest.models;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace Company.Function
{
    public class DetectionDrone
    {
        private static HttpClient client = new HttpClient();

        [FunctionName("DetectionDrone")]
        public async Task Run([IoTHubTrigger("messages/events", Connection = "EventHubEndpoint")] EventData message, ILogger log)
        {
            log.LogInformation($"C# IoT Hub trigger function processed a message: {Encoding.UTF8.GetString(message.Body.Array)}");

            string connectionString = Environment.GetEnvironmentVariable("cosmosDB");

            var cosmosClientOptions = new CosmosClientOptions()
            {
                ConnectionMode = ConnectionMode.Gateway
            };

            var detect = JsonConvert.DeserializeObject<Detect>(Encoding.UTF8.GetString(message.Body.Array));
            // Console.WriteLine(detect.deviceId);
            var cosmosClient = new CosmosClient(connectionString, cosmosClientOptions);
            var database = cosmosClient.GetDatabase("first database");
            var container = database.GetContainer("Detection");
            if (Int32.Parse(detect.accuracy) > 98)
            {

                detect.id = Guid.NewGuid().ToString();
                Console.WriteLine(detect.ToString());

                await container.CreateItemAsync<Detect>(detect, new PartitionKey(detect.droneid));
            }
        }
    }
}