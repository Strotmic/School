public sealed class MySingleton
{
    private static MySingleton instance = null;
    private static int counter = 0;

    private MySingleton() { }

    public static MySingleton Instance
    {
        get
        {

            if (instance == null)
            {
                instance = new MySingleton();
            }
            return instance;
        }
    }

    public void DoSomething()
    {
        Console.WriteLine("Doing something");
    }
}