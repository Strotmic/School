using Newtonsoft.Json;

namespace examen.exercise1.models;

public class Meal
{
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    [JsonProperty(PropertyName = "childRegistrationNumber")]
    public string ChildRegistrationNumber { get; set; }

    [JsonProperty(PropertyName = "choice")]
    public string Choice { get; set; }

    [JsonProperty(PropertyName = "date")]
    public string Date { get; set; }
}
