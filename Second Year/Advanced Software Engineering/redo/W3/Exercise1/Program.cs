using System;
using System.Collections.Generic;
namespace MCT.w3.ex1;

public class Program
{
    public static void Main()
    {
        Wine wine1 = new Wine("Merlot", 2015, 25.99, 5.5, "France", WineType.RED);
        Wine wine2 = new Wine("Chardonnay", 2018, 19.75, 4.25, "Italy", WineType.WHITE);
        Wine wine3 = new Wine("Rosé", 2020, 14.99, 3.75, "Spain", WineType.ROSE);


        List<Wine> wines = new List<Wine> { wine1, wine2, wine3 };

        PostStamp stamp1 = new PostStamp("Vintage Cars", 1970, 3.25, "vintage_cars_image.jpg");
        PostStamp stamp2 = new PostStamp("Endangered Species", 2005, 1.99, "endangered_species_image.jpg");
        PostStamp stamp3 = new PostStamp("Historical Monuments", 1995, 2.75, "historical_monuments_image.jpg");


        List<PostStamp> postStamps = new List<PostStamp> { stamp1, stamp2, stamp3 };

        ComicBook comic1 = new ComicBook("Spider-Man", 1985, 12.99, "Marvel Comics", "Stan Lee");
        ComicBook comic2 = new ComicBook("Batman", 1990, 9.75, "DC Comics", "Bob Kane");
        ComicBook comic3 = new ComicBook("Superman", 1978, 15.25, "DC Comics", "Jerry Siegel");


        List<ComicBook> comicBooks = new List<ComicBook> { comic1, comic2, comic3 };

        Console.WriteLine("Show wines");
        foreach (Wine wine in wines)
        {
            Console.WriteLine(wine.ToString());
        }
        Console.WriteLine("====================================");

        Console.WriteLine("Show post stamps");
        foreach (PostStamp postStamp in postStamps)
        {
            Console.WriteLine(postStamp.ToString());
        }

        Console.WriteLine("====================================");

        Console.WriteLine("Show comic books");
        foreach (ComicBook comicBook in comicBooks)
        {
            Console.WriteLine(comicBook.ToString());
        }
        Console.WriteLine("====================================");

        // Test Comparable
        List<Collectible> collectibles = new List<Collectible> { wine1, wine2, wine3, stamp1, stamp2, stamp3, comic1, comic2, comic3 };
        Console.WriteLine("Test Comparable");
        collectibles.Sort();
        foreach (Collectible collectible in collectibles)
        {
            Console.WriteLine(collectible.ToString());
        }
        Console.WriteLine("====================================");
    }
}