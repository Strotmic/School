using Newtonsoft.Json;

namespace examen.exercise1.models;

public class Child
{
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    [JsonProperty(PropertyName = "firstName")]
    public string FirstName { get; set; }

    [JsonProperty(PropertyName = "class")]
    public string Class { get; set; }

    [JsonProperty(PropertyName = "parentEmail")]
    public string ParentEmail { get; set; }
}

