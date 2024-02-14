using System.Runtime.Serialization.Formatters.Binary;

string fileContent = System.IO.File.ReadAllText("techno.txt");
Console.WriteLine(fileContent);


string technoQueen = File.ReadAllText("./Files/technoqueen.txt");
Console.WriteLine(technoQueen);

string[] lines = File.ReadAllLines("./Files/technoqueen.txt");
foreach (string line in lines)
{
    Console.WriteLine($"The line is {line}");
}

//Read csv file into list of Artist objects
List<Artist> artists = new List<Artist>();
lines = File.ReadAllLines("./csv/artist.csv");

foreach (string line in lines)
{
    string[] entries = line.Split(',');
    Artist newArtist = new Artist();
    newArtist.Name = entries[0];
    newArtist.Surname = entries[1];
    newArtist.CountryOfOrigin = entries[2];
    newArtist.MostFamousSongs = entries[3];
    artists.Add(newArtist);
}

//iterate over all artists and print them
foreach (Artist artist in artists)
{
    Console.WriteLine($"{artist.Name} {artist.Surname} {artist.CountryOfOrigin} {artist.MostFamousSongs}");
}

byte[] logo = File.ReadAllBytes("./images/logo.jpg");
File.WriteAllBytes("./images/newlogo.jpg", logo);

