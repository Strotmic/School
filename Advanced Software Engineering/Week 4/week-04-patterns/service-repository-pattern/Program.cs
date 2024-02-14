var csvRepo = new CsvFileRepository();
var jsonRepo = new JsonFileRepository();


//var actors = csvRepo.GetActors();
//var actor = actors.FirstOrDefault(a => a.Name == "Jane Doe");
//actor.Name = "Dieter Doe";
//csvRepo.UpdateActor(actor);



var actorService = new ActorService(csvRepo);
var actorsFromService = actorService.GetActors();
foreach (var a in actorsFromService)
{
    Console.WriteLine(a);
}

ApplicationFacade facade = new ApplicationFacade(actorService, new CalculatorService());
var actorsFromFacade = facade.GetActors();
foreach (var a in actorsFromFacade)
{
    Console.WriteLine(a);
}