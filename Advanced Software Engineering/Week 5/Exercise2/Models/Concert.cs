namespace MCT.Excercise2;

public class Concert
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Genre { get; set; }
    public string Country { get; set; }
    public int Price { get; set; }
    public string Date { get; set; }

    public Concert(int id, string name, string genre, string country, int price, string date)
    {
        Id = id;
        Name = name;
        Genre = genre;
        Country = country;
        Price = price;
        Date = date;
    }

    public string ToString()
    {
        return $"Id: {Id}, Name: {Name}, Genre: {Genre}, Country: {Country}, Price: {Price}, Date: {Date}";
    }
}