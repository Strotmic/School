namespace Howest.mct.classes;

public class Student
{
    public int id;
    public string name;
    public string mail;
    public string klas;
    public string birth;
    public Course course;

    public Student(int _id, string _name, string _mail, string _klas, string _birth = null, Course _course = null)
    {
        id = _id;
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

    public string ToCsv()
    {
        return $"{id},{name},{mail},{klas},{birth}";
    }

    public override string ToString()
    {
        return $"{id}-{name} - {mail} - {klas}";
    }
}

public class Course
{
    public int id;
    public string name;
    public double price;
    public List<Student> students;

    public Course(int _id, string _name, double _price, List<Student> _students = null)
    {
        id = _id;
        name = _name;
        price = _price;
        students = _students;
    }

    public string ToCsv()
    {
        return $"{id},{name},{price}";
    }

    public void addStudent(Student student)
    {
        students.Add(student);
    }

    public override string ToString()
    {
        return $"{id}-{name} - {price}";
    }


}