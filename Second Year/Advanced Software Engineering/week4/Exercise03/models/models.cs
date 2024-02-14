namespace E03.classes;

// - Design the following media types:
//     - ** Movie**: Should have properties like Title, Duration, Genre, and Director.
//     - **Series**: Should have properties like Title, NumberOfEpisodes, Genre, and Creator.
//     - **Podcast**: Should have properties like Title, NumberOfEpisodes, and Host.

// public interface IMedia
// {
//     public string Title { get; set; }


// }

public interface IMedia
{
    string Title { get; set; }
}

public class Movie : IMedia
{
    public string Title { get; set; }
    public int Duration { get; set; }
    public string Genre { get; set; }
    public string Director { get; set; }

    public override string ToString()
    {
        return $"Title: {Title}, Duration: {Duration}, Genre: {Genre}, Director: {Director}";
    }


}

public class Series : IMedia
{
    public string Title { get; set; }
    public int NumberOfEpisodes { get; set; }
    public string Genre { get; set; }
    public string Creator { get; set; }


    public override string ToString()
    {
        return $"Title: {Title}, NumberOfEpisodes: {NumberOfEpisodes}, Genre: {Genre}, Creator: {Creator}";
    }

}

public class Podcast : IMedia
{

    public string Title { get; set; }
    public int NumberOfEpisodes { get; set; }
    public string Host { get; set; }


    public override string ToString()
    {
        return $"Title: {Title}, NumberOfEpisodes: {NumberOfEpisodes}, Host: {Host}";
    }



}