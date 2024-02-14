using Newtonsoft.Json;
using System;

namespace examen.oefening2.models;

public class Registration
{
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    [JsonProperty(PropertyName = "braceletId")]
    public string BraceletId { get; set; }

    [JsonProperty(PropertyName = "eventId")]
    public string EventId { get; set; }

    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    [JsonProperty(PropertyName = "age")]
    public int Age { get; set; }

    [JsonProperty(PropertyName = "photoName")]
    public string PhotoName { get; set; }

    [JsonProperty(PropertyName = "arrivalTime")]
    public DateTime ArrivalTime { get; set; }

    [JsonProperty(PropertyName = "departureTime")]
    public DateTime? DepartureTime { get; set; }
}