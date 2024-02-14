using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Howest.mct.models;
using Azure.Data.Tables;
using Azure.Identity;

namespace Company.Function
{
    public static class AddRegistrationV2
    {
        [FunctionName("AddRegistrationV2")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = "v2/registrations")] HttpRequest req,
            ILogger log)
        {

            // string connectionString = Environment.GetEnvironmentVariable("TableStorage");

            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            var registration = JsonConvert.DeserializeObject<Registration>(requestBody);

            var tableClient = new TableClient(new Uri("https://storagetimbleuze.table.core.windows.net/registrations"), "registrations", new DefaultAzureCredential());


            // var tableClient = new TableClient(connectionString, "registrations");
            string partionKey = "registrations";
            string rowKey = Guid.NewGuid().ToString();

            var newEntity = new TableEntity(partionKey, rowKey)
            {
                { "age", registration.Age },
                { "lastname", registration.LastName },
                { "email", registration.Email },
                { "firstname", registration.FirstName },
                { "isfirsttimer", registration.IsFirstTimer },
                { "zipcode", registration.Zipcode },
                { "registrationid", rowKey  }
            };

            await tableClient.AddEntityAsync(newEntity);


            registration.RegistrationId = rowKey;

            return new OkObjectResult(registration);
        }
    }
}
