namespace Howest.mct.mediafactory;

using Howest.mct.classes;


public class MediaFactory
{

    public enum MediaType
    {
        Movie = 1,
        Series = 2,
        Podcast = 3
    }

    public static IMedia GetMedia(MediaType type)
    {
        switch (type)
        {
            case MediaType.Movie:
                return new Movie();
            case MediaType.Series:
                return new Series();
            case MediaType.Podcast:
                return new Podcast();
            default:
                throw new ArgumentException("Invalid type", nameof(type));
        }
    }



    // public static IVehicle GetVehicle(VehicleType type)
    // {
    //     switch (type)
    //     {
    //         case VehicleType.Bike:
    //             return new Bike();
    //         case VehicleType.Car:
    //             return new Car();
    //         default:
    //             throw new ArgumentException("Invalid type", nameof(type));
    //     }
    // }
}