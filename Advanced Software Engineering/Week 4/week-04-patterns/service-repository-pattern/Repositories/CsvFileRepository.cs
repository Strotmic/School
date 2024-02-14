namespace Demo.Repositories;

public class CsvFileRepository : IFileRepository
{
    private const string csvFile = "./data/actors.csv";

    public List<Actor> GetActors()
    {
        List<Actor> actors = new List<Actor>();
        string folder = AppDomain.CurrentDomain.BaseDirectory;
        using (var reader = new StreamReader(csvFile))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<Actor>();
            actors = records.ToList();
        }

        return actors;
    }

    public void AddActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        actor.Id = actors.Max(a => a.Id) + 1;
        actors.Add(actor);

        // write to file
        using (var writer = new StreamWriter(csvFile))
        using (var csv = new CsvWriter(writer, CultureInfo.InvariantCulture))
        {
            csv.WriteRecords(actors);
        }
    }

    public void DeleteActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        var actorToDelete = actors.FirstOrDefault(a => a.Name == actor.Name);
        actors.Remove(actorToDelete);

        // write to file
        using (var writer = new StreamWriter(csvFile))
        using (var csv = new CsvWriter(writer, CultureInfo.InvariantCulture))
        {
            csv.WriteRecords(actors);
        }

    }


    public void UpdateActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        var actorToUpdate = actors.FirstOrDefault(a => a.Id == actor.Id);
        actorToUpdate.Name = actor.Name;
        actorToUpdate.Age = actor.Age;
        actorToUpdate.Gender = actor.Gender;
        
        //write to file
        using (var writer = new StreamWriter(csvFile))
        using (var csv = new CsvWriter(writer, CultureInfo.InvariantCulture))
        {
            csv.WriteRecords(actors);
        }
    }
}
