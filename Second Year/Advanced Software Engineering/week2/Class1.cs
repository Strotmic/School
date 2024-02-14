namespace week2;


public class Student
{
    public string name;
    public string mail;
    public string klas;
    public DateTime birth;
    public Course course;

    public Student(string _name, string _mail, string _klas, DateTime _birth, Course _course = null)
    {
        name = _name;
        mail = _mail;
        klas = _klas;
        birth = _birth;
        course = _course;
    }

    public void addCourse(Course _course)
    {
        course = _course;
    }

    public void getPrice()
    {

        Console.WriteLine($"de prijs is: {course.price}");
    }
}

public class Course
{
    public int id;
    public string name;
    public int price;
    public List<Student> students;

    public Course(int _id, string _name, int _price, List<Student> _students = null)
    {
        id = _id;
        name = _name;
        price = _price;
        students = _students;
    }

    public void addStudent(Student student)
    {
        students.Add(student);
    }

    public static void Main()
    {
        List<Student> students = new List<Student>();
        Course mct = new Course(1, "mct", 1000, students);
        DateTime dt = new DateTime();
        Student Tim = new Student("Tim Bleuze", "tim.bleuze@gmail.com", "1mct", dt, mct);
        Tim.getPrice();

    }


}
