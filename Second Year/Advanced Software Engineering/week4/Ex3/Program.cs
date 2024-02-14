// See https://aka.ms/new-console-template for more information

using Howest.mct.mediafactory;
using Howest.mct.classes;



var var = MediaFactory.GetMedia(MediaFactory.MediaType.Movie) as Movie;

var var2 = MediaFactory.GetMedia(MediaFactory.MediaType.Series) as Series;

var var3 = MediaFactory.GetMedia(MediaFactory.MediaType.Podcast) as Podcast;


Console.WriteLine(var.GetType());
Console.WriteLine(var2.GetType());
Console.WriteLine(var3.GetType());
// Console.WriteLine(movie.GetType());

var.Title = "The Matrix";
// movie.Duration = 120;
var.Duration = 120;
var.Genre = "Sci-Fi";
var.Director = "The Wachowskis";

var2.Title = "The Simpsons";
var2.NumberOfEpisodes = 700;
var2.Genre = "Comedy";
var2.Creator = "Matt Groening";

var3.Title = "The Joe Rogan Experience";
var3.NumberOfEpisodes = 1500;
var3.Host = "Joe Rogan";



// Console.WriteLine(var);

// Console.WriteLine(var2);

// Console.WriteLine(var3);

List<IMedia> media = new List<IMedia>();

media.Add(var);
media.Add(var2);
media.Add(var3);


foreach (var item in media)
{
    Console.WriteLine(item);
}

// Console.WriteLine(movie);

Console.WriteLine("Hello, World!");
