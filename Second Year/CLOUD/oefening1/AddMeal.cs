using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using Microsoft.Azure.Cosmos;
using examen.exercise1.models;

namespace examen.exercise1;

public static class AddMeal
{
    private static readonly string CosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
    private static readonly string CosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
    private static readonly CosmosClient CosmosClient = new CosmosClient(CosmosUrl, CosmosKey);
    private static readonly Container Container = CosmosClient.GetContainer("School", "Meals");

    [FunctionName("CreateMeal")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "post", Route = "meals")] HttpRequest req)
    {
        string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
        Meal meal = JsonConvert.DeserializeObject<Meal>(requestBody);

        // Generate a unique ID for the meal
        meal.Id = Guid.NewGuid().ToString();

        if (!IsValidMeal(meal))
        {
            return new BadRequestObjectResult("Invalid meal data.");
        }

        try
        {
            await Container.CreateItemAsync(meal, new PartitionKey(meal.ChildRegistrationNumber));
            return new OkObjectResult(meal);
        }
        catch (Exception ex)
        {
            return new StatusCodeResult(StatusCodes.Status500InternalServerError);
        }
    }

    private static bool IsValidMeal(Meal meal)
    {
        // Validate meal data
        return !string.IsNullOrEmpty(meal.ChildRegistrationNumber) &&
               !string.IsNullOrEmpty(meal.Choice) &&
               !string.IsNullOrEmpty(meal.Date); // Additional validations can be added as required
    }
}