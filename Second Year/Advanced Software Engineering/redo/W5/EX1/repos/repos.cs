using Newtonsoft.Json;
using System.Net.Http.Json;

// Define the namespace for the code
namespace redo.w5.ex1;

// Define the interface for the PostRepository
public interface IPostRepository
{
    // Method to get all posts
    Task<List<Post>> GetPosts();
    // Method to get a specific post by ID
    Task<Post> GetPost(int id);
    // Method to add a new post
    Task<Post> AddPost(Post post);
    // Method to get comments for a specific post
    Task<List<Comment>> GetComments(int postId);
}

// Implement the IPostRepository interface
public class PostRepository : IPostRepository
{
    // Define the base URL for the API
    // public const string Global.BASE_URL = "https://jsonplaceholder.typicode.com";

    // Implement the GetPosts method
    public async Task<List<Post>> GetPosts()
    {
        using (HttpClient client = new HttpClient())
        {
            client.BaseAddress = new Uri(Global.BASE_URL);
            HttpResponseMessage response = await client.GetAsync("/posts");

            if (response.IsSuccessStatusCode)
            {
                string content = await response.Content.ReadAsStringAsync();
                List<Post> posts = JsonConvert.DeserializeObject<List<Post>>(content);
                foreach (Post post in posts)
                {
                    Console.WriteLine(post.ToString());
                }
                return posts;
            }
            else
            {
                throw new Exception("Error fetching posts: " + response.StatusCode);
            }
        }
    }

    // Implement the GetPost method
    public async Task<Post> GetPost(int id)
    {
        using (HttpClient client = new HttpClient())
        {
            client.BaseAddress = new Uri(Global.BASE_URL);
            HttpResponseMessage response = await client.GetAsync($"/posts/{id}");

            if (response.IsSuccessStatusCode)
            {
                string content = await response.Content.ReadAsStringAsync();
                Post post = JsonConvert.DeserializeObject<Post>(content);
                Console.WriteLine(post.ToString());
                return post;
            }
            else
            {
                throw new Exception("Error fetching post: " + response.StatusCode);
            }
        }
    }

    // Implement the AddPost method
    public async Task<Post> AddPost(Post post)
    {
        using (HttpClient client = new HttpClient())
        {
            client.BaseAddress = new Uri(Global.BASE_URL);
            HttpResponseMessage response = await client.PostAsJsonAsync("/posts", post);

            if (response.IsSuccessStatusCode)
            {
                string content = await response.Content.ReadAsStringAsync();
                Post createdPost = JsonConvert.DeserializeObject<Post>(content);
                Console.WriteLine(createdPost.ToString());
                return createdPost;
            }
            else
            {
                throw new Exception("Error creating post: " + response.StatusCode);
            }
        }
    }

    // Implement the GetComments method
    public async Task<List<Comment>> GetComments(int postId)
    {
        using (HttpClient client = new HttpClient())
        {
            client.BaseAddress = new Uri(Global.BASE_URL);
            HttpResponseMessage response = await client.GetAsync($"/posts/{postId}/comments");

            if (response.IsSuccessStatusCode)
            {
                string content = await response.Content.ReadAsStringAsync();
                List<Comment> comments = JsonConvert.DeserializeObject<List<Comment>>(content);
                foreach (Comment comment in comments)
                {
                    Console.WriteLine(comment.ToString());
                }
                return comments;
            }
            else
            {
                throw new Exception("Error fetching comments: " + response.StatusCode);
            }
        }
    }
}