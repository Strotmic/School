using Newtonsoft.Json;

namespace Howest.mct.models;

public class Registration
{
    [JsonProperty("registrationid")]
    public string RegistrationId { get; set; }

    [JsonProperty("lastname")]
    public string LastName { get; set; }

    [JsonProperty("firstname")]
    public string FirstName { get; set; }

    [JsonProperty("email")]
    public string Email { get; set; }

    [JsonProperty("zipcode")]
    public string Zipcode { get; set; }

    [JsonProperty("age")]
    public int Age { get; set; }

    [JsonProperty("isfirsttimer")]
    public bool IsFirstTimer { get; set; }


    public Registration()
    {

    }

    public Registration(string registrationId, string lastName, string firstName, string email, string zipcode, int age, bool isFirstTimer)
    {
        RegistrationId = registrationId;
        LastName = lastName;
        FirstName = firstName;
        Email = email;
        Zipcode = zipcode;
        Age = age;
        IsFirstTimer = isFirstTimer;
    }

    public string ToCsv()
    {
        return $"{RegistrationId};{LastName};{FirstName};{Email};{Zipcode};{Age};{IsFirstTimer}";
    }

}


// maak hier class van dat je id automatisch generate in de constructor