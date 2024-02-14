namespace MCT.Excercise2;

public interface ITodoApplicationService
{
    Task<List<Artist>> GetArtists();
    Task<List<Concert>> GetConcerts();

    Task<ArtistConcert> GetConcertsForArtist(int id);
}

public class TodoApplicationService : ITodoApplicationService
{
    private IArtistRepository _artistRepository;
    private IConcertRepository _concertRepository;
    private IArtistConcertRepository _artistConcertRepository;


    public TodoApplicationService()
    {
        _artistRepository = new ArtistRepository();
        _concertRepository = new ConcertRepository();
        _artistConcertRepository = new ArtistConcertRepository();
    }

    public async Task<List<Artist>> GetArtists() => await _artistRepository.GetArtists();

    public async Task<List<Concert>> GetConcerts() => await _concertRepository.GetConcerts();

    public async Task<ArtistConcert> GetConcertsForArtist(int id) => await _artistConcertRepository.GetConcertsForArtist(id);
}