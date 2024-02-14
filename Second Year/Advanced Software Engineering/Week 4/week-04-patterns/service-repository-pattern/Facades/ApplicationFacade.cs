namespace Demo.Facades;

public interface IApplicationFacade
{
    int Add(int a, int b);
    List<Actor> GetActors();
}

public class ApplicationFacade : IApplicationFacade
{

    private readonly IActorService _actorService;
    private readonly ICalculatorService _calculatorService;

    public ApplicationFacade(IActorService actorService, ICalculatorService calculatorService)
    {
        _actorService = actorService;
        _calculatorService = calculatorService;
    }

    public int Add(int a, int b) =>   _calculatorService.Add(a, b);


    public List<Actor> GetActors() =>   _actorService.GetActors();
}