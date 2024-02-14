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

public static class EventCreate
{
    [FunctionName("EventCreate")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,
        ILogger log)
    {
        // Read the request body
        string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
        // Deserialize the request body into an Event object
        Event newEvent = JsonConvert.DeserializeObject<Event>(requestBody);

        // Validate the required fields
        if (string.IsNullOrWhiteSpace(newEvent.Name) ||
            string.IsNullOrWhiteSpace(newEvent.City) ||
            string.IsNullOrWhiteSpace(newEvent.CreatorEmail) ||
            newEvent.StartTime == default(DateTime) ||
            newEvent.EndTime == default(DateTime))
        {
            // If validation fails, return a BadRequest response
            return new BadRequestObjectResult("Missing required event details. Please provide event name, city, creator email, start time, and end time.");
        }

        // Retrieve the Cosmos DB connection URL and key from environment variables
        string cosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
        string cosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
        // Create a CosmosClient instance
        var cosmosClient = new CosmosClient(cosmosUrl, cosmosKey);
        // Get a reference to the container
        var container = cosmosClient.GetContainer("exam", "events");

        // Generate a new unique identifier for the event
        newEvent.Id = Guid.NewGuid().ToString();
        // Create the new event item in the Cosmos DB container
        await container.CreateItemAsync(newEvent, new PartitionKey(newEvent.Id));

        // Return a success response with the event ID
        return new OkObjectResult($"Event created with ID: {newEvent.Id}");
    }
}