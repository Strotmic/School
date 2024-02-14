namespace lab7.Models;
public class Person
{
    private static int counter = 0;
    public int Id { get; private set; }
    public string Name { get; set; }
    public int Age { get; set; }
    public string Email { get; set; }

    public Person()
    {
        Id = ++counter;
    }
}