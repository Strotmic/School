namespace MCT.Excercise2;

public class ArtistConcert
{
    public Artist Artist { get; set; }
    public List<Concert> Concerts { get; set; }


    public ArtistConcert(Artist artist, List<Concert> concerts)
    {
        Artist = artist;
        Concerts = concerts;
    }

    public override string ToString()
    {
        string concerts = "";

        foreach (var concert in Concerts)
        {
            concerts += concert.ToString() + "\n";
        }

        return $"Artist: {Artist.ToString()}, Concerts: {concerts}";
    }
}