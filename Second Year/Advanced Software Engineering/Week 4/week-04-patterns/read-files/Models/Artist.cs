public class Artist
{
    public string Name { get; set; }
    public string Surname { get; set; }
    public string CountryOfOrigin { get; set; }
    public string MostFamousSongs { get; set; }

    public override string ToString()
    {
        return $"{Name} {Surname} {CountryOfOrigin} {MostFamousSongs}";
    }

}

