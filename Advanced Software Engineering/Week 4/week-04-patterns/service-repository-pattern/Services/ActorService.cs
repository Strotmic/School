
namespace Demo.Services;

public interface IActorService
{
    List<Actor> GetActors();
    void AddActor(Actor actor);
    void DeleteActor(Actor actor);
    void UpdateActor(Actor actor);
}


public class ActorService : IActorService
{
    private readonly IFileRepository _actorRepository;

    public ActorService(IFileRepository actorRepository)
    {
        _actorRepository = actorRepository;
    }

    public List<Actor> GetActors()
    {
        return _actorRepository.GetActors();
    }

    public void AddActor(Actor actor)
    {
        _actorRepository.AddActor(actor);
    }

    public void DeleteActor(Actor actor)
    {
        _actorRepository.DeleteActor(actor);
    }

    public void UpdateActor(Actor actor)
    {
        _actorRepository.UpdateActor(actor);
    }
}