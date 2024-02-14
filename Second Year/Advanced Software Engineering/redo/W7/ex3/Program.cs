
public class Program
{
    private static TravelService _service;

    public static void Main(string[] args)
    {
        using (var context = new TravelDbContext())
        {
            context.Database.EnsureCreated();
        }
        var repository = new TravelRepository(new TravelDbContext());
        var service = new TravelService(repository);

        while (true)
        {
            Console.WriteLine("1. Show all travelers with passport number");
            Console.WriteLine("2. Show all destinations");
            Console.WriteLine("3. Show all guides and tours");
            Console.WriteLine("4. Add new traveler");
            Console.WriteLine("5. Add new destination");
            Console.WriteLine("6. Add traveler to destination");
            Console.WriteLine("7. Show destinations for a traveler");
            Console.WriteLine("8. Add new guide");
            Console.WriteLine("99. Exit");

            var choice = Console.ReadLine();

            switch (choice)
            {
                case "1":
                    var travelers = service.GetAllTravelersWithPassportNumber();
                    foreach (var traveler in travelers)
                    {
                        try
                        {

                            Console.WriteLine($"ID: {traveler.Id}, Name: {traveler.FullName}, Passport Number: {traveler.Passport.PassportNumber}");
                        }
                        catch (NullReferenceException)
                        {
                            Console.WriteLine($"ID: {traveler.Id}, Name: {traveler.FullName}, Passport Number: null");
                        }
                    }
                    break;
                case "2":
                    var destinations = service.GetAllDestinations();
                    foreach (var destination in destinations)
                    {
                        Console.WriteLine($"ID: {destination.Id}, Name: {destination.Name}");
                    }
                    break;
                case "3":
                    var guides = service.GetAllGuidesAndTours();
                    foreach (var guide in guides)
                    {
                        Console.WriteLine($"ID: {guide.Id}, Name: {guide.Name}");
                        foreach (var tour in guide.Tours)
                        {
                            Console.WriteLine($"Tour ID: {tour.Id}, Title: {tour.Title}");
                        }
                    }
                    break;
                case "4":
                    Console.WriteLine("Enter traveler full name:");
                    var fullName = Console.ReadLine();
                    Console.WriteLine("Enter passport number:");
                    var passportNumber = Console.ReadLine();
                    var newTraveler = service.AddTraveler(new Traveler { FullName = fullName, Passport = new Passport { PassportNumber = passportNumber } });
                    Console.WriteLine($"Added traveler with ID: {newTraveler.Id}");
                    break;
                case "5":
                    Console.WriteLine("Enter destination name:");
                    var destinationName = Console.ReadLine();
                    var newDestination = service.AddDestination(new Destination { Name = destinationName });
                    Console.WriteLine($"Added destination with ID: {newDestination.Id}");
                    break;
                case "6":
                    Console.WriteLine("Enter traveler ID:");
                    var travelerId = int.Parse(Console.ReadLine());
                    Console.WriteLine("Enter destination ID:");
                    var destinationId = int.Parse(Console.ReadLine());
                    service.AddTravelerToDestination(travelerId, destinationId);
                    Console.WriteLine($"Added traveler with ID: {travelerId} to destination with ID: {destinationId}");
                    break;
                case "7":
                    Console.WriteLine("Enter traveler ID:");
                    var id = int.Parse(Console.ReadLine());
                    var travelerDestinations = service.GetDestinationsForTraveler(id);
                    foreach (var dest in travelerDestinations)
                    {
                        Console.WriteLine($"Destination ID: {dest.Id}, Name: {dest.Name}");
                    }
                    break;
                case "8":
                    Console.WriteLine("Enter guide name:");
                    var guideName = Console.ReadLine();
                    var newGuide = service.AddGuide(new Guide { Name = guideName });
                    Console.WriteLine($"Added guide with ID: {newGuide.Id}");
                    break;
                case "99":
                    return;
            }
        }
    }
}
