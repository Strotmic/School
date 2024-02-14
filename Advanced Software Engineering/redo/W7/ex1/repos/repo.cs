using System.Collections.Generic;
using System.Linq;
using redo.w7.ex1.models;

namespace redo.w7.ex1.repos;

public class PersonRepository
{
    private List<Person> persons = new List<Person>();

    public void AddPerson(Person person)
    {
        persons.Add(person);
        Console.WriteLine($"Person added: {person.Name}");
    }

public void UpdatePerson(Person personToUpdate)
{
    foreach (Person person in persons)
    {
        if (person.Id == personToUpdate.Id)
        {
            person.Name = personToUpdate.Name;
            person.Age = personToUpdate.Age;
            person.Email = personToUpdate.Email;
            Console.WriteLine($"Person with id {person.Id} updated: {person.Name}");
            break;
        }
    }
}

    public void DeletePerson(int id)
    {
        foreach (Person person in persons)
        {
            if (person.Id == id)
            {
                persons.Remove(person);
                Console.WriteLine($"Person with id {id} deleted");
                break;
            }
        }
    }

    public Person GetPersonById(int id)
    {
        foreach (Person person in persons)
        {
            if (person.Id == id)
            {
                Console.WriteLine($"Person found: {person.Name}");
                return person;
            }
            else
            {
                Console.WriteLine($"Person with id {id} not found");
                break;
            }
        }
        return null;
    }

    public List<Person> GetAllPersons()
    {
        return new List<Person>(persons);
    }
}