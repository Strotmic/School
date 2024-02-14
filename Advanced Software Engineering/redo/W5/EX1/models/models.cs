using Newtonsoft.Json;
namespace redo.w5.ex1;
public class Post
{
    [JsonProperty("userId")]
    public int UserId { get; set; }

    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("title")]
    public string Title { get; set; }

    [JsonProperty("body")]
    public string Body { get; set; }

    public override string ToString()
    {
        return $"Id: {Id}, Title: {Title}";
    }
}

public class Comment
{
    [JsonProperty("postId")]
    public int PostId { get; set; }
    [JsonProperty("id")]
    public int Id { get; set; }
    [JsonProperty("name")]
    public string Name { get; set; }
    [JsonProperty("email")]
    public string Email { get; set; }
    [JsonProperty("body")]
    public string Body { get; set; }

    public override string ToString()
    {
        return $"Id: {Id}, Name: {Name}, Email: {Email}, Body: {Body}";
    }
}