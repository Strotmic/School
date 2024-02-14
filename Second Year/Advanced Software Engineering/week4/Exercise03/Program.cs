// See https://aka.ms/new-console-template for more information

using E03.mediafactory;
using E03.classes;
using E03.repo1;
using E03.Services;

E03.repo1.IMediaRepository repo = new E03.repo1.MediaRepository();
E03.Services.Service service = new E03.Services.Service(repo);

var var = MediaFactory.GetMedia(MediaFactory.MediaType.Movie) as Movie;

var var2 = MediaFactory.GetMedia(MediaFactory.MediaType.Series) as Series;

var var3 = MediaFactory.GetMedia(MediaFactory.MediaType.Podcast) as Podcast;

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

service.Add(var);
service.Add(var2);
service.Add(var3);

List<IMedia> media = service.GetAll();
foreach (var item in media)
{
    Console.WriteLine(item);
}

IMedia title = service.GetByTitle("The Matrix");
Console.WriteLine(title);