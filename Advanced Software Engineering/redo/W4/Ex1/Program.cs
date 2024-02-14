using redo.w4.ex1;


class Program
{
    static void Main(string[] args)
    {
        SmartphoneService smartphoneService = new SmartphoneService();
        while (true)
        {
            Console.WriteLine("1. Add smartphone");
            Console.WriteLine("2. Find smartphone by ID");
            Console.WriteLine("3. Get all smartphones");
            Console.WriteLine("4. Exit");
            Console.Write("Enter your choice: ");
            int choice = int.Parse(Console.ReadLine());

            switch (choice)
            {
                case 1:
                    Console.WriteLine("Enter smartphone id: ");
                    int newId = int.Parse(Console.ReadLine());
                    Console.WriteLine("Enter smartphone brand: ");
                    string newBrand = Console.ReadLine();
                    Console.WriteLine("Enter smartphone type: ");
                    string newType = Console.ReadLine();
                    Console.WriteLine("Enter smartphone release year: ");
                    int newReleaseYear = int.Parse(Console.ReadLine());
                    Console.WriteLine("Enter smartphone start price: ");
                    int newStartPrice = int.Parse(Console.ReadLine());
                    Console.WriteLine("Enter smartphone os: ");
                    string newOS = Console.ReadLine();
                    Smartphone newSmartphone = new Smartphone(newId, newBrand, newType, newReleaseYear, newStartPrice, newOS);
                    smartphoneService.AddSmartphoneToCSV(newSmartphone);
                    Console.WriteLine("Smartphone added to csv");
                    break;
                case 2:
                    Console.WriteLine("Enter smartphone id: ");
                    int id = int.Parse(Console.ReadLine());
                    Smartphone smartphoneById = smartphoneService.GetSmartphoneById(id);
                    if (smartphoneById != null)
                    {
                        Console.WriteLine(smartphoneById.Id + " " + smartphoneById.Brand + " " + smartphoneById.Type + " " + smartphoneById.ReleaseYear + " " + smartphoneById.StartPrice + " " + smartphoneById.OS);
                    }
                    else
                    {
                        Console.WriteLine("Smartphone not found");
                    }
                    break;
                case 3:
                    List<Smartphone> smartphones = smartphoneService.GetSmartphones();
                    foreach (Smartphone smartphone in smartphones)
                    {
                        Console.WriteLine(smartphone.Id + " " + smartphone.Brand + " " + smartphone.Type + " " + smartphone.ReleaseYear + " " + smartphone.StartPrice + " " + smartphone.OS);
                    }
                    break;
                case 4:
                    return;
                default:
                    Console.WriteLine("Invalid choice. Please enter a number between 1 and 4.");
                    break;
            }
        }
    }
}