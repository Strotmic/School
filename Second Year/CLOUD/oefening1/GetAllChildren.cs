using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Azure.Cosmos;
using examen.exercise1.models;

namespace examen.exercise1;

public static class GetAllChildren
{
    private static readonly string CosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
    private static readonly string CosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
    private static readonly CosmosClient CosmosClient = new CosmosClient(CosmosUrl, CosmosKey);
    private static readonly Container Container = CosmosClient.GetContainer("School", "Children");

    [FunctionName("GetAllChildren")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", Route = "children")] HttpRequest req)
    {
        try
        {
            var query = new QueryDefinition("SELECT * FROM c");
            var iterator = Container.GetItemQueryIterator<Child>(query);
            var results = new List<Child>();

            while (iterator.HasMoreResults)
            {
                var response = await iterator.ReadNextAsync();
                results.AddRange(response.ToList());
            }

            return new OkObjectResult(results);
        }
        catch (Exception ex)
        {
            // Log or handle the exception as needed
            return new StatusCodeResult(StatusCodes.Status500InternalServerError);
        }
    }
}