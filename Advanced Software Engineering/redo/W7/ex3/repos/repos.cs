namespace redo.w7.ex3.repos;

public class TravelRepository
{
    private readonly TravelDbContext _context;

    public TravelRepository(TravelDbContext context)
    {
        _context = context;
    }

    public List<Traveler> GetAllTravelersWithPassportNumber()
    {
        return _context.Travelers.Include(t => t.Passport).ToList();
    }

    public List<Destination> GetAllDestinations()
    {
        return _context.Destinations.ToList();
    }

    public List<Guide> GetAllGuidesAndTours()
    {
        return _context.Guides.Include(g => g.Tours).ToList();
    }

    public Traveler AddTraveler(Traveler traveler)
    {
        _context.Travelers.Add(traveler);
        _context.SaveChanges();
        return traveler;
    }

    public Destination AddDestination(Destination destination)
    {
        _context.Destinations.Add(destination);
        _context.SaveChanges();
        return destination;
    }

    public void AddTravelerToDestination(int travelerId, int destinationId)
    {
        var traveler = _context.Travelers
            .Include(t => t.Destinations)
            .SingleOrDefault(t => t.Id == travelerId);
        var destination = _context.Destinations.Find(destinationId);

        if (traveler == null)
        {
            throw new Exception($"No traveler found with ID {travelerId}");
        }

        if (destination == null)
        {
            throw new Exception($"No destination found with ID {destinationId}");
        }

        traveler.Destinations.Add(destination);
        _context.SaveChanges();
    }

    public List<Destination> GetDestinationsForTraveler(int travelerId)
    {
        return _context.Travelers
            .Where(t => t.Id == travelerId)
            .SelectMany(t => t.Destinations)
            .ToList();
    }

    public Guide AddGuide(Guide guide)
    {
        _context.Guides.Add(guide);
        _context.SaveChanges();
        return guide;
    }
}