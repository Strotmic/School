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

namespace examen.oefening2.models;

public static class EventStartStop
{
    [FunctionName("EventStartStop")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "put", Route = null)] HttpRequest req,
        ILogger log)
    {
        // Read and deserialize the request body
        string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
        dynamic data = JsonConvert.DeserializeObject(requestBody);
        // Extract 'id' and 'isActive' from the request body
        string id = data?.id; // Using 'id' instead of 'eventId'
        bool? isActive = data?.isActive; // Expecting a boolean 'isActive'

        // Validate the input: both 'id' and 'isActive' must be provided
        if (string.IsNullOrEmpty(id) || isActive == null)
            return new BadRequestObjectResult("Please pass a valid id and isActive in the request body");

        // Retrieve Cosmos DB connection details from environment variables
        string cosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
        string cosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
        // Initialize CosmosClient
        var cosmosClient = new CosmosClient(cosmosUrl, cosmosKey);
        // Get a reference to the 'events' container
        var container = cosmosClient.GetContainer("exam", "events");

        // Read the existing event item from the container
        ItemResponse<Event> eventResponse = await container.ReadItemAsync<Event>(id, new PartitionKey(id));
        Event eventToUpdate = eventResponse.Resource;
        // Update the 'IsActive' property of the event
        eventToUpdate.IsActive = isActive.Value;
        // Replace the item in the container with the updated event
        await container.ReplaceItemAsync(eventToUpdate, id, new PartitionKey(id));

        // Return a response indicating the event's active status has been updated
        return new OkObjectResult($"Event {id} active status updated to {isActive.Value}.");
    }
}