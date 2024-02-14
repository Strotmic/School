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
    public static class SecondCal
    {
        [FunctionName("SecondCal")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = "calculator")] HttpRequest req,
            ILogger log)
        {
            string request = await new StreamReader(req.Body).ReadToEndAsync();
            Calculationrequest cr = JsonConvert.DeserializeObject<Calculationrequest>(request);
            CalculationResult cs = new CalculationResult();
            cs.Operator = cr.Operator;
            cs.Result = cr.a + cr.b;

            return new OkObjectResult(cs);
        }
    }
}
