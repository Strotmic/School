namespace test
{
    public class Person
    {
        protected string name;
        protected string lastName;
        protected int age;
        protected List<string> address;
        protected List<string> email;
        protected List<string> phone;


        public Person(string _name = "", string _lastName = "", int _age = 0, List<string> _address = null, List<string> _email = null, List<string> _phone = null)
        {
            name = _name;
            lastName = _lastName;
            age = _age;
            address = _address;
            email = _email;
            phone = _phone;
        }

        public string getName()
        {
            return name;
        }

        public string getLastName()
        {
            return lastName;
        }

        public int getAge()
        {
            return age;
        }

        public List<string> getAddress()
        {
            return address;
        }

        public List<string> getEmail()
        {
            return email;
        }

        public List<string> getPhone()
        {
            return phone;
        }


        public void setName(string _name)
        {
            name = _name;
        }

        public void setLastName(string _lastname)
        {
            lastName = _lastname;
        }

        public void setAge(int _age)
        {
            age = _age;
        }

        public void setAddress(List<string> _address)
        {
            address = _address;
        }

        public void setEmail(List<string> _email)
        {
            email = _email;
        }

        public void setPhone(List<string> _phone)
        {
            phone = _phone;
        }

        public void toString()
        {
            //             Person Information:
            // Name: John
            // Last Name: Doe
            // Age: 30
            // Address: 123 Main St, Apt 4B, 12345, Exampleville, Countryland
            // Email: john.doe @example.com
            // Phone: (123) 456 - 7890
            Console.WriteLine("Person Information:");
            Console.WriteLine($"Name: {name}");
            Console.WriteLine($"Last Name:{lastName}");
            Console.WriteLine($"Age: {age}");

            Console.WriteLine($"Address:");
            foreach (var item in address)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine($"Email:");
            foreach (var item in email)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine($"Phone: ");
            foreach (var item in phone)
            {
                Console.WriteLine(item);
            }


        }
        static void Main(string[] args)
        {
            Person Tim = new Person("Tim", "Bl  euze");  // Create an object of the Car Class (this will call the constructor)
            Console.WriteLine(Tim.getName());  // Print the value of model
        }
    }
}


