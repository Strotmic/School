namespace Howest.models;

public class Location
{
    public string targetID { get; set; }
    public string countryCode { get; set; }
    public string name { get; set; }
    public string lattitude { get; set; }
    public string longitude { get; set; }
    public string personName { get; set; }
    public string detect { get; set; }

}

public class Detect
{
    public string id { get; set; }
    public string droneid { get; set; }
    public string target { get; set; }
    public string accuracy { get; set; }
    public string latitude { get; set; }
    public string longitude { get; set; }
    public string detectedObject { get; set; }
    public string isVerwerkt { get; set; }
    public string timestamp { get; set; }

}