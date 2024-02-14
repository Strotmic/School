namespace Howest.mct.repositories;
using Howest.mct.classes;

public class CsvFileRepository
{
    public List<Course> ReadCourses()
    {
        List<Course> courses = new List<Course>();

        string[] lines = File.ReadAllLines("./Data/classes.csv");

        foreach (string line in lines)
        {
            string[] data = line.Split(',');
            Course course = new Course(int.Parse(data[0]), data[1], double.Parse(data[2]));
            courses.Add(course);
        }

        return courses;
    }

    public List<Student> ReadStudents()
    {
        List<Student> students = new List<Student>();

        string[] lines = File.ReadAllLines("./Data/data.csv");
        foreach (string line in lines)
        {
            string[] data = line.Split(',');
            Student student = new Student(int.Parse(data[0]), data[1], data[2], data[3]);
            students.Add(student);
        }

        return students;
    }

    public void WriteStudents(List<Student> students)
    {
        List<string> lines = new List<string>();
        foreach (Student student in students)
        {
            lines.Add(student.ToCsv());
        }
        File.WriteAllLines("./Data/data.csv", lines);
    }

    public void WriteCourses(List<Course> courses)
    {
        List<string> lines = new List<string>();
        foreach (Course course in courses)
        {
            lines.Add(course.ToCsv());
        }
        File.WriteAllLines("./Data/classes.csv", lines);
    }

    public void AddStudent(Student student)
    {
        List<Student> students = ReadStudents();
        students.Add(student);
        WriteStudents(students);
    }

    public void AddCourse(Course course)
    {
        List<Course> courses = ReadCourses();
        courses.Add(course);
        WriteCourses(courses);
    }

    


}