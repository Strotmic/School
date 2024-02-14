
namespace Howest.Services;
using Howest.models;
using Howest.Repositories;
using Howest.MCT.Context;
using Microsoft.VisualBasic;

public class Service
{
    private Repository repository;
    private DBRepository dBRepository;

    public Service()
    {
        repository = new Repository();
        dBRepository = new DBRepository(new AplicationDbContext());
    }
    public async Task<List<HboMedia>> GetHboMedia()
    {
        return await repository.GetHboMedia();
    }


    public async Task<List<Channel>> GetChannels()
    {
        try
        {
            return await dBRepository.GetChannels();
        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, "GetChannels()");
        }
        return null;
    }

    public async Task<List<HboMedia>> GetByYears(int startYear, int endYear)
    {
        List<HboMedia> hboMedia = new List<HboMedia>();
        try
        {
            if (startYear > endYear)
            {
                throw new Exception("Start year can't be bigger than end year");
            }
            hboMedia = await repository.GetBetweenYears(startYear, endYear);

            return hboMedia;
        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, $"GetByYears({startYear}, {endYear})");

        }
        return null;
    }

    public async Task<List<HboMedia>> GetChildFriendly()
    {
        try
        {
            return await repository.GetChildFriendly();
        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, "GetChildFriendly()");
        }
        return null;
    }

    public async Task<Broadcast> addBroadcast(Broadcast broadcast, int channelId)
    {
        try
        {
            List<HboMedia> hboMedia = await repository.GetById(broadcast.SerieId);
            bool isChildFriendly = hboMedia[0].Genres_Children;
            // List<Channel> channels = await dBRepository.GetChannelsBy();
            // bool isChildFriendly = await dBRepository.GetChannelById(channelId);
            return await dBRepository.addBroadcast(broadcast, channelId, isChildFriendly);
        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, "addBroadcast()");
        }
        return null;
    }

    public async Task<List<Broadcast>> GetBroadcastsByChannelName(string channelName)
    {
        try
        {
            return await dBRepository.GetBroadcastsByChannelName(channelName);
        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, "GetBroadcastsByChannelName()");
        }
        return null;
    }

    public async void ExportBroadcastsByChannelName(string channelName)
    {
        try
        {
            string json = await dBRepository.ExportBroadcastsByChannelName(channelName);

            string errorLogPath = "Channels.json";
            string logMessage = json;

            File.WriteAllText(errorLogPath, logMessage);



        }
        catch (Exception ex)
        {
            repository.LogError(ex.Message, "ExportBroadcastsByChannelName()");
        }
    }
}

