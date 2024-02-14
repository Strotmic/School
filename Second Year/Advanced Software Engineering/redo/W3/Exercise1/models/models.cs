using System;
using System.Collections.Generic;
namespace MCT.w3.ex1;

public abstract class Collectible : IComparable
{
    public string Name { get; set; }
    public int YearOfOrigin { get; set; }
    public double Price { get; set; }

    // Calculated property
    public double StartBidPrice
    {
        get
        {
            return Price * 0.8;
        }
    }

    // Abstract property
    public abstract string CollectType { get; }

    // Icomparable implementation
    public int CompareTo(object obj)
    {
        Collectible collectible = obj as Collectible;
        if (collectible != null)
        {
            return this.Name.CompareTo(collectible.Name);
        }
        else
        {
            throw new ArgumentException("Object is not a Collectible");
        }
    }

    // Constructor
    public Collectible(string name, int yearOfOrigin, double price)
    {
        Name = name;
        YearOfOrigin = yearOfOrigin;
        Price = price;
    }
}

public enum WineType
{
    RED,
    WHITE,
    ROSE,
    SPARKLING
}

public class Wine : Collectible
{
    public double PricePerGlass { get; set; }
    public string Country { get; set; }
    public WineType Type { get; set; }

    public override string CollectType
    {
        get
        {
            return $"{Type.ToString().ToLower()} wine";
        }
    }

    // Constructor
    public Wine(string name, int yearOfOrigin, double price, double pricePerGlass, string country, WineType type) : base(name, yearOfOrigin, price)
    {
        PricePerGlass = pricePerGlass;
        Country = country;
        Type = type;
    }

    // ToString override
    public override string ToString()
    {
        return $"Name: {Name}, YearOfOrigin: {YearOfOrigin}, Price: {Price}, StartBidPrice: {StartBidPrice}, CollectType: {CollectType}, PricePerGlass: {PricePerGlass}, Country: {Country}, Type: {Type}";
    }

}

public class PostStamp : Collectible
{
    public string Image { get; set; }

    public override string CollectType
    {
        get
        {
            return "post stamp";
        }
    }

    // Constructor
    public PostStamp(string name, int yearOfOrigin, double price, string image) : base(name, yearOfOrigin, price)
    {
        Image = image;
    }

    // ToString
    public override string ToString()
    {
        return $"Name: {Name}, YearOfOrigin: {YearOfOrigin}, Price: {Price}, StartBidPrice: {StartBidPrice}, CollectType: {CollectType}, Image: {Image}";
    }
}

public class ComicBook : Collectible
{
    public string Publisher { get; set; }
    public string Author { get; set; }

    public override string CollectType
    {
        get
        {
            return "comic book";
        }
    }

    // Constructor
    public ComicBook(string name, int yearOfOrigin, double price, string publisher, string author) : base(name, yearOfOrigin, price)
    {
        Publisher = publisher;
        Author = author;
    }

    // ToString
    public override string ToString()
    {
        return $"Name: {Name}, YearOfOrigin: {YearOfOrigin}, Price: {Price}, StartBidPrice: {StartBidPrice}, CollectType: {CollectType}, Publisher: {Publisher}, Author: {Author}";
    }
}