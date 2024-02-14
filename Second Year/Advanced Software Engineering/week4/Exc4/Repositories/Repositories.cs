namespace Howest.mct.repositories;

using Howest.mct.classes;


public class CsvFileRepository
{

    public List<EducationalProduction> ReadEducational()
    {
        List<EducationalProduction> educationalProductions = new List<EducationalProduction>();

        string[] lines = File.ReadAllLines("./Data/educational.csv");

        foreach (string line in lines)
        {
            string[] data = line.Split(';');
            // Name;Date(s); Price;Description;TeachingMaterial
            EducationalProduction educationalProduction = new EducationalProduction(data[0], data[1], double.Parse(data[2]), data[3], data[4]);
            educationalProductions.Add(educationalProduction);
        }

        return educationalProductions;
    }

    public List<GuestPerformance> ReadGuest()
    {
        List<GuestPerformance> guestPerformances = new List<GuestPerformance>();

        string[] lines = File.ReadAllLines("./Data/guestperformance.csv");

        foreach (string line in lines)
        {
            string[] data = line.Split(';');
            // Name;Date(s); Price;Description;Association
            GuestPerformance guestPerformance = new GuestPerformance(data[0], data[1], double.Parse(data[2]), data[3], data[4]);
            guestPerformances.Add(guestPerformance);
        }

        return guestPerformances;
    }

    public List<TheatreProduction> ReadTheatre()
    {
        List<TheatreProduction> theatreProductions = new List<TheatreProduction>();

        string[] lines = File.ReadAllLines("./Data/theatre.csv");

        foreach (string line in lines)
        {
            string[] data = line.Split(';');
            // Name;Date(s); Price;Description;Director;Genre
            TheatreProduction theatreProduction = new TheatreProduction(data[0], data[1], double.Parse(data[2]), data[3], data[4], data[5]);
            theatreProductions.Add(theatreProduction);
        }

        return theatreProductions;
    }
}