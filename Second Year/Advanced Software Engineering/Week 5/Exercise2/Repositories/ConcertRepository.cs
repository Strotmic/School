namespace MCT.Excercise2;

public interface IConcertRepository
{
    Task<List<Concert>> GetConcerts();
}

public class ConcertRepository : IConcertRepository
{
    
        private HttpClient _httpClient;
    
        public ConcertRepository()
        {
            _httpClient = new HttpClient();
        }
    
        public async Task<List<Concert>> GetConcerts()
        {    
            var response = await _httpClient.GetAsync("https://week05-exercise02-api.redplant-ec9a54a1.northeurope.azurecontainerapps.io/concerts");
            var content = await response.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<List<Concert>>(content);
        }
}