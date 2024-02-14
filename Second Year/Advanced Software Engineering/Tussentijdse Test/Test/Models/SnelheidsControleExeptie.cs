namespace test
{
    public class SnelheidsControleExeptie
    {
        public int LijnNummer { get; }
        public string Message { get; }
        public string V { get; }

        public SnelheidsControleExeptie(string lijn, string message)
        {
            // Write the error message to the log file
            using (StreamWriter writer = File.AppendText("./errors.txt"))
            {
                writer.WriteLine($"Error on line {lijn}: {message}");
            }
        }

        public SnelheidsControleExeptie(string v)
        {
            V = v;
        }
    }
}