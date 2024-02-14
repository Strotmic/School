namespace test
{
    public class Snelheidscontrole : Controle
    {
        public int AantalControles { get; set; }
        public int AantalVoertuigen { get; set; }
        public int AantalOvertredingen { get; set; }

        public double Overtredingsgraad
        {
            get { return (double)AantalOvertredingen / AantalVoertuigen * 100; }
        }
        public string Details
        {
            get { return $"Aantal controles: {AantalControles}, Aantal voertuigen: {AantalVoertuigen}, Aantal overtredingen: {AantalOvertredingen}, Overtredingsgraad: {Overtredingsgraad}"; }
        }

        public Snelheidscontrole(int jaar, int maand, Locatie locatie, string details, int aantalControles, int aantalVoertuigen, int aantalOvertredingen) : base(jaar, maand, locatie, details)
        {
            AantalControles = aantalControles;
            AantalVoertuigen = aantalVoertuigen;
            AantalOvertredingen = aantalOvertredingen;
        }

        public override string ToString()
        {
            return $"{base.ToString()}, {AantalControles}, {AantalVoertuigen}, {AantalOvertredingen}";
        }
    }
}