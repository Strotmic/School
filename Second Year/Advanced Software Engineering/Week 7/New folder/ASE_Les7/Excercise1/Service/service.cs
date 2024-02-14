using System.Collections.Generic;
using lab7.Models; // replace with your actual namespace
using lab7.Repositories; // replace with your actual namespace

namespace lab7.Services // replace with your actual namespace
{
    public class PersonService
    {
        private PersonRepository repository = new PersonRepository();

        public Person AddPerson(Person person)
        {
            return repository.AddPerson(person);
        }

        public Person UpdatePerson(Person person)
        {
            return repository.UpdatePerson(person);
        }

        public void DeletePerson(int id)
        {
            repository.DeletePerson(id);
        }

        public Person GetPersonById(int id)
        {
            return repository.GetPersonById(id);
        }

        public List<Person> GetAllPersons()
        {
            return repository.GetAllPersons();
        }
    }
}