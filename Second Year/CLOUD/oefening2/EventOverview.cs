using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.Azure.Cosmos;

namespace examen.oefening2.models;

public static class EventOverview
{
    [FunctionName("EventOverview")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequest req,
        ILogger log)
    {
        // Extract the eventId from the query string
        string eventId = req.Query["id"];
        // Check if eventId is provided; return a BadRequest if not
        if (string.IsNullOrEmpty(eventId))
            return new BadRequestObjectResult("Please pass a valid eventId in the query string");

        // Retrieve Cosmos DB connection details from environment variables
        string cosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
        string cosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
        // Initialize CosmosClient with the Cosmos DB URL and Key
        var cosmosClient = new CosmosClient(cosmosUrl, cosmosKey);
        // Get references to the 'events' and 'registrations' containers
        var eventsContainer = cosmosClient.GetContainer("exam", "events");
        var registrationsContainer = cosmosClient.GetContainer("exam", "registrations");

        // Fetch event details from the 'events' container using the eventId
        Event eventDetails = (await eventsContainer.ReadItemAsync<Event>(eventId, new PartitionKey(eventId))).Resource;

        // Construct a SQL query to fetch registrations for the given eventId
        var sqlQueryText = $"SELECT * FROM c WHERE c.eventId = '{eventId}'";
        QueryDefinition queryDefinition = new QueryDefinition(sqlQueryText);
        // Execute the query against the 'registrations' container
        FeedIterator<Registration> registrationsQuery = registrationsContainer.GetItemQueryIterator<Registration>(queryDefinition);

        // Prepare a list to hold the results
        var registrations = new List<Registration>();
        // Iterate through the query results and add them to the list
        while (registrationsQuery.HasMoreResults)
        {
            FeedResponse<Registration> response = await registrationsQuery.ReadNextAsync();
            registrations.AddRange(response);
        }

        // Return the event details and the list of registrations as a JSON object
        return new OkObjectResult(new { Event = eventDetails, Registrations = registrations });
    }
}