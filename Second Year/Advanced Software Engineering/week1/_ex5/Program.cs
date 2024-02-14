// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

Dictionary<String, int> lokalen = new Dictionary<string, int> { { "KWE.P.0.002", 200 }, { "KWE.P.1.103", 20 }, { "KWE.A.1.103", 60 }, { "KWE.A.1.104", 30 }, { "KWE.A.1.302", 64 }, { "KWE.A.1.301", 64 } };

static void DetermineCoronaClassrooms(Dictionary<String, int> x, int y)
{
    Console.WriteLine($"De volgende klassen zijn geschikt voor {y} studenten");
    foreach (var item in x)
    {
        if (item.Value > y * 2)
        {
            Console.WriteLine($"[{item.Key}, {item.Value}]");
        }

    }

}


DetermineCoronaClassrooms(lokalen, 30);