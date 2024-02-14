using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Azure.Devices;
using Azure.Storage.Blobs;
using Azure.Storage;

namespace examen.oefening2.models;

public static class RegisterBracelet
{
    [FunctionName("RegisterBracelet")]
    public static async Task<IActionResult> Run(
        [HttpTrigger(AuthorizationLevel.Function, "post", Route = "registerBracelet")] HttpRequest req,
        ILogger log)
    {
        string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
        var bracelet = JsonConvert.DeserializeObject<Bracelet>(requestBody);

        // Validate the required fields including the photo name
        if (string.IsNullOrWhiteSpace(bracelet.FirstName) ||
            string.IsNullOrWhiteSpace(bracelet.LastName) ||
            bracelet.Age == 0 ||
            string.IsNullOrWhiteSpace(bracelet.EventId) ||
            string.IsNullOrWhiteSpace(bracelet.PhotoName))
        {
            return new BadRequestObjectResult("Missing required details: FirstName, LastName, Age, EventId, and PhotoName.");
        }

        // Generate a new GUID for the bracelet ID
        bracelet.Id = Guid.NewGuid().ToString();

        // Upload the photo to Blob Storage with a unique name
        string uniquePhotoName = $"{Guid.NewGuid()}_{bracelet.PhotoName}";
        string localPath = "C:\\Users\\vanha\\Documents\\MCT2\\azure\\labo\\examen.oefening2"; // Local directory path
        string photoFilePath = Path.Combine(localPath, bracelet.PhotoName);
        string storageUri = Environment.GetEnvironmentVariable("StorageUri");
        string storageAccountKey = Environment.GetEnvironmentVariable("StorageAccountKey");
        string accountName = Environment.GetEnvironmentVariable("AccountName");
        var blobClient = new BlobClient(new Uri($"{storageUri}/{uniquePhotoName}"), new StorageSharedKeyCredential(accountName, storageAccountKey));
        using (var stream = File.OpenRead(photoFilePath))
        {
            await blobClient.UploadAsync(stream, true);
        }

        // Connect to IoT Hub and register the device
        string iotHubConnectionString = Environment.GetEnvironmentVariable("IoTHubConnectionString");
        using var registryManager = RegistryManager.CreateFromConnectionString(iotHubConnectionString);
        var device = new Device(bracelet.Id);
        await registryManager.AddDeviceAsync(device);

        // Set the unique photo name in the device twin's desired properties
        var twin = await registryManager.GetTwinAsync(bracelet.Id);
        twin.Properties.Desired["FirstName"] = bracelet.FirstName;
        twin.Properties.Desired["LastName"] = bracelet.LastName;
        twin.Properties.Desired["Age"] = bracelet.Age;
        twin.Properties.Desired["EventId"] = bracelet.EventId;
        twin.Properties.Desired["PhotoName"] = uniquePhotoName;
        await registryManager.UpdateTwinAsync(bracelet.Id, twin, twin.ETag);

        log.LogInformation($"Device created with ID: {bracelet.Id} and PhotoName: {uniquePhotoName}");

        return new OkObjectResult($"Device created with ID: {bracelet.Id} and PhotoName: {uniquePhotoName}");
    }
}