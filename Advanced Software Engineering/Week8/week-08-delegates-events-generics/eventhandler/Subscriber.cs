public class Subscriber
    {
        public void Subscribe(Publisher publisher)
        {
            // Subscribe to the event
            publisher.OnRaiseEvent += HandleEvent;
        }

        // Method to handle the event
        private void HandleEvent(object sender, CustomEventArgs e)
        {
            Console.WriteLine($"Event received by Subscriber. Message: {e.Message}");
        }
    }
