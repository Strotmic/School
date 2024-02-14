using System.Collections.Generic;

namespace redo.w4.ex1;

public class SmartphoneRepository
{
    public Smartphone AddSmartphone(string line)
    {
        string[] values = line.Split(',');
        if (values.Length == 6)
        {
            int id = int.Parse(values[0]);
            string brand = values[1];
            string type = values[2];
            int releaseYear = int.Parse(values[3]);
            int startPrice = int.Parse(values[4]);
            string os = values[5];
            return new Smartphone(id, brand, type, releaseYear, startPrice, os);
        }


        return null;
    }

    public List<Smartphone> GetSmartphones()
    {
        List<Smartphone> smartphones = new List<Smartphone>();
        string[] lines = File.ReadAllLines("../Ex1/smartphones.csv");
        foreach (string line in lines.Skip(1))
        {
            var smartphone = AddSmartphone(line);
            if (smartphone != null)
            {
                smartphones.Add(smartphone);
            }
        }
        return smartphones;
    }

    public Smartphone GetSmartphoneById(int id)
    {
        List<Smartphone> smartphones = GetSmartphones();
        foreach (Smartphone smartphone in smartphones)
        {
            if (smartphone.Id == id)
            {
                return smartphone;
            }
        }
        return null;
    }

public void AddSmartphoneToCSV(Smartphone smartphone)
{
    using (StreamWriter writer = new StreamWriter("./smartphones.csv", true))
    {
        if (new FileInfo("./smartphones.csv").Length > 0)
        {
            // If the file is not empty, append a newline character to ensure the new data starts on a new line
            writer.Write(Environment.NewLine);
        }
        writer.WriteLine(smartphone.ToString());
    }
}
}