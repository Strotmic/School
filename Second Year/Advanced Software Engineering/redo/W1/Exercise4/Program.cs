List<String> list_favorite_colors_children = new List<String>() { "green", "yellow", "pink", "blue", "red", "green", "pink", "yellow", "yellow", "black", "pink", "brown" };

void CountColors(List<String> list_favorite_colors_children)
{
    Dictionary<String, int> dict_colors = new Dictionary<String, int>();
    foreach (string color in list_favorite_colors_children)
    {
        if (dict_colors.ContainsKey(color))
        {
            dict_colors[color] += 1;
        }
        else
        {
            dict_colors.Add(color, 1);
        }
    }
    foreach (KeyValuePair<String, int> color in dict_colors)
    {
        string consoleColorName = color.Key;
        if (consoleColorName.ToLower() == "pink")
        {
            consoleColorName = "Magenta";
        } else if (consoleColorName.ToLower() == "brown")
        {
            consoleColorName = "DarkYellow";
        }
        Console.ForegroundColor = (ConsoleColor)Enum.Parse(typeof(ConsoleColor), consoleColorName, true);
        Console.WriteLine($"* The color {color.Key} appears {color.Value} times");
    }
    Console.ResetColor(); // Reset to the default color
}

CountColors(list_favorite_colors_children);