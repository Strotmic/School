

namespace redo.w7.ex1.models;

public class Person
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }
    public string Email { get; set; }

    // Constructor
    public Person(int id, string name, int age, string email)
    {
        Id = id;
        Name = name;
        Age = age;
        Email = email;
    }

    public override string ToString()
    {
        return $"Id: {Id}, Name: {Name}, Age: {Age}, Email: {Email}";
    }
}