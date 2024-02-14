using System.Net.Http.Json;

namespace redo.w5.ex1;
class Program
{
    static ITodoApplicationService todoService = new TodoApplicationService();

    static async Task Main(string[] args)
    {
        bool exit = false;
        while (!exit)
        {
            Console.WriteLine("1. Get all posts");
            Console.WriteLine("2. Get a post by ID");
            Console.WriteLine("3. Add a new post");
            Console.WriteLine("4. Get comments for a post");
            Console.WriteLine("5. Get a post and its comments");
            Console.WriteLine("6. Exit");
            Console.Write("Enter your choice: ");
            string choice = Console.ReadLine();

            switch (choice)
            {
                case "1":
                    await todoService.GetPosts();
                    break;
                case "2":
                    Console.Write("Enter post ID: ");
                    int id = int.Parse(Console.ReadLine());
                    await todoService.GetPost(id);
                    break;
                case "3":
                    Console.Write("Enter post details: ");
                    var post = new Post
                    {
                        UserId = 1,
                        Id = 1,
                        Title = "Test",
                        Body = "Test"
                    };
                    await todoService.AddPost(post);
                    break;
                case "4":
                    Console.Write("Enter post ID for comments: ");
                    int postId = int.Parse(Console.ReadLine());
                    await todoService.GetComments(postId);
                    break;
                case "5":
                    Console.Write("Enter post ID for post and comments: ");
                    int postAndCommentsId = int.Parse(Console.ReadLine());
                    await todoService.GetPostAndComments(postAndCommentsId);
                    break;
                case "6":
                    exit = true;
                    break;
            }
        }
    }
}