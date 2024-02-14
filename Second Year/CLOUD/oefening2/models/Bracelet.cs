using System;

namespace examen.oefening2.models;

public class Bracelet
{
    public string Id { get; set; }
    public string EventId { get; set; }
    public bool IsEntry { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    
    public int Age { get; set; }
    
    public string PhotoName { get; set; }
    
    public DateTime Timestamp { get; set; }
}