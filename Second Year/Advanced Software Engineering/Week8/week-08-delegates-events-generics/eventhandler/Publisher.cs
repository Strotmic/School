   public class Publisher
    {
        // Declare the event using EventHandler delegate
        public event EventHandler<CustomEventArgs> OnRaiseEvent;

        // Method to raise the event
        public void RaiseEvent()
        {
            // Check if there are any subscribers
            if (OnRaiseEvent != null)
            {
                Console.WriteLine("Event Raised.");
                OnRaiseEvent?.Invoke(this, new CustomEventArgs("Hello from Publisher!"));
            }
        }
    }