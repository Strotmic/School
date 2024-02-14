namespace E03.repo1;
using E03.classes;
public interface IMediaRepository
{
    public void Add(IMedia media);
    public List<IMedia> GetAll();
    public IMedia GetByTitle(string title);
}

public class MediaRepository : IMediaRepository
{
    private List<IMedia> _media = new List<IMedia>();

    public void Add(IMedia media)
    {
        _media.Add(media);
    }

    public List<IMedia> GetAll()
    {
        return _media;
    }

    public IMedia GetByTitle(string title)
    {
        return _media.FirstOrDefault(m => m.Title == title);
    }
}