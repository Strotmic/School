namespace redo.w4.ex1;

public class Smartphone
{
    public int Id { get; set; }
    public string Brand { get; set; }
    public string Type { get; set; }
    public int ReleaseYear { get; set; }
    public int StartPrice { get; set; }
    public string OS { get; set; }

    public Smartphone(int id, string brand, string type, int releaseYear, int startPrice, string os)
    {
        Id = id;
        Brand = brand;
        Type = type;
        ReleaseYear = releaseYear;
        StartPrice = startPrice;
        OS = os;
    }

    public override string ToString()
    {
        return $"{Id},{Brand},{Type},{ReleaseYear},{StartPrice},{OS}";
    }
}