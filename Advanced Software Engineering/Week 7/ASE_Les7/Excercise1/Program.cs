// Program.cs
using System;
using lab7.Models;
using lab7.Services;
using lab7.Repositories;
class Program
{
    static void Main(string[] args)
    {
        var service = new PersonService();

        var person = service.AddPerson(new Person { Name = "John Doe", Age = 30, Email = "john.doe@example.com" });
        Console.WriteLine($"Added Person: {person.Name}");

        person.Name = "Jane Doe";
        person = service.UpdatePerson(person);
        Console.WriteLine($"Updated Person: {person.Name}");

        var retrievedPerson = service.GetPersonById(person.Id);
        Console.WriteLine($"Retrieved Person: {retrievedPerson.Name}");

        service.DeletePerson(person.Id);
    }
}