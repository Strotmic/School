namespace MCT.w2.ex3;

public class Song
{
    public string Title { get; set; }
    public int Duration { get; set; }
}

public class Album
{
    public string Name { get; set; }
    public string Artist { get; set; }
    public string Genre { get; set; }
    public int Year { get; set; }
    public List<Song> Songs { get; set; }
}

public class Player
{
    public void PlaySong(Song song)
    {
        Console.WriteLine($"Playing {song.Title} ({song.Duration} seconds)");
    }
}