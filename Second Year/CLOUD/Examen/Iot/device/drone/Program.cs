using System.Linq.Expressions;
using System.Text;
using Howest.models;
using Microsoft.Azure.Devices.Client;
using Microsoft.Azure.Devices.Shared;
using Newtonsoft.Json;

var connectionString = "HostName=iotexamen.azure-devices.net;DeviceId=test;SharedAccessKey=7I0sh8fnZIsQ/yq73cYCNKVSfVK3glJwvAIoTM2cjHM=";
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


async Task ForceDeviceTwinRetrieval(DeviceClient deviceClient)
{
    var twin = await deviceClient.GetTwinAsync();

    await OnDesiredPropertyChanged(twin.Properties.Desired, deviceClient);

    Console.WriteLine("The Devicetwin is forced retrieved");
}


var latitude = "";
var longitude = "0.0;";
var detect = "0;";

async Task OnDesiredPropertyChanged(TwinCollection desiredProperties, object userContext)
{
    Console.WriteLine("One or more device twin desired properties changed:");
    var data = JsonConvert.SerializeObject(desiredProperties);
    Console.WriteLine(data);
    // threshold = desiredProperties["treshold"];
    latitude = desiredProperties["lattitude"];
    longitude = desiredProperties["longitude"];
    detect = desiredProperties["detect"];
    Console.WriteLine(JsonConvert.SerializeObject(desiredProperties));

}

async Task SendMessage()
{
    await ForceDeviceTwinRetrieval(deviceClient);
    // await OnDesiredPropertyChanged(null, null);
    // Console.WriteLine(threshold);
    // SensorData sensorData = new()
    // {
    //     Value = new Random().Next(0, 100)
    // };

    Detect2 test = new()
    {
        id = "1",
        droneid = "test",
        target = "1",
        accuracy = "99",
        latitude = latitude,
        longitude = longitude,
        detectedObject = detect,
        isVerwerkt = "0",
        timestamp = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
    };

    test.id = new Guid().ToString();

    Console.WriteLine($"Sending message: {test.id} {test.droneid} {test.target} {test.accuracy} {test.latitude} {test.longitude} {test.detectedObject} {test.isVerwerkt} {test.timestamp}");



    var jsonData = JsonConvert.SerializeObject(test);
    var bytes = Encoding.UTF8.GetBytes(jsonData);
    var message = new Message(bytes);

    // var message = new Message(Encoding.UTF8.GetBytes(jsonData));

    await deviceClient.SendEventAsync(message);

    Console.WriteLine("A single message is sent");
}

while (true)
{
    //user input
    Console.WriteLine("Type 'send' to send a message or 'exit' to exit the application.");

    //read user input

    string input = Console.ReadLine();
    if (input == "send")
    {
        await SendMessage();
    }
    else
    if (input == "exit")
    {
        break;
    }
}