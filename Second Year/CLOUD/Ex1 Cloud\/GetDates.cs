using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Data.SqlClient;

namespace Howest.mct.functions
{
    public static class GetDates
    {
        [FunctionName("GetDates")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "days")] HttpRequest req,
            ILogger log)
        {
            string ConnectonString = Environment.GetEnvironmentVariable("ConnectionsString");
            SqlConnection sqlconnection = new SqlConnection(ConnectonString);


            return new OkObjectResult(responseMessage);
        }
    }
}
