// See https://aka.ms/new-console-template for more information

using Howest.mct.repositories;
using Howest.mct.classes;
using Howest.mct.singleton;

Singleton.Instance.getStudentsAndCourses();

Singleton.Instance.addStudent(new Student(4, "test", "test", "test", "test"));



Singleton.Instance.addCourse(new Course(4, "test", 34.55, null));

// See https://aka.ms/new-console-template for more information

// List<Course> courses = new List<Course>();
// List<Student> students = new List<Student>();

// CsvFileRepository csvFileRepository = new CsvFileRepository();

// courses = csvFileRepository.ReadCourses();
// students = csvFileRepository.ReadStudents();

// foreach(Course course in courses){
//     Console.WriteLine(course);
// }

// foreach(Student student in students){
//     Console.WriteLine(student);
// }


Console.WriteLine("Test");



