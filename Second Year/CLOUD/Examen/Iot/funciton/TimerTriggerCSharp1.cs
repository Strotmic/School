using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Net.Http;
using System.Threading.Tasks;
using Microsoft.Azure.Cosmos;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;
using Howest.models;


namespace Company.Function
{
    public class TimerTriggerCSharp1
    {
        private static readonly HttpClient client = new HttpClient();
        [FunctionName("TimerTriggerCSharp1")]
        public async Task RunAsync([TimerTrigger("0 */1 * * * *")] TimerInfo myTimer, ILogger log)
        {

            log.LogInformation($"C# Timer trigger function executed at: {DateTime.Now}");

            string connectionString = Environment.GetEnvironmentVariable("cosmosDB");

            var cosmosClientOptions = new CosmosClientOptions()
            {
                ConnectionMode = ConnectionMode.Gateway
            };

            var cosmosClient = new CosmosClient(connectionString, cosmosClientOptions);

            var database = cosmosClient.GetDatabase("first database");
            var container = database.GetContainer("Detection");

            var sql = "SELECT * FROM c";

            var iterator = container.GetItemQueryIterator<dynamic>(sql);

            List<dynamic> results = new List<dynamic>();

            while (iterator.HasMoreResults)
            {
                var response = iterator.ReadNextAsync().Result;

                foreach (var item in response)
                {
                    if (item.isVerwerkt == 0)
                    {

                        var values = new Dictionary<string, string>
                                {
                                { "to" ,"tim.bleuze@student.howest.be" },
                                { "target", "testTarget"},
                                {"objectDetected", "testDetected"}
                                };
                        var content = new FormUrlEncodedContent(values);
                        var response2 = await client.PostAsync("https://prod-170.westeurope.logic.azure.com/workflows/b32ae7cc7dfe48b1ba30d38a5e5129e9/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=msv5rU-PaX16C6zVKkiW5wHwJ51Lu4hFmMbmhl-D6Y0", content);
                        var responseString = await response2.Content.ReadAsStringAsync();


                        var id = item.id;
                        var droneid = item.droneid;
                        item.isVerwerkt = 1;
                        var response3 = container.ReplaceItemAsync<Detect>(item, item.id, new PartitionKey(item.droneid));
                    }
                }

            }
        }
    }
}
