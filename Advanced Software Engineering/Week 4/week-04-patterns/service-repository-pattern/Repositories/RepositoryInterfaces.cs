namespace Demo.Repositories;

public interface IFileRepository
{
    List<Actor> GetActors();
    void AddActor(Actor actor);
    void UpdateActor(Actor actor);
    void DeleteActor(Actor actor);

}
