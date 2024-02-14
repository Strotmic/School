namespace Howest.mct.repositories;

using Howest.mct.classes;

public class SmartphoneRepository
{

    public static List<Smartphone> ReadSmartphones()
    {
        List<Smartphone> smartphones = new List<Smartphone>();

        string[] lines = File.ReadAllLines("./Data/smartphones.csv");
        foreach (string line in lines)
        {
            string[] data = line.Split(',');
            Smartphone smartphone = new Smartphone(int.Parse(data[0]), data[1], data[2], double.Parse(data[3]), int.Parse(data[4]), data[5]);
            smartphones.Add(smartphone);
        }

        return smartphones;
    }

    public static void WriteSmartphones(List<Smartphone> smartphones)
    {
        List<string> lines = new List<string>();
        foreach (Smartphone smartphone in smartphones)
        {
            lines.Add(smartphone.ToCsv());
        }
        File.WriteAllLines("./Data/smartphones.csv", lines);
    }

    public static void AddSmartphone(Smartphone smartphone)
    {
        List<Smartphone> smartphones = ReadSmartphones();
        smartphones.Add(smartphone);
        WriteSmartphones(smartphones);
    }

    public static void DeleteSmartphone(int id)
    {
        List<Smartphone> smartphones = ReadSmartphones();
        smartphones.RemoveAll(s => s.Id == id);
        WriteSmartphones(smartphones);
    }
    public static void UpdateSmartphone(Smartphone smartphone)
    {
        List<Smartphone> smartphones = ReadSmartphones();
        smartphones.RemoveAll(s => s.Id == smartphone.Id);
        smartphones.Add(smartphone);
        WriteSmartphones(smartphones);
    }
}