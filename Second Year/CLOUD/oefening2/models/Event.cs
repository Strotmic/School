using Newtonsoft.Json;
using System;

namespace examen.oefening2.models;

public class Event
{
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    [JsonProperty(PropertyName = "city")]
    public string City { get; set; }

    [JsonProperty(PropertyName = "creatorEmail")]
    public string CreatorEmail { get; set; }

    [JsonProperty(PropertyName = "startTime")]
    public DateTime StartTime { get; set; }

    [JsonProperty(PropertyName = "endTime")]
    public DateTime EndTime { get; set; }
    
    [JsonProperty(PropertyName = "isActive")]
    public bool IsActive { get; set; }
}