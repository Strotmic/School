namespace Howest.mct.services;

using Howest.mct.classes;
using Howest.mct.repositories;


public class SmartPhoneService
{

    private readonly SmartphoneRepository _smartphoneRepository;

    public SmartPhoneService(SmartphoneRepository smartphoneRepository)
    {
        _smartphoneRepository = smartphoneRepository;
    }

    public List<Smartphone> GetSmartphones()
    {
        return SmartphoneRepository.ReadSmartphones();
    }

    public void AddSmartphone(Smartphone smartphone)
    {
        SmartphoneRepository.AddSmartphone(smartphone);
    }

    public void DeleteSmartphone(int id)
    {
        SmartphoneRepository.DeleteSmartphone(id);
    }

    public void UpdateSmartphone(Smartphone smartphone)
    {
        SmartphoneRepository.UpdateSmartphone(smartphone);
    }

    public Smartphone GetSmartphoneById(int id)
    {
        return SmartphoneRepository.ReadSmartphones().FirstOrDefault(s => s.Id == id);
    }
}