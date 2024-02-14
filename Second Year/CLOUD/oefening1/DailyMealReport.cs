using System;
using System.Collections.Generic;
using System.IO;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.Cosmos;
using Azure.Storage.Blobs;
using examen.exercise1.models;

namespace examen.exercise1;

public static class DailyMealReport
{
      private static readonly string CosmosUrl = Environment.GetEnvironmentVariable("CosmosUrl");
    private static readonly string CosmosKey = Environment.GetEnvironmentVariable("CosmosKey");
    private static readonly CosmosClient CosmosClient = new CosmosClient(CosmosUrl, CosmosKey);
    private static readonly Container MealsContainer = CosmosClient.GetContainer("School", "Meals");
    private static readonly string BlobConnectionString = Environment.GetEnvironmentVariable("AzureWebJobsStorage");

    [FunctionName("DailyMealReport")]
    public static async Task Run([TimerTrigger("0 0 1 * * *")] TimerInfo myTimer)
    {
        var currentDate = DateTime.UtcNow.ToString("yyyyMMdd");
        string containerName = $"m{currentDate.ToLower()}";

        // Fetch meals data
        var mealsData = await FetchMealsDataForDate(new DateTime(2023, 4, 14)); // Adjusted to April 14, 2023

        // Generate CSV
        string csvContent = GenerateCsv(mealsData);

        // Blob Storage Operations
        BlobServiceClient blobServiceClient = new BlobServiceClient(BlobConnectionString);
        BlobContainerClient containerClient = await CreateBlobContainerIfNotExistsAsync(blobServiceClient, containerName);

        // Upload CSV to Blob
        BlobClient blobClient = containerClient.GetBlobClient($"{currentDate}.csv");
        using (var stream = new MemoryStream(Encoding.UTF8.GetBytes(csvContent)))
        {
            await blobClient.UploadAsync(stream, overwrite: true);
        }
    }

    private static async Task<IEnumerable<Meal>> FetchMealsDataForDate(DateTime date)
    {
        var dateString = date.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
        var query = new QueryDefinition("SELECT * FROM m WHERE m.date = @date")
                        .WithParameter("@date", dateString);
        var iterator = MealsContainer.GetItemQueryIterator<Meal>(query);
        var meals = new List<Meal>();

        while (iterator.HasMoreResults)
        {
            var response = await iterator.ReadNextAsync();
            meals.AddRange(response);
        }

        return meals;
    }

    private static string GenerateCsv(IEnumerable<Meal> mealsData)
    {
        var csv = new StringBuilder();
        csv.AppendLine("ChildRegistrationNumber,Choice,Date");

        foreach (var meal in mealsData)
        {
            csv.AppendLine($"{meal.ChildRegistrationNumber},{meal.Choice},{meal.Date}");
        }

        return csv.ToString();
    }

    private static async Task<BlobContainerClient> CreateBlobContainerIfNotExistsAsync(BlobServiceClient blobServiceClient, string containerName)
    {
        BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(containerName);
        await containerClient.CreateIfNotExistsAsync();
        return containerClient;
    }
}