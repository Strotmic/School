namespace Howest.mct.classes;

using Howest.mct.test;


public class Beer
{

    public string Name
    {
        get
        {
            return Name;
        }

        set
        {
            if (value == null)
            {
                throw new BeerException("Wrong name", Name);
            }
            else if (string.IsNullOrWhiteSpace(value))
            {
                throw new BeerException("Wrong name", Name);
            }
            else
            {
                Name = value;
            }
        }

    }
    public string Brewery
    {
        get
        {
            return Brewery;
        }
        set
        {
            if (value == null)
            {
                throw new BeerException("Wrong name", Brewery);
            }
            else if (string.IsNullOrWhiteSpace(value))
            {
                throw new BeerException("Wrong name", Brewery);
            }
            else
            {
                Brewery = value;
            }
        }
    }
    public double AlcoholPercentage
    {
        get
        {
            return AlcoholPercentage;
        }
        set
        {
            if (value < 0)
            {
                throw new BeerException("Wrong name", AlcoholPercentage);
            }
            else if (value > 100)
            {
                throw new BeerException("Wrong name", AlcoholPercentage);
            }
            else
            {
                AlcoholPercentage = value;
            }
        }
    }
    public string Color
    {
        get
        {
            return Color;
        }
        set
        {
            if (value == null)
            {
                throw new BeerException("Wrong name", Color);
            }
            else if (string.IsNullOrWhiteSpace(value))
            {
                throw new BeerException("Wrong name", Color);
            }
            else
            {
                Color = value;
            }
        }
    }


    public Beer(string _name, string _brewery, double _alcoholPercentage, string _color)
    {
        Name = _name;
        Brewery = _brewery;
        AlcoholPercentage = _alcoholPercentage;
        Color = _color;
    }

    public override string ToString()
    {
        return $"{Name} - {Brewery} - {AlcoholPercentage} - {Color}";
    }


}


