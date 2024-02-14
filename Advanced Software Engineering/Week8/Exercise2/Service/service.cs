using System.Collections.Generic;
using ex2.Models;
using ex2.Repositories;

namespace ex2.Services
{

    public static class LoggingService
    {
        public delegate string LoggingDelegate(string message);

        public static string SuccessLogDel(string message, LoggingDelegate logger)
        {
            string result = logger(message);
            return result;
        }

        public static string ErrorLogDel(string message, LoggingDelegate logger)
        {
            string result = logger(message);
            return result;
        }

        public static string logger(string message)
        {
            string filePath = "log.txt";
            File.AppendAllText(filePath, message + Environment.NewLine);
            return message;
        }
    }

    public class destinationService
    {
        private DestinationRepository repository = new DestinationRepository();

        public Destination AddDestination(Destination destination)
        {
            try
            {
                string result = LoggingService.SuccessLogDel("Destination added successfully", LoggingService.logger);
                // Console.WriteLine(result);

                return repository.AddDestination(destination);
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                // Console.WriteLine(result);                
                return null;
            }
        }

        public List<Destination> GetAllDestinations()
        {
            try {
                string result = LoggingService.SuccessLogDel("Destination retrieved successfully", LoggingService.logger);
                return repository.GetAllDestinations();
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            }
        }
    }

    public class travelerService
    {
        private TravelerRepository repository = new TravelerRepository();

        public Traveler AddTraveler(Traveler traveler)
        {
            try {
                string result = LoggingService.SuccessLogDel("Traveler added successfully", LoggingService.logger);
                return repository.AddTraveler(traveler);
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            }
        }

        public List<Traveler> GetAllTravelers()
        {
            try {
                string result = LoggingService.SuccessLogDel("Traveler retrieved successfully", LoggingService.logger);
                return repository.GetAllTravelers();
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            }
        }

        public void AddTravelerToDestination(int travelerId, int destinationId)
        {
            try {
                string result = LoggingService.SuccessLogDel("Traveler added to destination successfully", LoggingService.logger);
                repository.AddTravelerToDestination(travelerId, destinationId);
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
            }
        }

        public List<Destination> GetDestinationsForTraveler(int travelerId)
        {
            try {
                string result = LoggingService.SuccessLogDel("Destination retrieved successfully", LoggingService.logger);
                return repository.GetDestinationsForTraveler(travelerId);
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            }
        }
    }

    public class guideService
    {
        private GuideRepository repository = new GuideRepository();

        public Guide AddGuide(Guide guide)
        {
            try {
                string result = LoggingService.SuccessLogDel("Guide added successfully", LoggingService.logger);
                return repository.AddGuide(guide);
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            
            }
        }

        public List<Guide> GetAllGuides()
        {
            try {
                string result = LoggingService.SuccessLogDel("Guide retrieved successfully", LoggingService.logger);
                return repository.GetAllGuides();
            }
            catch (System.Exception e)
            {
                string result = LoggingService.ErrorLogDel(e.Message, LoggingService.logger);
                return null;
            }
        }
    }
}