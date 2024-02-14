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

namespace Company.Function
{
    public static class HttpTrigger1
    {
        [FunctionName("HttpTrigger1")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "put", Route = "api/{deviceID}/{treshold}")] HttpRequest req,
            ILogger log, string deviceID, string treshold)
        {
            var IotHubAdminConnectionString = Environment.GetEnvironmentVariable("IotHubOwner");
            RegistryManager registryManager = RegistryManager.CreateFromConnectionString(IotHubAdminConnectionString);
            var twin = await registryManager.GetTwinAsync(deviceID);
            twin.Properties.Desired["treshold"] = treshold;
            await registryManager.UpdateTwinAsync(twin.DeviceId, twin, twin.ETag);
            return new OkObjectResult($"responseMessage {deviceID} {treshold}");
        }
    }
}
