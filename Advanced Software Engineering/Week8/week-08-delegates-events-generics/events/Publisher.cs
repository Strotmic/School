  public class Publisher
    {
        // Declare the event using Action delegate
        public event Action<string> OnRaiseEvent;

        // Method to raise the event
        public void RaiseEvent()
        {
            // Check if there are any subscribers
            if (OnRaiseEvent != null)
            {
                Console.WriteLine("Event Raised.");
                OnRaiseEvent?.Invoke("Hello from Publisher!");
            }
        }
    }