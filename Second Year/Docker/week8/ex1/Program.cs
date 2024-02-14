using System;
using System.Net.Http;
using System.Threading.Tasks;

class Program2
{
    static async Task Main(string[] args)
    {
        var client = new HttpClient();
        int interval = 3;
        string apiUrl = Environment.GetEnvironmentVariable("API_URL") ?? "https://wizard-world-api.herokuapp.com/Houses";

        if (args.Length > 0 && int.TryParse(args[0], out int argInterval))
        {
            interval = argInterval;
        }

        Console.WriteLine("Application started. Type 'api' to make an API call, 'seturl [url]' to set a new API URL, or 'exit' to quit.");
        Task loggingTask = LogMessageEveryInterval(interval);

        while (true)
        {
            string input = Console.ReadLine();
            string[] commands = input.Split(' ');

            if (commands[0].Equals("api", StringComparison.OrdinalIgnoreCase))
            {
                Console.WriteLine($"Making API call to {apiUrl}");
                var response = await client.GetAsync(apiUrl);
                var content = await response.Content.ReadAsStringAsync();
                Console.WriteLine($"API Response: {content}");
            }
            else if (commands[0].Equals("seturl", StringComparison.OrdinalIgnoreCase) && commands.Length > 1)
            {
                apiUrl = commands[1];
                Console.WriteLine($"API URL set to: {apiUrl}");
            }
            else if (input.Equals("exit", StringComparison.OrdinalIgnoreCase))
            {
                break;
            }
        }
    }

    private static async Task LogMessageEveryInterval(int interval)
    {
        while (true)
        {
            Console.WriteLine($"Logging message at {DateTime.Now}");
            await Task.Delay(interval * 1000);
        }
    }
}