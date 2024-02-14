public class Box<T>
{
    private T _content;

    public Box(T content)
    {
        _content = content;
    }

    public T Content
    {
        get { return _content; }
        set { _content = value; }
    }

    public void DisplayContent()
    {
        Console.WriteLine($"Box contains: {_content}");
    }
}