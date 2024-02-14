
public interface IEntity
{
    int Id { get; }
}

public interface IRepository<T> where T : IEntity
{
    void Add(T item);
    T GetById(int id);
    IEnumerable<T> GetAll();
    void Remove(T item);
}

public  class Repository<T> : IRepository<T> where T : IEntity
{
    protected readonly List<T> _items = new List<T>();

    public void Add(T item)
    {
        _items.Add(item);
        Console.WriteLine($"Item added: {item.Id}");
    }

    public T GetById(int id)
    {
        return _items.FirstOrDefault(item => item.Id == id);
    }

    public IEnumerable<T> GetAll()
    {
        return _items;
    }

    public void Remove(T item)
    {
        _items.Remove(item);
        Console.WriteLine($"Item removed: {item.Id}");
    }
}