// See https://aka.ms/new-console-template for more information
using Howest.mct.classes;
using Howest.mct.repositories;
using Howest.mct.services;


// List<Smartphone> smartphones = SmartphoneRepository.ReadSmartphones();

// foreach (Smartphone smartphone in smartphones)
// {
//     Console.WriteLine(smartphone);
// }

// SmartphoneRepository.AddSmartphone(new Smartphone(4, "test", "test S21", 999.99, 128, "tes Black"));

// SmartphoneRepository.DeleteSmartphone(4);

// SmartPhoneService smartPhoneService = new SmartPhoneService(new SmartphoneRepository());

// smartPhoneService.AddSmartphone(new Smartphone(4, "test", "test S21", 999.99, 128, "tes Black"));

// List<Smartphone> t = smartPhoneService.GetSmartphones();

// foreach (Smartphone smartphone in t)
// {
//     Console.WriteLine(smartphone);
// }


// smartPhoneService.DeleteSmartphone(4);

// -List all smartphones in the catalog.
// - Search for smartphones by brand or type.
// - Add a new smartphone to the catalog.
// -Exit the application.

while (true)
{
    Console.WriteLine("Wat wilt u doen:");
    Console.WriteLine("1. List all smartphones in the catalog.");
    Console.WriteLine("2. Search for smartphones by brand or type.");
    Console.WriteLine("3. Add a new smartphone to the catalog.");
    Console.WriteLine("4. Exit the application.");
    string input = Console.ReadLine();

    switch (input)
    {
        case "1":
            try
            {
                List<Smartphone> smartphones = SmartphoneRepository.ReadSmartphones();

                foreach (Smartphone smartphone in smartphones)
                {
                    Console.WriteLine(smartphone);
                }
                break;
            }
            catch (Exception exx)
            {
                Console.WriteLine("Oei er is een fout ogekomen, probeer opnieuw");
                break;
            }

        case "2":
            try
            {
                Console.WriteLine("Geef een merk of type in:");
                string input2 = Console.ReadLine();
                List<Smartphone> smartphones2 = SmartphoneRepository.ReadSmartphones();
                foreach (Smartphone smartphone in smartphones2)
                {
                    if (smartphone.Brand == input2 || smartphone.type == input2)
                    {
                        Console.WriteLine(smartphone);
                    }
                }
                break;

            }
            catch (Exception ex)
            {
                Console.WriteLine("Oei er is een fout ogekomen, probeer opnieuw");
                break;
            }

        case "3":
            try
            {
                Console.WriteLine("Geef een id in:");
                int id = int.Parse(Console.ReadLine());
                Console.WriteLine("Geef een merk in:");
                string brand = Console.ReadLine();
                Console.WriteLine("Geef een type in:");
                string type = Console.ReadLine();
                Console.WriteLine("Geef een prijs in:");
                double price = double.Parse(Console.ReadLine());
                Console.WriteLine("Geef een releas year in:");
                int storage = int.Parse(Console.ReadLine());
                Console.WriteLine("Geef een os in:");
                string color = Console.ReadLine();
                SmartphoneRepository.AddSmartphone(new Smartphone(id, brand, type, price, storage, color));
                break;
            }
            catch (Exception e)
            {
                Console.WriteLine("Oei er is een fout ogekomen, probeer opnieuw");
                break;
            }

        case "4":
            Environment.Exit(0);
            break;

    }
}


Console.WriteLine("Hello, World!");
