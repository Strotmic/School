namespace MCT.w2.ex4;

public class Student
{
    public string Name {get; set;}
    public string Email {get; set;}
    public string Class {get; set;}
    public DateTime Birthday {get; set;}
    public List<Course> Courses {get; set;}

    public Student(string name, string email, string @class, DateTime birthday, List<Course> courses)
    {
        Name = name;
        Email = email;
        Class = @class;
        Birthday = birthday;
        Courses = courses;
    }

    // ShowStudents
    public static void ShowStudents(List<Student> students)
    {
        foreach (Student student in students)
        {
            Console.WriteLine($"Name: {student.Name}\nEmail: {student.Email}\nClass: {student.Class}\nBirthday: {student.Birthday}");
        }
    }

    // Add course to student
    public static void AddCourse(Student student, Course course)
    {
        student.Courses.Add(course);
        Console.WriteLine($"Added course {course.Name} to student {student.Name}");
    }

    // Price student courses
    public static void PriceStudentCourses(Student student)
    {
        int price = 0;
        foreach (Course course in student.Courses)
        {
            price += course.Price;
        }
        Console.WriteLine($"Price of courses: {price}");
    }
}

public class Course
{
    public int Id {get; set;}
    public string Name {get; set;}
    public int Price {get; set;}

    public Course(int id, string name, int price)
    {
        Id = id;
        Name = name;
        Price = price;
    }

    // ShowCourses
    public static void ShowCourses(List<Course> courses)
    {
        foreach (Course course in courses)
        {
            Console.WriteLine($"Id: {course.Id}\nName: {course.Name}\nPrice: {course.Price}");
        }
    }
}