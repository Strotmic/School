var todoService = new TodoApplicationService();

Console.WriteLine("1. Get all artists");
Console.WriteLine("2. Get all concerts");
Console.WriteLine("3. Get all concerts for an artist");

var input = Console.ReadLine();

switch (input)
{
    case "1":
        var artists = await todoService.GetArtists();
        foreach (var artist in artists)
        {
            Console.WriteLine(artist.ToString());
        }
        break;
    case "2":
        var concerts = await todoService.GetConcerts();
        foreach (var concert in concerts)
        {
            Console.WriteLine(concert.ToString());
        }
        break;
    case "3":
        Console.WriteLine("Enter artist id");
        var artistId = Console.ReadLine();
        var concertsforartist = await todoService.GetConcertsForArtist(1);
        Console.WriteLine(concertsforartist.ToString());
        break;
    default:
        Console.WriteLine("Invalid input");
        break;
}