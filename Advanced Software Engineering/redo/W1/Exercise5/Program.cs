Dictionary<String, int> lokalen = new Dictionary<string, int> { { "KWE.P.0.002", 200 }, { "KWE.P.1.103", 20 }, { "KWE.A.1.103", 60 }, { "KWE.A.1.104", 30 }, { "KWE.A.1.302", 64 }, { "KWE.A.1.301", 64 } };

void CoronaProof(Dictionary<string, int> lokalen, int aantalStudenten)
{
    bool suitableClassroomFound = false;
    Console.WriteLine($"Suitable classrooms for a group of {aantalStudenten} students are:");
    foreach (KeyValuePair<string, int> lokaal in lokalen)
    {
        if (lokaal.Value >= aantalStudenten*2)
        {
            Console.WriteLine($"- [{lokaal.Key}, {lokaal.Value}]");
            suitableClassroomFound = true;
        }
    }
    if (!suitableClassroomFound)
    {
        Console.WriteLine("No suitable classrooms found for the given number of students.");
    }
}

Console.WriteLine("Hoeveel studenten zijn er?");
int aantalStudenten = int.Parse(Console.ReadLine());
CoronaProof(lokalen, aantalStudenten);