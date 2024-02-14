using System.Collections.Generic;
using ex2.Models;
using ex2.Repositories;

namespace ex2.Services
{
    public class destinationService
    {
        private DestinationRepository repository = new DestinationRepository();

        public Destination AddDestination(Destination destination)
        {
            return repository.AddDestination(destination);
        }

        public List<Destination> GetAllDestinations()
        {
            return repository.GetAllDestinations();
        }
    }

    public class travelerService
    {
        private TravelerRepository repository = new TravelerRepository();

        public Traveler AddTraveler(Traveler traveler)
        {
            return repository.AddTraveler(traveler);
        }

        public List<Traveler> GetAllTravelers()
        {
            return repository.GetAllTravelers();
        }

        public void AddTravelerToDestination(int travelerId, int destinationId)
        {
            repository.AddTravelerToDestination(travelerId, destinationId);
        }

        public List<Destination> GetDestinationsForTraveler(int travelerId)
        {
            return repository.GetDestinationsForTraveler(travelerId);
        }
    }

    public class guideService
    {
        private GuideRepository repository = new GuideRepository();

        public Guide AddGuide(Guide guide)
        {
            return repository.AddGuide(guide);
        }

        public List<Guide> GetAllGuides()
        {
            return repository.GetAllGuides();
        }
    }
}