// See https://aka.ms/new-console-template for more information

    public class Song
    {
        public string Title;
        public int Duration;

        public Song(string _title, int _duration)
        {
            Title = _title;
            Duration = _duration;
        }
    }

    public class Album
    {
        public string Name;
        public string Artist;
        public string Genre;
        public string Year;
        public List<Song>
            Songs;
        public Album(string _name, string _artist, string _genre, string _year, List<Song> _songs)
        {
            Name = _name;
            Artist = _artist;
            Genre = _genre;
            Year = _year;
            Songs = _songs;
        }

    }

    public class Player
    {
        public void PlaySong(Song _song)
        {
            Console.WriteLine($"Playing song: {_song.Title}");
        }


        public static void Main()
        {
        Song een = new Song("song 1", 200);
        Song twee = new Song("song 2", 200);
        Song drie = new Song("song 3", 200);

        List<Song> albumpje = new List<Song>();
        albumpje.Add(een);
        albumpje.Add(twee);
        albumpje.Add(drie);

        Player player = new Player();
        Album test_album = new Album("Album", "Tim", "test_genre", "2003", albumpje);

        foreach (var item in test_album.Songs)
        {
            player.PlaySong(item);
        }

    }
}







