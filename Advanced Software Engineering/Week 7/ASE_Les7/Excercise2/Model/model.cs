using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using ex2.Data;
namespace ex2.Models
{
    public class Destination
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(200)]
        public string Name { get; set; }

        public ICollection<Traveler> Travelers { get; set; }
    }
    public class Guide
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(200)]
        public string Name { get; set; }

        public ICollection<Tour> Tours { get; set; }
    }
    public class Passport
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(200)]
        public string PassportNumber { get; set; }
        public int TravelerId { get; set; }

        public Traveler Traveler { get; set; }
    }
    public class Tour
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(200)]
        public string Title { get; set; }

        public Guide Guide { get; set; }
    }
    public class Traveler
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(100)]
        public string FullName { get; set; }

        public Passport Passport { get; set; }

        public ICollection<Destination> Destinations { get; set; }
    }
}
