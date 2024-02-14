// See https://aka.ms/new-console-template for more information
List<String> list_favorite_colors_children = new List<String>() { "green", "yellow", "pink", "blue", "red", "green", "pink", "yellow", "yellow", "black", "pink", "brown" };

static string FirstCharSubstring(string input)
{
    if (string.IsNullOrEmpty(input))
    {
        return string.Empty;
    }
    return $"{input[0].ToString().ToUpper()}{input.Substring(1)}";
}

static void Test(List<string> x)
{
    Dictionary<String, int> MyDictionary = new Dictionary<string, int> { };
    foreach (var item in x)
    {
        if (MyDictionary.ContainsKey(item))
        {
            MyDictionary.TryGetValue(item, out var currentCount);
            MyDictionary[item] = currentCount + 1;
        }
        else
        {
            MyDictionary.Add(item, 1);
        }

    }

    foreach (var item in MyDictionary)
    {
        string kleur = FirstCharSubstring(item.Key);
        if (kleur == "Pink")
        {
            kleur = "Magenta";
        }
        if (Enum.TryParse(kleur, out ConsoleColor foreground))
        {
            Console.ForegroundColor = foreground;
        }
        Console.WriteLine($"The color {item.Key} appears {item.Value} times");

    }
    // Console.WriteLine(MyDictionary);
};

Test(list_favorite_colors_children);

