using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Azure.Cosmos;
using System.Collections.Generic;

namespace Company.Function
{
    public static class GetAllDetectionsByDrone
    {
        [FunctionName("GetAllDetectionsByDrone")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            string connectionString = Environment.GetEnvironmentVariable("cosmosDB");

            var cosmosClientOptions = new CosmosClientOptions()
            {
                ConnectionMode = ConnectionMode.Gateway
            };

            var cosmosClient = new CosmosClient(connectionString, cosmosClientOptions);

            var database = cosmosClient.GetDatabase("first database");
            var container = database.GetContainer("Detection");

            var sql = "SELECT * FROM c where c.droneid = 'drone1'";

            var iterator = container.GetItemQueryIterator<dynamic>(sql);

            List<dynamic> results = new List<dynamic>();

            while (iterator.HasMoreResults)
            {
                var response = await iterator.ReadNextAsync();

                foreach (var item in response)
                {
                    results.Add(item);
                }

            }



            return new OkObjectResult(results);
        }
    }
}
