namespace MCT.Excercise2;

public interface IArtistRepository
{
    Task<List<Artist>> GetArtists();
    Task<Artist> GetArtist(int id);
}

public class ArtistRepository : IArtistRepository
{

    private HttpClient _httpClient;

    public ArtistRepository()
    {
        _httpClient = new HttpClient();
    }

    public async Task<List<Artist>> GetArtists()
    {
        //have alook in the slides or documentation about HttpClient

        var response = await _httpClient.GetAsync("https://week05-exercise02-api.redplant-ec9a54a1.northeurope.azurecontainerapps.io/artists");
        var content = await response.Content.ReadAsStringAsync();
        return JsonConvert.DeserializeObject<List<Artist>>(content);
    }

    public async Task<Artist> GetArtist(int id)
    {
        var response = await _httpClient.GetAsync(Global.BASE_URL + "artists/" + id);
        var content = await response.Content.ReadAsStringAsync();
        return JsonConvert.DeserializeObject<Artist>(content);
    }
}