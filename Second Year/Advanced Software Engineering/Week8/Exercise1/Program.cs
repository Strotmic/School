using System;
using System.IO;
using System.Linq;


class Program
{
    static void Main()
    {
        // Read file and process data
        string[] lines = File.ReadAllLines("data.csv");

        bool skipHeader = true;
        foreach (var line in lines)
        {
            if (skipHeader)
            {
                skipHeader = false;
                continue;
            }
        var result = AverageDel(line, CalculateAverage);
        Console.WriteLine("Sum: " + string.Join(", ", result));

        result = SumDel(line, CalculateSum);
        Console.WriteLine("Average: " + string.Join(", ", result));
        }
    }

    static string AverageDel(string line, CsvProcessor processor)
    {
        string result = processor(line);
        return result;
    }

    static string SumDel(string line, CsvProcessor processor)
    {
        string result = processor(line);
        return result;
    }

    static string CalculateSum(string line)
    {
        var numbers = line.Split(',').Select(double.Parse);
        var sum = numbers.Sum();
        return sum.ToString();
    }

    static string CalculateAverage(string line)
    {
        var numbers = line.Split(',').Select(double.Parse);
        var average = numbers.Average();
        return average.ToString();
    }
}

public delegate string CsvProcessor(string line);