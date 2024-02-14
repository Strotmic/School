// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

Console.WriteLine("Geef uw naam op: ");
string name = Console.ReadLine();

Console.WriteLine("Geef het aantal kansen op: ");
int guesses = int.Parse(Console.ReadLine());

static void GuessNumber(string name, int guesses)
{
    Random rnd = new Random();
    int random = rnd.Next(1, 10);
    int gok = 0;
    int kansen = 0;
    Console.WriteLine("Start guessing");

    do
    {
        gok = int.Parse(Console.ReadLine());
        kansen += 1;
        if (kansen >= guesses)
        {
            Console.WriteLine($"Je hebt het nummer niet geraden {name}");
            return;
        }
    } while ((gok != random));

    Console.WriteLine($"Proficiat {name} you guessed the number in {kansen} turns");
}


GuessNumber(name, guesses);