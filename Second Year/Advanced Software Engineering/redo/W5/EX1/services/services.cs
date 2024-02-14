namespace redo.w5.ex1;
public interface ITodoApplicationService
{
    Task<List<Post>> GetPosts();
    Task<Post> GetPost(int id);
    Task<Post> AddPost(Post post);
    Task<List<Comment>> GetComments(int postId);
    Task<PostAndComments> GetPostAndComments(int postId);
}

public class TodoApplicationService : ITodoApplicationService
{
    private IPostRepository _postRepository;

    public TodoApplicationService()
    {
        _postRepository = new PostRepository();
    }

    public async Task<List<Post>> GetPosts() => await _postRepository.GetPosts();

    public async Task<Post> GetPost(int id) => await _postRepository.GetPost(id);

    public async Task<Post> AddPost(Post post) => await _postRepository.AddPost(post);

    public async Task<List<Comment>> GetComments(int postId) => await _postRepository.GetComments(postId);

    public async Task<PostAndComments> GetPostAndComments(int postId)
    {
        Post post = await _postRepository.GetPost(postId);
        List<Comment> comments = await _postRepository.GetComments(postId);

        return new PostAndComments
        {
            Post = post,
            Comments = comments
        };
    }
}

public class PostAndComments
{
    public Post Post { get; set; }
    public List<Comment> Comments { get; set; }
}