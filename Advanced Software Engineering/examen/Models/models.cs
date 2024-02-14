namespace Howest.models;
using Newtonsoft.Json;

public class Broadcast
{
    public int Id { get; set; }
    public string SerieName { get; set; }
    public int SerieId { get; set; }
    public Channel Channel { get; set; }
    public int ChannelId { get; set; }


}

public class Channel
{
    public int Id { get; set; }
    public string Name { get; set; }
    public bool IsChildFriendly { get; set; }
    public List<Broadcast> Broadcasts { get; set; }

}

public class HboMedia
{
    [JsonProperty("seriesId")]
    public int SerieId { get; set; }

    [JsonProperty("title")]
    public string Title { get; set; }

    [JsonProperty("type")]
    public string Type { get; set; }

    [JsonProperty("year")]
    public int Year { get; set; }

    [JsonProperty("rating")]
    public string Rating { get; set; }

    [JsonProperty("imdbScore")]
    public string ImdbScore { get; set; }

    [JsonProperty("rottenScore")]
    public string RottenScore { get; set; }

    [JsonProperty("decade")]
    public string Decade { get; set; }

    [JsonProperty("imdbBucket")]
    public string ImdbBucket { get; set; }

    [JsonProperty("genres_Action_Adventure")]
    public bool Genres_Action_Adventure { get; set; }

    [JsonProperty("genres_Animation")]
    public bool Genres_Animation { get; set; }

    [JsonProperty("genres_Biography")]
    public bool Genres_Biography { get; set; }

    [JsonProperty("genres_Children")]
    public bool Genres_Children { get; set; }

    [JsonProperty("genres_Comedy")]
    public bool Genres_Comedy { get; set; }

    [JsonProperty("genres_Crime")]
    public bool Genres_Crime { get; set; }

    [JsonProperty("genres_Cult")]
    public bool Genres_Cult { get; set; }

    [JsonProperty("genres_Documentary")]
    public bool Genres_Documentary { get; set; }

    [JsonProperty("genres_Drama")]
    public bool Genres_Drama { get; set; }

    [JsonProperty("genres_Family")]
    public bool Genres_Family { get; set; }

    [JsonProperty("genres_Fantasy")]
    public bool Genres_Fantasy { get; set; }

    [JsonProperty("genres_Food")]
    public bool Genres_Food { get; set; }

    [JsonProperty("genres_Game_Show")]
    public bool Genres_Game_Show { get; set; }

    [JsonProperty("genres_History")]
    public bool Genres_History { get; set; }

    [JsonProperty("genres_Horror")]
    public bool Genres_Horror { get; set; }

    [JsonProperty("genres_Independent")]
    public bool Genres_Independent { get; set; }

    [JsonProperty("genres_LGBTQ")]
    public bool Genres_LGBTQ { get; set; }

    [JsonProperty("genres_Musical")]
    public bool Genres_Musical { get; set; }

    [JsonProperty("genres_Mystery")]
    public bool Genres_Mystery { get; set; }

    [JsonProperty("genres_Reality")]
    public bool Genres_Reality { get; set; }

    [JsonProperty("genres_Romance")]
    public bool Genres_Romance { get; set; }

    [JsonProperty("genres_Science_Fiction")]
    public bool Genres_Science_Fiction { get; set; }

    [JsonProperty("genres_Sport")]
    public bool Genres_Sport { get; set; }

    [JsonProperty("genres_Stand_up_Talk")]
    public bool Genres_Stand_up_Talk { get; set; }

    [JsonProperty("genres_Thriller")]
    public bool Genres_Thriller { get; set; }

    [JsonProperty("genres_Travel")]
    public bool Genres_Travel { get; set; }

    [JsonProperty("platforms_Acorntv")]
    public bool Platforms_Acorntv { get; set; }

    [JsonProperty("platforms_Amazon_Prime")]
    public bool Platforms_Amazon_Prime { get; set; }

    [JsonProperty("platforms_Cinemax")]
    public bool Platforms_Cinemax { get; set; }

    [JsonProperty("platforms_Epix")]
    public bool Platforms_Epix { get; set; }

    [JsonProperty("platforms_Fandor")]
    public bool Platforms_Fandor { get; set; }

    [JsonProperty("platforms_Free")]
    public bool Platforms_Free { get; set; }

    [JsonProperty("platforms_Fubo_Tv")]
    public bool Platforms_Fubo_Tv { get; set; }

    [JsonProperty("platforms_Hbo")]
    public bool Platforms_Hbo { get; set; }

    [JsonProperty("platforms_Hbo_Max")]
    public bool Platforms_Hbo_Max { get; set; }

    [JsonProperty("platforms_Hoopla")]
    public bool Platforms_Hoopla { get; set; }

    [JsonProperty("platforms_Hulu_Plus")]
    public bool Platforms_Hulu_Plus { get; set; }

    [JsonProperty("platforms_Kanopy")]
    public bool Platforms_Kanopy { get; set; }

    [JsonProperty("platforms_Netflix")]
    public bool Platforms_Netflix { get; set; }

    [JsonProperty("platforms_Shoutfactorytv")]
    public bool Platforms_Shoutfactorytv { get; set; }

    [JsonProperty("platforms_Sundancenow")]
    public bool Platforms_Sundancenow { get; set; }

    [JsonProperty("platforms_Syfy_Tveverywhere")]
    public bool Platforms_Syfy_Tveverywhere { get; set; }

    [JsonProperty("platforms_Tlc_Go")]
    public bool Platforms_Tlc_Go { get; set; }

    [JsonProperty("platforms_Viceland_Tve")]
    public bool Platforms_Viceland_Tve { get; set; }
}