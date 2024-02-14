namespace MCT.w2.ex3;

public class Program
{
    public static void Main()
    {
        // Create songs
        Song song1 = new Song { Title = "Song 1", Duration = 180 };
        Song song2 = new Song { Title = "Song 2", Duration = 240 };
        Song song3 = new Song { Title = "Song 3", Duration = 300 };

        // Create album
        Album album = new Album
        {
            Name = "Album 1",
            Artist = "Artist 1",
            Genre = "Genre 1",
            Year = 2021,
            Songs = new List<Song> { song1, song2, song3 }
        };

        // Create player
        Player player = new Player();

        // Play songs
        foreach (Song song in album.Songs)
        {
            player.PlaySong(song);
        }
    }
}