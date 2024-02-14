namespace MCT.w2;

public class Person 
{
    public string name { get; set; }
    public string lastname { get; set; }
    public int age { get; set; }
    public string address { get; set; }
    public string email { get; set; } 
    public string phone { get; set; }

    public Person(string name, string lastname, int age, string address, string email, string phone)
    {
        this.name = name;
        this.lastname = lastname;
        this.age = age;
        this.address = address;
        this.email = email;
        this.phone = phone;
    }

    public override string ToString()
    {
        return $"Name: {name} {lastname}\nAge: {age}\nAddress: {address}\nEmail: {email}\nPhone: {phone}";
    }
}