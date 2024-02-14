var repo = new Repository<Car>();

repo.Add(new Car { Id = 1, Make = "Ford", Model = "Focus" });
repo.Add(new Car { Id = 2, Make = "Honda", Model = "Civic" });
repo.Add(new Car { Id = 3, Make = "Toyota", Model = "Corolla" });

var car = repo.GetById(2);
Console.WriteLine($"Car with Id 2: {car.Make} {car.Model}");

var cars = repo.GetAll();
Console.WriteLine("All cars:");
foreach (var c in cars)
{
    Console.WriteLine($"{c.Make} {c.Model}");
}

var repoBeer = new Repository<Beer>();

repoBeer.Add(new Beer { Id = 1, Name = "Guinness", Style = "Stout" });
repoBeer.Add(new Beer { Id = 2, Name = "Budweiser", Style = "Lager" });
repoBeer.Add(new Beer { Id = 3, Name = "Coors", Style = "Lager" });

var beer = repoBeer.GetById(2);
Console.WriteLine($"Beer with Id 2: {beer.Name} {beer.Style}");

var beers = repoBeer.GetAll();
Console.WriteLine("All beers:");
foreach (var b in beers)
{
    Console.WriteLine($"{b.Name} {b.Style}");
}

var beerRepo = new BeerRepository();
beerRepo.Add(new Beer { Id = 1, Name = "Guinness", Style = "Stout" });
beerRepo.Add(new Beer { Id = 2, Name = "Budweiser", Style = "Lager" });
var allBeer = beerRepo.GetAll();

Console.WriteLine("All beers:");
foreach (var b in allBeer)
{
    Console.WriteLine($"{b.Name} {b.Style}");
}

var count = beerRepo.CountByStyle("Lager");
Console.WriteLine($"Number of lagers: {count}");
