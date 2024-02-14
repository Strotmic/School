namespace MCT.w2.ex4;

public class Program
{
    public static void Main()
    {
        Course course1 = new Course(1, "C#", 1000);
        Course course2 = new Course(2, "Java", 2000);
        Course course3 = new Course(3, "Python", 3000);
        Course course4 = new Course(4, "C++", 4000);
        Course course5 = new Course(5, "JavaScript", 5000);

        List<Course> courses = new List<Course> {course1, course2, course3, course4, course5};

        Student student1 = new Student("John", "john@example.com", "1A", new DateTime(1990, 1, 1), new List<Course> {course1, course2});
        Student student2 = new Student("Lex", "Lex@example.com", "1B", new DateTime(1990, 1, 1), new List<Course> {course3, course4});
        Student student3 = new Student("Tim", "Tim@example.com", "1C", new DateTime(1990, 1, 1), new List<Course> {course4, course5});

        List<Student> students = new List<Student> {student1, student2, student3};

        Console.WriteLine("Show students");
        Student.ShowStudents(students);
        Console.WriteLine("====================================");

        Console.WriteLine("Add course to student");
        Student.AddCourse(student1, course3);
        Console.WriteLine("====================================");

        Console.WriteLine("Price student courses");
        Student.PriceStudentCourses(student1);
        Console.WriteLine("====================================");

        Console.WriteLine("Show courses");
        Course.ShowCourses(courses);
        Console.WriteLine("====================================");
    }
}