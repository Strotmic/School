using System;
using Newtonsoft.Json;

namespace device.Models;

public class SensorData
{
    [JsonProperty("id")]
    public string id { get; set; }

    [JsonProperty("value")]
    public int Value { get; set; }

    [JsonProperty("device")]
    public string device { get; set; }

    public override string ToString()
    {
        return $"DeviceId: {device}, Value: {Value}, Device: {id}";
    }
}
