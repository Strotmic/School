using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Howest.mct.functions.Models;
namespace Howest.mct.functions
{
    public static class Test2
    {
        [FunctionName("CalculatorTrigger")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "calculator/{a}/{b}")] HttpRequest req, int a, int b,
            ILogger log)
        {


            CalculationResult cr = new CalculationResult();
            cr.Result = a + b;
            cr.Operator = "+";
            return new OkObjectResult(cr);
        }
    }
}
