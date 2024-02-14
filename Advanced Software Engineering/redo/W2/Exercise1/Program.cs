namespace MCT.w2;

public class Program
{
    public static void Main(string[] args)
    {
        Person person1 = new Person("John", "Doe", 25, "123 Main St New York, NY 10001", "johndoe@example.com", "123-456-7890");

        List<Person> people = new List<Person>();
        people.Add(person1);

        foreach (Person person in people)
        {
            Console.WriteLine(person.ToString());
        }
    }
}
