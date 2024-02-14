using System.Collections.Generic;
using System.Linq;
using ex3.Data;
using ex3.Models;

namespace ex3.Repositories
{

    // Generic Repository
    public class GenericRepo<T> where T : class
    {
        private TravelDbContext context = new TravelDbContext();

        public T Add(T entity)
        {
            context.Set<T>().Add(entity);
            context.SaveChanges();
            return entity;
        }

        public List<T> GetAll()
        {
            return context.Set<T>().ToList();
        }
    }

    public class DestinationRepository
    {
        private TravelDbContext context = new TravelDbContext();

        public Destination AddDestination(Destination destination)
        {
            context.Destinations.Add(destination);
            context.SaveChanges();
            return destination;
        }

        public List<Destination> GetAllDestinations()
        {
            return context.Destinations.ToList();
        }
    }

    public class TravelerRepository
    {
        private TravelDbContext context = new TravelDbContext();

        public Traveler AddTraveler(Traveler traveler)
        {
            context.Travelers.Add(traveler);
            context.SaveChanges();
            return traveler;
        }

        public List<Traveler> GetAllTravelers()
        {
            return context.Travelers.ToList();
        }

        public void AddTravelerToDestination(int travelerId, int destinationId)
        {
            var traveler = context.Travelers.Find(travelerId);
            var destination = context.Destinations.Find(destinationId);
            traveler.Destinations.Add(destination);
            context.SaveChanges();
        }

        public List<Destination> GetDestinationsForTraveler(int travelerId)
        {
            return context.Travelers.Find(travelerId).Destinations.ToList();
        }
    }

    public class GuideRepository
    {
        private TravelDbContext context = new TravelDbContext();

        public Guide AddGuide(Guide guide)
        {
            context.Guides.Add(guide);
            context.SaveChanges();
            return guide;
        }

        public List<Guide> GetAllGuides()
        {
            return context.Guides.ToList();
        }
    }
}