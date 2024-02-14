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
using System.Collections.Generic;
using Howest.mct.functions.Models;

namespace Company.Function
{
    public static class GetVisiters
    {
        [FunctionName("GetVisiters")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "visiters/{dag}")] HttpRequest req,
            ILogger log, string dag)
        {

            try
            {
                string connectionString = Environment.GetEnvironmentVariable("ConnectionString");
                SqlConnection sqlConnection = new SqlConnection($"{connectionString}");
                await sqlConnection.OpenAsync();

                SqlCommand sqlCommand = new SqlCommand("select * from Bezoekers where DagVanDeWeek=@s;", sqlConnection);
                sqlCommand.Parameters.AddWithValue("@s", dag);

                SqlDataReader reader = await sqlCommand.ExecuteReaderAsync();

                List<Visit> bezoekers = new List<Visit>();
                while (reader.Read())
                {
                    int Tijdstip = int.Parse(reader["TijdstipDag"].ToString());
                    int AantalBezoekers = int.Parse(reader["AantalBezoekers"].ToString());
                    string DagVanDeWeek = reader["DagVanDeWeek"].ToString();

                    Visit bezoeker = new Visit(Tijdstip, AantalBezoekers, DagVanDeWeek);
                    bezoekers.Add(bezoeker);
                }

                sqlConnection.Close();

                return new OkObjectResult(bezoekers);

            }
            catch (Exception e)
            {
                // log.LogError(e.Message);
                return new StatusCodeResult(500);
            }
        }
    }
}
