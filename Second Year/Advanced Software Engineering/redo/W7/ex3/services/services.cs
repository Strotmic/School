namespace redo.w7.ex3.services;

public class TravelService
{
    private readonly TravelRepository _repository;

    public TravelService(TravelRepository repository)
    {
        _repository = repository;
    }

    public List<Traveler> GetAllTravelersWithPassportNumber()
    {
        return _repository.GetAllTravelersWithPassportNumber();
    }

    public List<Destination> GetAllDestinations()
    {
        return _repository.GetAllDestinations();
    }

    public List<Guide> GetAllGuidesAndTours()
    {
        return _repository.GetAllGuidesAndTours();
    }

    public Traveler AddTraveler(Traveler traveler)
    {
        _repository.AddTraveler(traveler);
        return traveler;
    }

    public Destination AddDestination(Destination destination)
    {
        _repository.AddDestination(destination);
        return destination;
    }

    public string AddTravelerToDestination(int travelerId, int destinationId)
    {
        _repository.AddTravelerToDestination(travelerId, destinationId);
        return ("Added traveler with ID: " + travelerId + " to destination with ID: " + destinationId);
    }

    public List<Destination> GetDestinationsForTraveler(int travelerId)
    {
        return _repository.GetDestinationsForTraveler(travelerId);
    }

    public Guide AddGuide(Guide guide)
    {
        _repository.AddGuide(guide);
        return guide;
    }
}