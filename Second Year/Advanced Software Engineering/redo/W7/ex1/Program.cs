namespace redo.w7.ex1.program;
class Program
{
    static void Main(string[] args)
    {

        // Create an instance of PersonRepository
        PersonRepository personRepository = new PersonRepository();

        // Create an instance of PersonService
        PersonService personService = new PersonService(personRepository);

        // Create a new Person object
        Person persona = new Person(1, "John Doe", 30, "example@email.com");
        Person personb = new Person(2, "Jane Doe", 25, "example@email.com");
        Person personc = new Person(3, "John Smith", 40, "example@email.com");

        // Use the service to add the new person
        personService.AddPerson(persona);
        personService.AddPerson(personb);
        personService.AddPerson(personc);

        while (true)
        {
            Console.WriteLine("1. Add person");
            Console.WriteLine("2. Update person");
            Console.WriteLine("3. Delete person");
            Console.WriteLine("4. Get person by id");
            Console.WriteLine("5. Get all persons");
            Console.WriteLine("6. Exit");
            string input = Console.ReadLine();
            

            switch (input)
            {
                case "1":
                    Console.WriteLine("Enter id:");
                    int id1 = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Enter name:");
                    string name1 = Console.ReadLine();
                    Console.WriteLine("Enter age:");
                    int age1 = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Enter email:");
                    string email1 = Console.ReadLine();
                    Person person1 = new Person(id1, name1, age1, email1);
                    personService.AddPerson(person1);
                    Console.WriteLine($"Person added: {person1.ToString()}");
                    break;
                case "2":
                    Console.WriteLine("Enter id:");
                    int id2 = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Enter name:");
                    string name2 = Console.ReadLine();
                    Console.WriteLine("Enter age:");
                    int age2 = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Enter email:");
                    string email2 = Console.ReadLine();
                    Person person2 = new Person(id2, name2, age2, email2);
                    personService.UpdatePerson(person2);
                    Console.WriteLine($"Person updated: {person2.ToString()}");
                    break;
                case "3":
                    Console.WriteLine("Enter id:");
                    int id3 = Convert.ToInt32(Console.ReadLine());
                    personService.DeletePerson(id3);
                    Console.WriteLine($"Person deleted: {id3}");
                    break;
                case "4":
                    Console.WriteLine("Enter id:");
                    int id4 = Convert.ToInt32(Console.ReadLine());
                    Person person4 = personService.GetPersonById(id4);
                    Console.WriteLine($"Person found: {person4.ToString()}");
                    break;
                case "5":
                    List<Person> personList = personService.GetAllPersons();
                    foreach (Person p in personList)
                    {
                        Console.WriteLine(p.ToString());
                    }
                    break;
                case "6":
                    Environment.Exit(0);
                    break;
                default:
                    Console.WriteLine("Invalid input");
                    break;
            }
        }
    }
}