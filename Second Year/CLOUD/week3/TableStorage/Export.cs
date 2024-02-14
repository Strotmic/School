using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Collections.Generic;
using Howest.mct.models;
using Azure;
using Azure.Data.Tables;
using Azure.Storage.Blobs;

namespace Company.Function
{
    public class Export
    {
        [FunctionName("Export")]
        public async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "v2/registrations/export")] HttpRequest req,
            ILogger log)
        {

            string connectionString = Environment.GetEnvironmentVariable("TableStorage");
            string partionKey = "registrations";

            var tableClient = new TableClient(connectionString, partionKey);

            Pageable<TableEntity> registrations;

            registrations = tableClient.Query<TableEntity>(filter: $"PartitionKey eq '{partionKey}'");

            List<Registration> returnValue = new List<Registration>();

            returnValue = new List<Registration>();

            foreach (var registration in registrations)
            {
                returnValue.Add(new Registration()
                {
                    LastName = registration["lastname"].ToString(),
                    FirstName = registration["firstname"].ToString(),
                    Email = registration["email"].ToString(),
                    Age = int.Parse(registration["age"].ToString()),
                    IsFirstTimer = bool.Parse(registration["isfirsttimer"].ToString()),
                    Zipcode = registration["zipcode"].ToString(),
                    RegistrationId = registration["registrationid"].ToString()
                }
                );
            }


            string filePath = WriteCsv(returnValue);

            Upload(filePath);

            return new OkObjectResult("");
        }
        private string WriteCsv(List<Registration> registrations)
        {
            string header = "RegistrationId;LastName;FirstName;Email;Zipcode;Age;IsFirstTimer";

            string csv = header + Environment.NewLine;

            foreach (var registration in registrations)
            {
                csv += registration.ToCsv() + Environment.NewLine;
            }

            string filePath = $"registrations-{DateTime.Now.ToString("yyyyMMddHHmmss")}.csv";


            File.WriteAllText(filePath, csv);

            return (filePath);
        }

        private void Upload(string fileName)
        {

            string connectionString = Environment.GetEnvironmentVariable("TableStorage");

            BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);

            string containername = "csv";

            BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(containername);

            containerClient.CreateIfNotExists();

            BlobClient blobClient = containerClient.GetBlobClient(fileName);

            blobClient.Upload(fileName);

        }
    }
}
