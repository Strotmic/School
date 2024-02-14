// See https://aka.ms/new-console-template for more information

using Howest.mct.classes;

Wine w1 = new Wine("Chateau Migraine", 2019, 5.99, 1.99, "France", Wine.WineType.RED);
Wine w2 = new Wine("Zhateau Migraine", 2019, 5.99, 1.99, "France", Wine.WineType.RED);
Wine w3 = new Wine("Chateau Migraine", 2019, 5.99, 1.99, "France", Wine.WineType.RED);

PostStamp p1 = new PostStamp("The Penny Black", 1840, 1000, "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Penny_Black.jpg/220px-Penny_Black.jpg");
PostStamp p2 = new PostStamp("Ahe Penny Black", 1840, 1000, "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Penny_Black.jpg/220px-Penny_Black.jpg");
PostStamp p3 = new PostStamp("The Penny Black", 1840, 1000, "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Penny_Black.jpg/220px-Penny_Black.jpg");

// Console.WriteLine(w1);
// Console.WriteLine(w2);
// Console.WriteLine(w3);

// Console.WriteLine(p1);
// Console.WriteLine(p2);
// Console.WriteLine(p3);

List<Collectible> collectibles = new List<Collectible>();

collectibles.Add(w1);
collectibles.Add(w2);
collectibles.Add(w3);
collectibles.Add(p1);
collectibles.Add(p2);
collectibles.Add(p3);

collectibles.Sort();

foreach (Collectible c in collectibles)
{
    Console.WriteLine(c);
}



Console.WriteLine("Hello, World!");
