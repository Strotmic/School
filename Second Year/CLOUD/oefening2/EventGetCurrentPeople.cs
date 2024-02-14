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

public static class EventGetCurrentPeople
{
    [FunctionName("EventGetCurrentPeople")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", Route = "currentAttendees")] HttpRequest req,
        ILogger log)
    {
        // Retrieve the 'eventId' from the query string
        string eventId = req.Query["id"];

        // Check if 'eventId' is provided, return BadRequest if not
        if (string.IsNullOrEmpty(eventId))
        {
            return new BadRequestObjectResult("Please provide an eventId.");
        }

        // Initialize Cosmos DB client with connection details from environment variables
        string cosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
        string cosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
        var cosmosClient = new CosmosClient(cosmosUrl, cosmosKey);

        // Get a reference to the 'registrations' container in Cosmos DB
        var container = cosmosClient.GetContainer("exam", "registrations");

        // Define a SQL query to fetch attendees who are currently at the event (departureTime is null)
        var sqlQueryText = $"SELECT * FROM c WHERE c.eventId = '{eventId}' AND c.departureTime = null";
        QueryDefinition queryDefinition = new QueryDefinition(sqlQueryText);

        // Execute the query
        FeedIterator<dynamic> queryResultSetIterator = container.GetItemQueryIterator<dynamic>(queryDefinition);

        // Initialize a list to hold the current attendees
        List<dynamic> currentAttendees = new List<dynamic>();
        // Iterate through the query results
        while (queryResultSetIterator.HasMoreResults)
        {
            FeedResponse<dynamic> currentResultSet = await queryResultSetIterator.ReadNextAsync();
            // Add each attendee to the list
            foreach (var attendee in currentResultSet)
            {
                currentAttendees.Add(attendee);
            }
        }

        // Return the list of current attendees as a JSON response
        return new OkObjectResult(currentAttendees);
    }
}