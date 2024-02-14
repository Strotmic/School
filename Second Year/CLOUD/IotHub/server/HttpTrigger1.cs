using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Win32;
using Microsoft.Azure.Devices;
using Microsoft.Rest.TransientFaultHandling;
using System.Collections.Generic;
using Microsoft.Azure.Devices.Shared;
using Newtonsoft.Json.Linq;
namespace Company.Function
{
    public static class HttpTrigger1
    {
        [FunctionName("HttpTrigger1")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            RegistryManager registryManager = RegistryManager.CreateFromConnectionString(Environment.GetEnvironmentVariable("IotHubOwner"));
            var devices = registryManager.CreateQuery("SELECT * FROM devices");
            List<Twin> twins = new List<Twin>();
            while (devices.HasMoreResults)
            {
                var page = await devices.GetNextAsTwinAsync();
                foreach (var twin in page)
                {
                    twins.Add(twin);
                }
            }

            string x = (twins[0].Properties.Desired.ToJson());
            JObject jsonObj = JObject.Parse(x);
            int cola_prijs = (int)(jsonObj["cola_prijs"]);
            int water_prijs = (int)(jsonObj["water_prijs"]);
            int fruit_juice_prijs = (int)(jsonObj["fruit_juice"]);

            int cola_voorraad = (int)(jsonObj["cola_voorraad"]);
            int water_voorraad = (int)(jsonObj["water_voorraad"]);
            int fruit_juice_voorraad = (int)(jsonObj["fruit_juice_voorraad"]);




            return new OkObjectResult(twins[0]);
        }
    }
}
