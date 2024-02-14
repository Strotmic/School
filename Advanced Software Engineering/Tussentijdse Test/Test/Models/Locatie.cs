namespace test
{

    public class Locatie
    {
        public string Straat { get; set; }
        public int Postcode { get; set;}
        public string Stad { get; set; }

        public Locatie(string straat, int postcode ,string stad)
        {
            Straat = straat;
            Postcode = postcode;
            Stad = stad;
        }

        public override string ToString()
        {
            return $"{Straat} {Stad}";
        }

        public override bool Equals(object obj)
        {
            if (obj is Locatie)
            {
                Locatie locatie = (Locatie)obj;
                return locatie.Straat == Straat && locatie.Stad == Stad;
            }
            return false;
        }
    }
}