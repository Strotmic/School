using System.Runtime.CompilerServices;
using Newtonsoft.Json;
using Microsoft.EntityFrameworkCore;
using Howest.MCT.Context;

namespace Howest.Repositories;

public interface IRepository
{
    void LogError(string errorMessage, string inputLine);
}

public class Repository : IRepository
{
    private const string URL = "https://examenservice.redplant-ec9a54a1.northeurope.azurecontainerapps.io/hbo";

    public async Task<List<HboMedia>> GetHboMedia()
    {

        using HttpClient client = new HttpClient();
        string json = await client.GetStringAsync(URL);
        List<HboMedia> hboMedia = JsonConvert.DeserializeObject<List<HboMedia>>(json);
        return hboMedia;

    }

    public async Task<List<HboMedia>> GetById(int id)
    {
        List<HboMedia> hboMedia = await GetHboMedia();
        List<HboMedia> filteredMedia = hboMedia.Where(media => media.SerieId == id).ToList();
        return filteredMedia;
    }

    public async Task<List<HboMedia>> GetBetweenYears(int startYear, int endYear)
    {
        List<HboMedia> hboMedia = await GetHboMedia();
        List<HboMedia> filteredMedia = hboMedia.Where(media => media.Year >= startYear && media.Year <= endYear).ToList();
        return filteredMedia;
    }

    public async Task<List<HboMedia>> GetChildFriendly()
    {
        List<HboMedia> hboMedia = await GetHboMedia();
        List<HboMedia> filteredMedia = hboMedia.Where(media => media.Genres_Children == true).ToList();
        return filteredMedia;
    }

    public void LogError(string errorMessage, string inputLine)
    {
        try
        {
            string errorLogPath = "errors.txt";
            string logMessage = $"Error: {errorMessage}\nInput Line: {inputLine}\n\n";

            File.AppendAllText(errorLogPath, logMessage);
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error while logging error: " + ex.Message);
        }
    }
}

public class DBRepository : IRepository
{
    protected readonly AplicationDbContext context;
    public DBRepository(AplicationDbContext context)
    {
        this.context = context;
    }
    public async Task<List<Channel>> GetChannels()
    {
        List<Channel> channels = await context.Channels.ToListAsync();
        return channels;
    }

    public async Task<List<Broadcast>> GetBroadcastsByChannelName(string channelName)
    {
        List<Broadcast> broadcasts = await context.Broadcasts.Where(broadcast => broadcast.Channel.Name == channelName).ToListAsync();
        return broadcasts;
    }

    public async Task<List<Broadcast>> GetBroadcastsByChannelId(int channelId)
    {
        List<Broadcast> broadcasts = await context.Broadcasts.Where(broadcast => broadcast.ChannelId == channelId).ToListAsync();
        return broadcasts;
    }

    public async Task<Broadcast> addBroadcast(Broadcast broadcast, int channelId, bool isChildFriendly)
    {
        Channel channel = await context.Channels.FirstOrDefaultAsync(channel => channel.Id == channelId);
        if (channel == null)
        {
            throw new Exception("Channel not found");
        }
        if (channel.IsChildFriendly == true && isChildFriendly == false)
        {
            Console.WriteLine("Channel is not child friendly");
            throw new Exception("Channel is not child friendly");
        }
        broadcast.ChannelId = channelId;
        await context.Broadcasts.AddAsync(broadcast);
        await context.SaveChangesAsync();
        return broadcast;
    }

    public async Task<String> ExportBroadcastsByChannelName(string channelName)
    {
        List<Broadcast> broadcasts = await GetBroadcastsByChannelName(channelName);
        string json = JsonConvert.SerializeObject(broadcasts);
        return json;
    }

    public void LogError(string errorMessage, string inputLine)
    {
        try
        {
            string errorLogPath = "errors.txt";
            string logMessage = $"Error: {errorMessage}\nInput Line: {inputLine}\n\n";

            File.AppendAllText(errorLogPath, logMessage);
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error while logging error: " + ex.Message);
        }
    }
}

