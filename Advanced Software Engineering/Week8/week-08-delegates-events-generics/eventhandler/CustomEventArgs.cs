public class CustomEventArgs : EventArgs
{
    public string Message { get; set; }

    public CustomEventArgs(string message)
    {
        Message = message;
    }
}