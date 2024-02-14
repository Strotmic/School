// See https://aka.ms/new-console-template for more information
using System.Linq.Expressions;
using System.Text;
using device.Models;
using Microsoft.Azure.Devices.Client;
using Microsoft.Azure.Devices.Shared;
using Newtonsoft.Json;


var connectionString = "HostName=les7IotHub4.azure-devices.net;DeviceId=pcTim;SharedAccessKey=5wXhHIl2NErlrgL8qrFSxBOJzxkZmERi+AIoTFOZSEk=";

using var deviceClient = DeviceClient.CreateFromConnectionString(connectionString);


//// open connection explicitly
await deviceClient.OpenAsync();

await deviceClient.SetReceiveMessageHandlerAsync(ReceiveMessage, null);

async Task ReceiveMessage(Message message, object userContext)
{
    var messageData = Encoding.ASCII.GetString(message.GetBytes());
    Console.WriteLine("Received message: {0}", messageData);
    await deviceClient.CompleteAsync(message);
}

int threshold = 0;

async Task ForceDeviceTwinRetrieval(DeviceClient deviceClient)
{
    var twin = await deviceClient.GetTwinAsync();

    await OnDesiredPropertyChanged(twin.Properties.Desired, deviceClient);

    Console.WriteLine("The Devicetwin is forced retrieved");
}

var reportedProperties = new TwinCollection
{
    ["BootTime"] = DateTime.Now
};

await deviceClient.UpdateReportedPropertiesAsync(reportedProperties);

async Task OnDesiredPropertyChanged(TwinCollection desiredProperties, object userContext)
{
    Console.WriteLine("One or more device twin desired properties changed:");
    var data = JsonConvert.SerializeObject(desiredProperties);
    Console.WriteLine(data);
    threshold = desiredProperties["treshold"];
    Console.WriteLine(JsonConvert.SerializeObject(desiredProperties));

}


while (true)
{
    await SendMessage();
    Thread.Sleep(5000);
}


async Task SendMessage()
{
    await ForceDeviceTwinRetrieval(deviceClient);
    // await OnDesiredPropertyChanged(null, null);
    Console.WriteLine(threshold);
    SensorData sensorData = new()
    {
        Value = new Random().Next(0, 100)
    };

    Console.WriteLine($"Sending message: {sensorData.Value}");

    if (sensorData.Value > threshold)
    {

        var jsonData = JsonConvert.SerializeObject(sensorData);
        var bytes = Encoding.UTF8.GetBytes(jsonData);
        var message = new Message(bytes);

        // var message = new Message(Encoding.UTF8.GetBytes(jsonData));

        await deviceClient.SendEventAsync(message);

        Console.WriteLine("A single message is sent");

    }
}
