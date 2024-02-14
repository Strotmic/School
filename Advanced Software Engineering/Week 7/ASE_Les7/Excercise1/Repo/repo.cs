using lab7.Models;
namespace lab7.Repositories;
public class PersonRepository
{
    private List<Person> persons = new List<Person>();

    public Person AddPerson(Person person)
    {
        persons.Add(person);
        return person;
    }

    public Person UpdatePerson(Person person)
    {
        var existingPerson = GetPersonById(person.Id);
        if (existingPerson != null)
        {
            existingPerson.Name = person.Name;
            existingPerson.Age = person.Age;
            existingPerson.Email = person.Email;
        }
        return existingPerson;
    }

    public void DeletePerson(int id)
    {
        var person = GetPersonById(id);
        if (person != null)
        {
            persons.Remove(person);
        }
    }

    public Person GetPersonById(int id)
    {
        return persons.FirstOrDefault(p => p.Id == id);
    }

    public List<Person> GetAllPersons()
    {
        return persons;
    }
}