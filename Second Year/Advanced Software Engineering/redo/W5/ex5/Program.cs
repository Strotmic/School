using redo.w5.ex5;
using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        // Create a random number generator
        Random random = new Random();

        // Create a list of IVehicle
        List<IVechicle> vehicles = new List<IVechicle>();

        // Populate the list with random vehicles
        for (int i = 0; i < 10; i++)
        {
            int vehicleType = random.Next(3);
            switch (vehicleType)
            {
                case 0:
                    vehicles.Add(new Car());
                    break;
                case 1:
                    vehicles.Add(new Truck());
                    break;
                case 2:
                    vehicles.Add(new Motorcycle());
                    break;
            }
        }

        foreach (IVechicle vehicle in vehicles)
        {
            vehicle.Drive();
        }

        Console.WriteLine("/////////////////////////////////////");
        // Use LINQ to get all the cars from the list
        List<Car> cars = vehicles.OfType<Car>().ToList();

        // Print out the number of cars
        foreach (Car car in cars)
        {
            car.Drive();
        }
    }
}