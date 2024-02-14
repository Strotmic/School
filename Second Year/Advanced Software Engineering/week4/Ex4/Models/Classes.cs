namespace Howest.mct.classes;


public abstract class Production
{

    public string Name { get; set; }
    public string Date { get; set; }

    public double Price { get; set; }

    public string Description { get; set; }

    public abstract string Type { get; }

    public void OrderNow()
    {
        Console.WriteLine($"Ticket ordered for production {Name} for the price of €{Price}");
    }

}


public class EducationalProduction : Production
{

    public string TeachingMaterial { get; set; }

    public override string Type => "Educational";

    public override string ToString()
    {
        return $"Educational production {Name} about {TeachingMaterial} on {Date} for the price of €{Price}";
    }

    public void OrderNow()
    {
        base.OrderNow();
        Console.WriteLine($"“associated educational material can be found here: <url>”");
    }
}

public class GuestPerformance : Production
{
    public string Association { get; set; }

    public override string Type => "Guest";

    public void Ordernow()
    {
        Console.WriteLine($"Please contact {Association} to order tickets.");
    }
}

public class TheatreProduction : Production
{
    public string Director { get; set; }
    public string Genre { get; set; }

    public override string Type => "Theatre";

}