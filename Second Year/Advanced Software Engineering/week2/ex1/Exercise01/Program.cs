// See https://aka.ms/new-console-template for more information
using test;
Console.WriteLine("Hello, World!");
List<string> dinosaurs = new List<string>();
dinosaurs.Add("Tyrannosaurus");
dinosaurs.Add("Amargasaurus");
dinosaurs.Add("Mamenchisaurus");
dinosaurs.Add("Deinonychus");
dinosaurs.Add("Compsognathus");
Person Tim = new Person("Tim", "Bl euze", 16, dinosaurs);  // Create an object of the Car Class (this will call the constructor)
Console.WriteLine(Tim.getName());  // Print the value of model
Tim.toString();