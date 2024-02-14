// See https://aka.ms/new-console-template for more information
using Howest.MCT.Context;
Console.WriteLine("Hello, World!");
Service service = new Service();

while (true)
{
    // // Broadcast broadcast = new Broadcast();
    // // broadcast.SerieName = "Serie 69";
    // // broadcast.SerieId = 3;

    // Repository repository = new Repository();
    // List<HboMedia> hboMedia = await repository.GetById(1);

    // DBRepository dBRepository = new DBRepository(context);
    // try
    // {
    //     // await dBRepository.addBroadcast(broadcast, 2, false);

    //     string broadcasts = await dBRepository.ExportBroadcastsByChannelName("VRT");

    //     Console.WriteLine(broadcasts);
    // }


    // catch (Exception ex)
    // {
    //     Console.WriteLine(ex.Message);
    // }

    // // Console.WriteLine(channels);

    // foreach (HboMedia media in hboMedia)
    // {
    //     Console.WriteLine(media.Title);
    // }

    Console.WriteLine("1.Toon alle HBO series tussen twee door u gekozen jaren ?");
    Console.WriteLine("2.Toon alle HBO series die kindvriendelijk zijn (genres_Children = true) ?");
    Console.WriteLine("3.Voeg een broacast toe aan een channel");
    Console.WriteLine("4.Toon alle broadcasts van een channel");
    Console.WriteLine("5.Exporteer alle broadcasts van een channel naar een JSON bestand");
    Console.WriteLine("99.Exit");

    Console.WriteLine("Enter a number: ");

    string input = Console.ReadLine();

    switch (input)
    {
        case "1":
            string startYear = "";
            string endYear = "";
            try
            {

                Console.WriteLine("Enter a start year: ");
                startYear = Console.ReadLine();
                Console.WriteLine("Enter a end year: ");
                endYear = Console.ReadLine();
                Console.WriteLine($"You entered {startYear} and {endYear}");
            }
            catch
            {
                Console.WriteLine("Please enter a valid year");
            }
            List<HboMedia> x = await service.GetByYears(int.Parse(startYear), int.Parse(endYear));

            foreach (HboMedia media in x)
            {
                Console.WriteLine(media.Title);
            }


            break;
        case "2":
            List<HboMedia> y = await service.GetChildFriendly();

            foreach (HboMedia media in y)
            {
                Console.WriteLine(media.Title);
            }
            break;
        case "3":
            List<Channel> channels_ = await service.GetChannels();
            foreach (Channel channel in channels_)
            {
                Console.WriteLine($"{channel.Id} - {channel.Name})");
            }
            Console.WriteLine("Enter a channel id: ");
            string channelId = Console.ReadLine();

            List<HboMedia> hboMedia = await service.GetHboMedia();

            foreach (HboMedia media in hboMedia)
            {
                Console.WriteLine($"{media.SerieId} - {media.Title})");
            }

            try
            {

                Console.WriteLine("broadcast toevoegen:");
                Console.WriteLine("Enter a serie name: ");
                string serieName = Console.ReadLine();
                Console.WriteLine("Enter a serie id: ");
                string serieId = Console.ReadLine();


                Broadcast broadcast = new Broadcast();
                broadcast.SerieName = serieName;
                broadcast.SerieId = int.Parse(serieId);


                Broadcast broadcastAdded = await service.addBroadcast(broadcast, int.Parse(channelId));

                Console.WriteLine($"broadcast toegevoegd: {broadcastAdded.SerieName} - {broadcastAdded.SerieId} - {broadcastAdded.ChannelId}");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Foute input");
            }

            break;
        case "4":
            Console.WriteLine("Enter a channel name: ");
            string channelName = Console.ReadLine();

            List<Broadcast> broadcasts = await service.GetBroadcastsByChannelName(channelName);

            foreach (Broadcast broadcast in broadcasts)
            {
                Console.WriteLine($"{broadcast.SerieName} - {broadcast.SerieId} - {broadcast.ChannelId}");
            }

            break;
        case "5":
            try
            {
                Console.WriteLine("Wegschrijven naar JSON bestand: ");
                Console.WriteLine("Enter a channel name: ");
                string channelName_ = Console.ReadLine();

                service.ExportBroadcastsByChannelName(channelName_);
                
            }
            catch (Exception ex)
            {
                Console.WriteLine("Incrrecte Naam");
            }


            break;
        case "99":
            Console.WriteLine("You entered 7");
            return;
    }
}