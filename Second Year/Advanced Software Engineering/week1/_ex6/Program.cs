// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

Dictionary<String, List<int>> dict_aankopen = new Dictionary<String, List<int>>();
dict_aankopen.Add("jan", new List<int>() { 100, 50, 20 });
dict_aankopen.Add("piet", new List<int>() { 10, 70, 20, 4, 58, 542 });
dict_aankopen.Add("karel", new List<int>() { 9 });
dict_aankopen.Add("sandra", new List<int>() { 45, 45, 10 });

static void GetExpensiveShoppingBaskets(Dictionary<String, List<int>> x, int budget)
{
    Console.WriteLine($"The following individuals had a shopping cart value higher than € {budget}.:");
    int Final = 0;
    foreach (var item in x)
    {
        Final = 0;
        foreach (var geld in item.Value)
        {
            Final += geld;
        }
        if (Final > budget)
        {
            Console.WriteLine(item.Key);
        }
    }
}

GetExpensiveShoppingBaskets(dict_aankopen, 200);
