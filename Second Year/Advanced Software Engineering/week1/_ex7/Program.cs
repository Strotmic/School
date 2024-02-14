// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");


Dictionary<String, int> scores = new Dictionary<string, int> { { "Jan", 3 }, { "Paul", 2 }, { "Jef", 5 }, { "Bram", 0 }, { "Pieter", 4 }, { "Koen", 0 } };

static void DisplayGrades(Dictionary<String, int> x)
{
    foreach (var item in x)
    {
        switch (item.Value)
        {
            case 5:
                Console.WriteLine($"-{item.Key} => Ok");
                break;
            case 4 or 3:
                Console.WriteLine($"-{item.Key} => Average");
                break;
            case 2:
                Console.WriteLine($"-{item.Key} => Weak");
                break;
            default:
                Console.WriteLine($"-{item.Key} => Insufficient");
                break;
        }
    }
}


DisplayGrades(scores);