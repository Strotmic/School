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

public static class RetrieveMealsByClass
{
 private static readonly string CosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
    private static readonly string CosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
    private static readonly CosmosClient CosmosClient = new CosmosClient(CosmosUrl, CosmosKey);
    private static readonly Container ChildrenContainer = CosmosClient.GetContainer("School", "Children");
    private static readonly Container MealsContainer = CosmosClient.GetContainer("School", "Meals");

    [FunctionName("RetrieveMealsByClass")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "get", Route = "meals/class/{classId}")] HttpRequest req,
        string classId)
    {
        try
        {
            // Get children in the class
            var childrenQuery = new QueryDefinition("SELECT c.id FROM c WHERE c.class = @classId")
                                    .WithParameter("@classId", classId);
            var childrenIterator = ChildrenContainer.GetItemQueryIterator<Child>(childrenQuery);
            var childrenRegistrationNumbers = new List<String>();

            while (childrenIterator.HasMoreResults)
            {
                var childrenResponse = await childrenIterator.ReadNextAsync();
                childrenRegistrationNumbers.AddRange(childrenResponse.Select(c => c.Id));
            }

            // Get meals for these children
            var meals = new List<Meal>();
            foreach (var registrationNumber in childrenRegistrationNumbers)
            {
                var mealQuery = new QueryDefinition("SELECT * FROM m WHERE m.childRegistrationNumber = @registrationNumber")
                                    .WithParameter("@registrationNumber", registrationNumber);
                var mealIterator = MealsContainer.GetItemQueryIterator<Meal>(mealQuery);

                while (mealIterator.HasMoreResults)
                {
                    var mealResponse = await mealIterator.ReadNextAsync();
                    meals.AddRange(mealResponse);
                }
            }

            return new OkObjectResult(meals);
        }
        catch (Exception ex)
        {
            // Log or handle the exception as needed
            return new StatusCodeResult(StatusCodes.Status500InternalServerError);
        }
    }
}