Dictionary<String, List<int>> dict_aankopen = new Dictionary<String, List<int>>();
dict_aankopen.Add("jan", new List<int>() { 100, 50, 20 });
dict_aankopen.Add("piet", new List<int>() { 10, 70, 20, 4, 58, 542 });
dict_aankopen.Add("karel", new List<int>() { 9 });
dict_aankopen.Add("sandra", new List<int>() { 45, 45, 10 });

void GetExpensiveShoppingBaskets(Dictionary<string, List<int>> dict_purchases, int threshold)
{
    List<string> names = new List<string>();
    foreach (KeyValuePair<string, List<int>> entry in dict_purchases)
    {
        int sum = 0;
        foreach (int price in entry.Value)
        {
            sum += price;
        }
        if (sum > threshold)
        {
            names.Add(entry.Key);
        }
    }
    Console.WriteLine($"The following individuals had a shopping cart value higher than € {threshold}:");
    foreach (string name in names)
    {
        Console.WriteLine(name);
    }
}

Console.WriteLine("Give a threshold: ");
int threshold = Convert.ToInt32(Console.ReadLine());
GetExpensiveShoppingBaskets(dict_aankopen, threshold);
