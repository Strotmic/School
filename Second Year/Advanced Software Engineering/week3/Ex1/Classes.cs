namespace Howest.mct.classes;
using System;
using System.Collections;


public abstract class Collectible : IComparable
{
    
    public int CompareTo(object obj)
    {
        Collectible other = obj as Collectible;
        if (other == null)
        {
            throw new ArgumentException("Object is not a Collectible");
        }
        return this.Name.CompareTo(other.Name);
    }

    public string Name;
    public int YearOfOrigin;
    public double Price;

    public double StartBidPrice;

    public abstract string CollectibleType
    {
        get;

    }


    public override string ToString()
    {
        return $"{Name} - {YearOfOrigin} - {Price}";
    }


}

//- ** Name** (string)
//- ** YearOfOrigin** (int)
//- ** Price** (double)
//- ** PricePerGlass** (double)
//- ** Country** (String)
//- ** Type** (WineType)**->** use a enumeration WineType with these values: RED, WHITE, ROSE, SPARKLING
public class Wine : Collectible
{
    public double PricePerGlass;
    public string Country;
    public enum WineType
    {
        RED,
        WHITE,
        ROSE,
        SPARKLING
    }

    public WineType winetype;

    public Wine(string _name, int _YearOfOrigin, double _price, double _priceperglass, string _country, WineType _winetype)
    {
        Name = _name;
        YearOfOrigin = _YearOfOrigin;
        Price = _price;
        PricePerGlass = _priceperglass;
        Country = _country;
        winetype = _winetype;
        StartBidPrice = Price * 0.8;

    }


    public override string CollectibleType
    {
        get
        {
            return $"Wine {winetype}";

        }
    }

    public override string ToString()
    {
        return $"{Name} - {YearOfOrigin} - {Price} - {PricePerGlass} - {Country} - {winetype} - {CollectibleType} - {StartBidPrice}";
    }


}

// - ** Name** (string)
// - ** YearOfOrigin** (int)
// - ** Price** (double)
// - ** Image** (String)

public class PostStamp : Collectible
{

    public string Image;

    public PostStamp(string _name, int _YearOfOrigin, double _price, string _image)
    {
        Name = _name;
        YearOfOrigin = _YearOfOrigin;
        Price = _price;
        Image = _image;
        StartBidPrice = Price * 0.8;
    }

    public override string CollectibleType
    {
        get
        {
            return $"PostStamp";

        }
    }
    public override string ToString()
    {
        return $"{Name} - {YearOfOrigin} - {Price} - {Image}";
    }
}

// - ** Name** (string)
// - ** YearOfOrigin** (int)
// - ** Price** (double)
// - ** Publisher** (String)
// - ** Author** (String)
public class ComicBook : Collectible
{

    public string Publisher;
    public string Author;

    public ComicBook(string _name, int _YearOfOrigin, double _price, string _publisher, string _author)
    {
        Name = _name;
        YearOfOrigin = _YearOfOrigin;
        Price = _price;
        Publisher = _publisher;
        Author = _author;
        StartBidPrice = Price * 0.8;

    }

    public override string CollectibleType
    {
        get
        {
            return $"ComicBook";

        }
    }

    public override string ToString()
    {
        return $"{Name} - {YearOfOrigin} - {Price} - {Publisher} - {Author}";
    }
}