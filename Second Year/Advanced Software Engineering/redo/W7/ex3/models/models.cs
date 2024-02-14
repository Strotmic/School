using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace redo.w7.ex3.models;

public class Destination
{
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Name { get; set; }

    public ICollection<Traveler> Travelers { get; set; }
}

public class Guide
{
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Name { get; set; }

    public ICollection<Tour> Tours { get; set; }
}

public class Passport
{
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string PassportNumber { get; set; }

    public int TravelerId { get; set; } // Add this line

    public Traveler Traveler { get; set; }
}

public class Tour
{
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Title { get; set; }

    public Guide Guide { get; set; }
}

public class Traveler
{
    public int Id { get; set; }

    [Required]
    [MaxLength(100)]
    public string FullName { get; set; }

    public Passport Passport { get; set; }

    public ICollection<Destination> Destinations { get; set; }
}