namespace MCT.Excercise2;

public interface IArtistConcertRepository
{
    Task<ArtistConcert> GetConcertsForArtist(int id);
}

public class ArtistConcertRepository : IArtistConcertRepository
{
    
        private HttpClient _httpClient;
    
        public ArtistConcertRepository()
        {
            _httpClient = new HttpClient();
        }
    
        public async Task<ArtistConcert> GetConcertsForArtist(int id)
        {
            var response = await _httpClient.GetAsync("https://week05-exercise02-api.redplant-ec9a54a1.northeurope.azurecontainerapps.io/artists");
            var content = await response.Content.ReadAsStringAsync();
            var artists = JsonConvert.DeserializeObject<List<Artist>>(content);
            Artist a = null;

            foreach (var artist in artists)
            {
                if (artist.Id == id)
                {
                    a = artist;
                }
            }
    
            response = await _httpClient.GetAsync("https://week05-exercise02-api.redplant-ec9a54a1.northeurope.azurecontainerapps.io/concerts");
            content = await response.Content.ReadAsStringAsync();
            var concerts = JsonConvert.DeserializeObject<List<Concert>>(content);
            List<Concert> c = new List<Concert>();

            foreach (var concert in concerts)
            {
                if (a.ConcertIds.Contains(concert.Id))
                {
                    c.Add(concert);
                }
            }
    
            return new ArtistConcert(a, c);
        }
}

