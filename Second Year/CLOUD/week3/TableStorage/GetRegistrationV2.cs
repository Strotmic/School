using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Azure.Data.Tables;
using Azure;
using Howest.mct.models;
using System.Collections.Generic;
using Azure.Identity;

namespace Company.Function
{
    public static class GetRegistrationV2
    {
        [FunctionName("GetRegistrationV2")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "v2/registrations")] HttpRequest req,
            ILogger log)
        {

            // string connectionString = Environment.GetEnvironmentVariable("TableStorage");

            var tableClient = new TableClient(new Uri("https://storagetimbleuze.table.core.windows.net/registrations"), "registrations", new DefaultAzureCredential());

            string partionKey = "registrations";

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



            return new OkObjectResult(returnValue);
        }
    }
}
