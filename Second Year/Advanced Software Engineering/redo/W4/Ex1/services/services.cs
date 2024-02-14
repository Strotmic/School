namespace redo.w4.ex1;

public class SmartphoneService
{
    private SmartphoneRepository _smartphoneRepository;

    public SmartphoneService()
    {
        _smartphoneRepository = new SmartphoneRepository();
    }

    public List<Smartphone> GetSmartphones()
    {
        return _smartphoneRepository.GetSmartphones();
    }

    public Smartphone GetSmartphoneById(int id)
    {
        return _smartphoneRepository.GetSmartphoneById(id);
    }

    public Smartphone AddSmartphone(string line)
    {
        return _smartphoneRepository.AddSmartphone(line);
    }

    public void AddSmartphoneToCSV(Smartphone smartphone)
    {
        _smartphoneRepository.AddSmartphoneToCSV(smartphone);
    }
}