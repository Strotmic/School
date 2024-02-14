namespace MCT.w2.ex2;

public class Program
{
    public static void Main()
    {

        Person person1 = new Person("Alice", "Smith", 30,
                                    new List<string> { "123 Main St", "456 Elm St" },
                                    new List<string> { "alice@example.com" },
                                    new List<string> { "555-1234", "555-5678" });

        Person person2 = new Person("Bob", "Johnson", 25,
                                    new List<string> { "789 Oak St" },
                                    new List<string> { "bob@example.com", "bob.johnson@email.com" },
                                    new List<string> { "555-9876" });

        Person person3 = new Person("Eve", "Williams", 35,
                                    new List<string> { "321 Pine St", "654 Birch St" },
                                    new List<string> { "eve@example.com" },
                                    new List<string> { "555-1111", "555-2222", "555-3333" });

        List<Person> people = new List<Person> { person1, person2, person3 };


        foreach (Person person in people)
        {
            Console.WriteLine("Person:");
            Console.WriteLine(person.ToString());
            Console.WriteLine("***********************************************************");
        }
    }
}