namespace Howest.mct.classes;

public class Smartphone
{
    public int Id { get; set; }
    public string Brand { get; set; }
    public string type { get; set; }
    public double Price { get; set; }
    public int releaseYear { get; set; }
    public string OS { get; set; }

    public Smartphone(int id, string brand, string type, double price, int releaseYear, string os)
    {
        Id = id;
        Brand = brand;
        this.type = type;
        Price = price;
        this.releaseYear = releaseYear;
        OS = os;
    }

    public override string ToString()
    {
        return $"{Id} - {Brand} - {type} - {Price} - {releaseYear} - {OS}";
    }

    public string ToCsv()
    {
        return $"{Id},{Brand},{type},{Price},{releaseYear},{OS}";
    }

    // public static Smartphone FromCsv(string csvLine)
    // {
    //     string[] values = csvLine.Split(',');
    //     Smartphone smartphone = new Smartphone(int.Parse(values[0]), values[1], values[2], double.Parse(values[3]), int.Parse(values[4]), values[5]);
    //     return smartphone;
    // }


    // public static Smartphone GetSmartphone(int id)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.Find(s => s.Id == id);
    // }

    // public static List<Smartphone> GetSmartphones()
    // {
    //     return ReadSmartphones();
    // }

    // public static List<Smartphone> GetSmartphonesByBrand(string brand)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand);
    // }

    // public static List<Smartphone> GetSmartphonesByType(string type)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type);
    // }

    // public static List<Smartphone> GetSmartphonesByPrice(double price)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Price == price);
    // }

    // public static List<Smartphone> GetSmartphonesByReleaseYear(int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByOS(string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndType(string brand, string type)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndPrice(string brand, double price)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.Price == price);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndReleaseYear(string brand, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndOS(string brand, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndPrice(string type, double price)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.Price == price);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndReleaseYear(string type, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndOS(string type, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByPriceAndReleaseYear(double price, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Price == price && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByPriceAndOS(double price, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Price == price && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByReleaseYearAndOS(int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndPrice(string brand, string type, double price)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.Price == price);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndReleaseYear(string brand, string type, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndOS(string brand, string type, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndPriceAndReleaseYear(string brand, double price, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.Price == price && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndPriceAndOS(string brand, double price, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.Price == price && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndReleaseYearAndOS(string brand, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndPriceAndReleaseYear(string type, double price, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.Price == price && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndPriceAndOS(string type, double price, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.Price == price && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndReleaseYearAndOS(string type, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByPriceAndReleaseYearAndOS(double price, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Price == price && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndPriceAndReleaseYear(string brand, string type, double price, int releaseYear)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.Price == price && s.releaseYear == releaseYear);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndPriceAndOS(string brand, string type, double price, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.Price == price && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndReleaseYearAndOS(string brand, string type, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndPriceAndReleaseYearAndOS(string brand, double price, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.Price == price && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByTypeAndPriceAndReleaseYearAndOS(string type, double price, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.type == type && s.Price == price && s.releaseYear == releaseYear && s.OS == os);
    // }

    // public static List<Smartphone> GetSmartphonesByBrandAndTypeAndPriceAndReleaseYearAndOS(string brand, string type, double price, int releaseYear, string os)
    // {
    //     List<Smartphone> smartphones = ReadSmartphones();
    //     return smartphones.FindAll(s => s.Brand == brand && s.type == type && s.Price == price && s.releaseYear == releaseYear && s.OS == os);
    // }



}