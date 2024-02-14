namespace MCT.w2.ex2;

public class Person
{
    public string Name { get; set; }
    public string Lastname { get; set; }
    public int Age { get; set; }
    public List<string> Addresses { get; set; }
    public List<string> Emails { get; set; }
    public List<string> Phones { get; set; }

    public Person(string name, string lastname, int age, List<string> addresses, List<string> emails, List<string> phones)
    {
        Name = name;
        Lastname = lastname;
        Age = age;
        Addresses = addresses;
        Emails = emails;
        Phones = phones;
    }

    public override string ToString()
    {
        return $"Name: {Name} {Lastname}\nAge: {Age}\nAddresses: {string.Join(", ", Addresses)}\nEmails: {string.Join(", ", Emails)}\nPhones: {string.Join(", ", Phones)}";
    }
}