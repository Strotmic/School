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
using Howest.mct.models;
using Azure.Identity;
namespace Company.Function
{
    public static class HttpTrigger1
    {
        [FunctionName("HttpTrigger1")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = "v1/registrations")] HttpRequest req,
            ILogger log)
        {
            try
            {
                if (req.Method == "GET")
                {
                    var credential = new DefaultAzureCredential();
                    var token = credential.GetToken(new Azure.Core.TokenRequestContext(new[] { "https://database.windows.net/.default" }));

                    string connectionString = Environment.GetEnvironmentVariable("ConnectionString");


                    // Add the token to the SQL connection
                    SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
                    sqlConnection.AccessToken = token.Token;
                    await sqlConnection.OpenAsync();

                    SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Registration", sqlConnection);


                    SqlDataReader sqlDataReader = await sqlCommand.ExecuteReaderAsync();

                    List<Registration> registrations = new List<Registration>();

                    while (sqlDataReader.Read())
                    {
                        registrations.Add(new Registration(
                            sqlDataReader.GetGuid(0).ToString(),
                            sqlDataReader.GetString(1),
                            sqlDataReader.GetString(2),
                            sqlDataReader.GetString(3),
                            sqlDataReader.GetString(4),
                            sqlDataReader.GetInt32(5),
                            sqlDataReader.GetBoolean(6)
                        ));
                    }

                    await sqlConnection.CloseAsync();

                    return new OkObjectResult(registrations);
                }
                {

                    var credential = new DefaultAzureCredential();
                    var token = credential.GetToken(new Azure.Core.TokenRequestContext(new[] { "https://database.windows.net/.default" }));

                    string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
                    var registration = JsonConvert.DeserializeObject<Registration>(requestBody);

                    Console.WriteLine(registration);

                    string connectionString = Environment.GetEnvironmentVariable("ConnectionString");

                    SqlConnection sqlConnection = new System.Data.SqlClient.SqlConnection(connectionString);
                    sqlConnection.AccessToken = token.Token;
                    await sqlConnection.OpenAsync();

                    SqlCommand sqlCommand = new SqlCommand("INSERT INTO Registration (RegistrationId, LastName, FirstName, Email, Zipcode, Age, IsFirstTimer) values(@RegistrationId, @LastName, @FirstName, @Email, @Zipcode, @Age, @IsFirstTimer)", sqlConnection);

                    Guid g = Guid.NewGuid(); // change this alter when registration is a class not a record so the id gets generated in the calss instead of here.
                    sqlCommand.Parameters.AddWithValue("@RegistrationId", g);
                    sqlCommand.Parameters.AddWithValue("@LastName", registration.LastName);
                    sqlCommand.Parameters.AddWithValue("@FirstName", registration.FirstName);
                    sqlCommand.Parameters.AddWithValue("@Email", registration.Email);
                    sqlCommand.Parameters.AddWithValue("@Zipcode", registration.Zipcode);
                    sqlCommand.Parameters.AddWithValue("@Age", registration.Age);
                    sqlCommand.Parameters.AddWithValue("@IsFirstTimer", registration.IsFirstTimer);

                    await sqlCommand.ExecuteNonQueryAsync();

                    await sqlConnection.CloseAsync();

                    var responseMessage = new
                    {
                        message = "Registration successfully added"
                    };




                    return new OkObjectResult(responseMessage);
                }

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return new StatusCodeResult(500);
            }



        }
    }
}
