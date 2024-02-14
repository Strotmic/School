namespace test
{
    public class SnelheidsControleService
    {
        private readonly ISnelheidscontroleRepository _snelheidscontroleRepository;

        public SnelheidsControleService(ISnelheidscontroleRepository snelheidscontroleRepository)
        {
            _snelheidscontroleRepository = snelheidscontroleRepository;
        }

        public List<Snelheidscontrole> GetSnelheidscontroles()
        {
            return _snelheidscontroleRepository.GetSnelheidscontroles();
        }

        public void AddSnelheidscontrole(Snelheidscontrole snelheidscontrole)
        {
            _snelheidscontroleRepository.AddSnelheidscontrole(snelheidscontrole);
        }

        public List<Snelheidscontrole> GetSnelheidscontrolesOpMaand(int maand)
        {
            return _snelheidscontroleRepository.GetSnelheidscontrolesOpMaand(maand);
        }

        public List<Snelheidscontrole> GetSnelheidscontrolesOpLocatie(string straat, string gemeente)
        {
            return _snelheidscontroleRepository.GetSnelheidscontrolesOpLocatie(straat, gemeente);
        }
    }
}