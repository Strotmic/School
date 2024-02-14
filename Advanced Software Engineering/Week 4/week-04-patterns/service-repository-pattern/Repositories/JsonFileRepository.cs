using System.Text.Json;

namespace Demo.Repositories;

public class JsonFileRepository : IFileRepository
{
    string file = "/Users/dieterdepreester/Documents/source/demos-asi/week-05-patterns/repository-pattern/data/actors.json";

    public List<Actor> GetActors()
    {
        List<Actor> actors = new List<Actor>();


        using (StreamReader r = new StreamReader(file))
        {
            string json = r.ReadToEnd();
            actors = JsonSerializer.Deserialize<List<Actor>>(json);
        }

        return actors;
    }

    public void AddActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        actor.Id = actors.Max(a => a.Id) + 1;
        actors.Add(actor);

        string json = JsonSerializer.Serialize(actors);
        File.WriteAllText(file, json);
    }

    public void DeleteActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        var actorToDelete = actors.FirstOrDefault(a => a.Id == actor.Id);
        actors.Remove(actorToDelete);

        string json = JsonSerializer.Serialize(actors);
        File.WriteAllText(file, json);  
    }


    public void UpdateActor(Actor actor)
    {
        ArgumentNullException.ThrowIfNull(actor);
        var actors = GetActors();
        var actorToUpdate = actors.FirstOrDefault(a => a.Id == actor.Id);
        actorToUpdate.Name = actor.Name;
        actorToUpdate.Age = actor.Age;

        string json = JsonSerializer.Serialize(actors);
        File.WriteAllText(file, json);
    }
}
