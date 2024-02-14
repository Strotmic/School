namespace redo.w5.ex5;

public interface IVechicle
{
    void Drive();
}

public class Car : IVechicle
{
    public void Drive()
    {
        Console.WriteLine("Driving a car");
    }
}

public class Truck : IVechicle
{
    public void Drive()
    {
        Console.WriteLine("Driving a truck");
    }
}

public class Motorcycle : IVechicle
{
    public void Drive()
    {
        Console.WriteLine("Driving a motorcycle");
    }
}