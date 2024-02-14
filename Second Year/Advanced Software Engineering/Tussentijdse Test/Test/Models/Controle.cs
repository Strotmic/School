namespace test
{
    public abstract class Controle
    {
        public int Jaar { get; set; }
        public int Maand { get; set; }
        public Locatie Locatie { get; set; }
        public string Details { get; set; }

        public Controle(int jaar, int maand, Locatie locatie, string details)
        {
            Jaar = jaar;
            Maand = maand;
            Locatie = locatie;
            Details = details;
        }

        public override string ToString()
        {
            string MaandNaam = maandToString(Maand);
            return $"{Jaar} {MaandNaam} {Locatie} {Details}";
        }

        // Functie maand int omzetten in maand naam
        string maandToString(int maand)
        {
            switch (maand)
            {
                case 1:
                    return "January";
                case 2:
                    return "February";
                case 3:
                    return "March";
                case 4:
                    return "April";
                case 5:
                    return "May";
                case 6:
                    return "June";
                case 7:
                    return "July";
                case 8:
                    return "August";
                case 9:
                    return "September";
                case 10:
                    return "October";
                case 11:
                    return "November";
                case 12:
                    return "December";
                default:
                    return "Invalid month";
            }
        }

        // Sorteer op Locatie, Stad en Straat
        public void Sorteer()
        {
            if (Locatie.Stad.CompareTo(Locatie.Straat) < 0)
            {
                string temp = Locatie.Stad;
                Locatie.Stad = Locatie.Straat;
                Locatie.Straat = temp;
            }
        }

        public override bool Equals(object obj)
        {
            if (obj is Controle)
            {
                Controle controle = (Controle)obj;
                return controle.Locatie == Locatie;
            }
            return false;
        }
    }
}