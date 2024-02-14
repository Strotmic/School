namespace Demo.Models;

public class Actor
{
    [JsonPropertyName("Id")]
    public int Id { get; set; }

    [JsonPropertyName("Name")]
    public string Name { get; set; }

    [JsonPropertyName("Age")]
    public long Age { get; set; }

    [JsonPropertyName("Nationality")]
    public string Nationality { get; set; }

    [JsonPropertyName("Gender")]
    public string Gender { get; set; }

    public override string ToString()
    {
        return $"{Id} {Name} ({Age})";
    }
}
