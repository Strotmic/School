namespace Howest.mct.test;
using System;

[Serializable]
public class BeerException : Exception
{

    public string WrongFieldName;
    public Object WronValue;

    public BeerException(string wrongFieldName, Object wrongValue) : base()
    {
        WrongFieldName = wrongFieldName;
        WronValue = wrongValue;
    }

    public override string ToString()
    {
        return base.ToString();
    }

}