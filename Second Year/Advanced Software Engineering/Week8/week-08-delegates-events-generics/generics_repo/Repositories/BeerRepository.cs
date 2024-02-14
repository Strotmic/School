

public interface IBeerRepository : IRepository<Beer>
{
    int CountByStyle(string style);
}

public class BeerRepository : Repository<Beer> , IBeerRepository
{
    public int CountByStyle(string style)
    {
        return _items.Count(b => b.Style == style);
    }
}
