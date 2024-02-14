using Demo.Models;

namespace Demo.Factory;

public class VehicleFactory  
{
    public enum VehicleType
    {
        Bike = 1,
        Car = 2
    }

    public static IVehicle GetVehicle(VehicleType type)
    {
        switch (type)
        {
            case VehicleType.Bike:
                return new Bike();
            case VehicleType.Car:
                return new Car();
            default:
                throw new ArgumentException("Invalid type", nameof(type));
        }
    }
}

