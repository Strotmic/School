namespace test
{
    public interface ISnelheidscontroleRepository
    {
        public List<Snelheidscontrole> GetSnelheidscontroles();
        public void AddSnelheidscontrole(Snelheidscontrole snelheidscontrole);

        public List<Snelheidscontrole> GetSnelheidscontrolesOpMaand(int maand);
        public List<Snelheidscontrole> GetSnelheidscontrolesOpLocatie(string straat, string gemeente);
    }

    public class SnelheidscontroleRepository : ISnelheidscontroleRepository
    {
        public List<Snelheidscontrole> GetSnelheidscontroles()
        {
            List<Snelheidscontrole> snelheidscontroles = new List<Snelheidscontrole>();

            string[] lines = File.ReadAllLines("./speedcontrols.csv");
            foreach (string line in lines)
            {
                string[] parts = line.Split(',');
                int jaar = parts[0] == "" ? 0 : int.Parse(parts[0]);
                int maand = parts[1] == "" ? 0 : int.Parse(parts[1]);
                Locatie locatie = new Locatie(parts[2], int.Parse(parts[3]), parts[4]);
                string details = "details";
                int aantalControles = parts[5] == "" ? 0 : int.Parse(parts[5]);
                int aantalVoertuigen = parts[6] == "" ? 0 : int.Parse(parts[6]);
                int aantalOvertredingen = parts[7] == "" ? 0 : int.Parse(parts[7]);

                snelheidscontroles.Add(new Snelheidscontrole(
                    jaar: jaar,
                    maand: maand,
                    locatie: locatie,
                    details: details,
                    aantalControles: aantalControles,
                    aantalVoertuigen: aantalVoertuigen,
                    aantalOvertredingen: aantalOvertredingen
                ));
            }

            snelheidscontroles.Sort((x, y) =>
            {
                int result = x.Locatie.Straat.CompareTo(y.Locatie.Straat);
                if (result == 0)
                {
                    result = x.Locatie.Stad.CompareTo(y.Locatie.Stad);
                }
                return result;
            });

            return snelheidscontroles;
        }

        public void AddSnelheidscontrole(Snelheidscontrole snelheidscontrole)
        {
            // Write the new snelheidscontrole to the file
            using (StreamWriter writer = File.AppendText("./speedcontrols.csv"))
            {
                string nieuweSnelheidscontrole = "";
                nieuweSnelheidscontrole += snelheidscontrole.Jaar.ToString() + ", " + snelheidscontrole.Maand.ToString() + ", " + snelheidscontrole.Locatie.Stad.ToString().ToUpper() + ", " + snelheidscontrole.Locatie.Postcode.ToString() + ", " + snelheidscontrole.Locatie.Straat.ToString().ToUpper() + ", " + snelheidscontrole.AantalControles.ToString() + ", " + snelheidscontrole.AantalVoertuigen.ToString() + ", " + snelheidscontrole.AantalOvertredingen.ToString();
                Console.WriteLine(nieuweSnelheidscontrole);
                writer.WriteLine(nieuweSnelheidscontrole);
            }
        }

        public List<Snelheidscontrole> GetSnelheidscontrolesOpMaand(int maand)
        {
            List<Snelheidscontrole> snelheidscontroles = new List<Snelheidscontrole>();

            string[] lines = File.ReadAllLines("./speedcontrols.csv");
            foreach (string line in lines)
            {
                string[] parts = line.Split(',');
                int jaar = parts[0] == "" ? 0 : int.Parse(parts[0]);
                int controleMaand = parts[1] == "" ? 0 : int.Parse(parts[1]);
                Locatie locatie = new Locatie(parts[2], int.Parse(parts[3]), parts[4]);
                string details = "details";
                int aantalControles = parts[5] == "" ? 0 : int.Parse(parts[5]);
                int aantalVoertuigen = parts[6] == "" ? 0 : int.Parse(parts[6]);
                int aantalOvertredingen = parts[7] == "" ? 0 : int.Parse(parts[7]);

                if (controleMaand == maand)
                {
                    snelheidscontroles.Add(new Snelheidscontrole(
                        jaar: jaar,
                        maand: controleMaand,
                        locatie: locatie,
                        details: details,
                        aantalControles: aantalControles,
                        aantalVoertuigen: aantalVoertuigen,
                        aantalOvertredingen: aantalOvertredingen
                    ));
                }
            }

            snelheidscontroles.Sort((x, y) =>
            {
                int result = x.Locatie.Straat.CompareTo(y.Locatie.Straat);
                if (result == 0)
                {
                    result = x.Locatie.Stad.CompareTo(y.Locatie.Stad);
                }
                return result;
            });

            return snelheidscontroles;
        }

        public List<Snelheidscontrole> GetSnelheidscontrolesOpLocatie(string straat, string gemeente)
        {
            List<Snelheidscontrole> snelheidscontroles = GetSnelheidscontroles();

            List<Snelheidscontrole> filteredSnelheidscontroles = snelheidscontroles
                .Where(sc => sc.Locatie.Straat == straat && sc.Locatie.Stad == gemeente)
                .ToList();

            return filteredSnelheidscontroles;
        }
    }
}