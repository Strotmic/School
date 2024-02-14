namespace MCT.Excercise2;

public class Artist
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Genre { get; set; }
    public string Country { get; set; }
    public List<int> ConcertIds { get; set; }

    public Artist(int id, string name, string genre, string country, List<int> concertIds)
    {
        Id = id;
        Name = name;
        Genre = genre;
        Country = country;
        ConcertIds = concertIds;
    }

    public string ToString()
    {
        return $"Id: {Id}, Name: {Name}, Genre: {Genre}, Country: {Country}, ConcertIds: {ConcertIds}";
    }
}