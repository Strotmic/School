namespace test {

    public class Song {
        public string Title;
        public string Duration;

        public Song(string _title, string _duration) {
            Title = _title;
            Duration = _duration;
        } 
    }

    public class Album {
        public string Name;
        public string Artist;
        public string Genre;
        public string Year;
        public List<string>
            Songs;
        public Album(string _name, string _artist, string _genre, string _year, List<string> _songs)
        {
            Name = _name;
            Artist = _artist;
            Genre = _genre;
            Year = _year;
            Songs = _songs;
        }

    }

    public class Player {
        public void PlaySong(Song _song)
        {
            Console.WriteLine($"Playing song: {_song.Title}");
        }
    }


}