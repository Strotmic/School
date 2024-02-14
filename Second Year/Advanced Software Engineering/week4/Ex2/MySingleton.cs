namespace Howest.mct.singleton;
using Howest.mct.repositories;
using Howest.mct.classes;


public sealed class Singleton
{
    private static Singleton instance = null;
    private static readonly object padlock = new object();

    Singleton()
    {
    }

    public static Singleton Instance
    {
        get
        {
            lock (padlock)
            {
                if (instance == null)
                {
                    instance = new Singleton();
                }
                return instance;
            }
        }
    }

    public void getStudentsAndCourses()
    {
        List<Course> courses = new List<Course>();
        List<Student> students = new List<Student>();

        CsvFileRepository csvFileRepository = new CsvFileRepository();

        courses = csvFileRepository.ReadCourses();
        students = csvFileRepository.ReadStudents();

        foreach (Course course in courses)
        {
            Console.WriteLine(course);
        }

        foreach (Student student in students)
        {
            Console.WriteLine(student);
        }
    }

    public void addStudent(Student student)
    {
        CsvFileRepository csvFileRepository = new CsvFileRepository();
        List<Student> students = csvFileRepository.ReadStudents();
        students.Add(student);
        csvFileRepository.WriteStudents(students);

    }

    public void addCourse(Course course)
    {
        CsvFileRepository csvFileRepository = new CsvFileRepository();
        List<Course> courses = csvFileRepository.ReadCourses();
        courses.Add(course);
        csvFileRepository.WriteCourses(courses);
    }
}