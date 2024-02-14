namespace redo.w7.ex1.services;

public class PersonService
{
    private readonly PersonRepository _personRepository;

    public PersonService(PersonRepository personRepository)
    {
        _personRepository = personRepository;
    }

    public void AddPerson(Person person)
    {
        _personRepository.AddPerson(person);
    }

    public void UpdatePerson(Person person)
    {
        _personRepository.UpdatePerson(person);
    }

    public void DeletePerson(int id)
    {
        _personRepository.DeletePerson(id);
    }

    public Person GetPersonById(int id)
    {
        return _personRepository.GetPersonById(id);
    }

    public List<Person> GetAllPersons()
    {
        return _personRepository.GetAllPersons();
    }
}