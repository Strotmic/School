using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        // Create a random number generator
        Random random = new Random();

        // Create a first list with 10 random numbers
        List<double> list1 = new List<double>();
        for (int i = 0; i < 10; i++)
        {
            list1.Add(random.NextDouble());
        }

        // Print out the first list
        foreach (double item in list1)
        {
            Console.WriteLine(item);
        }

        Console.WriteLine("/////////////////////////////////////");

        // Create a second list with 10 random integers
        List<int> list2 = new List<int>();
        for (int i = 0; i < 10; i++)
        {
            list2.Add(random.Next());
        }

        // Print out the second list
        foreach (int item in list2)
        {
            Console.WriteLine(item);
        }

        Console.WriteLine("/////////////////////////////////////");

        // Merge the two lists using LINQ
        var mergedList = list1.Cast<object>().Concat(list2.Cast<object>());

        // Print out the merged list
        foreach (var item in mergedList)
        {
            Console.WriteLine(item);
        }
    }
}