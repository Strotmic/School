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

namespace Company.Function
{
    public static class HttpTrigger2
    {
        [FunctionName("HttpTrigger2")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "devices")] HttpRequest req,
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




            return new OkObjectResult(twins);
        }
    }
}
