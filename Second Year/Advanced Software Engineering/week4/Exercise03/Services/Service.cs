using E03.classes;
using E03.repo1;
namespace E03.Services
{
    public class Service
    {
        private readonly IMediaRepository _mediaRepository;

        public Service(IMediaRepository mediaRepository)
        {
            _mediaRepository = mediaRepository;
        }

        public void Add(IMedia media)
        {
            _mediaRepository.Add(media);
        }

        public List<IMedia> GetAll()
        {
            return _mediaRepository.GetAll();
            
        }

        public IMedia GetByTitle(string title)
        {
            return _mediaRepository.GetByTitle(title);
        }
    }
}