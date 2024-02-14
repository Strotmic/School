using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql;
using ex2.Models;
namespace ex2.Data
{
    public class TravelDbContext : DbContext
    {
        public DbSet<Destination> Destinations { get; set; }
        public DbSet<Guide> Guides { get; set; }
        public DbSet<Passport> Passports { get; set; }
        public DbSet<Tour> Tours { get; set; }
        public DbSet<Traveler> Travelers { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySql(@"Server=localhost;Port=3306;Database=aseweek7;User=root;Password=root;", new MySqlServerVersion(new Version(8, 0, 21)));
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Traveler>()
                .HasOne(t => t.Passport)
                .WithOne(p => p.Traveler)
                .HasForeignKey<Passport>(p => p.TravelerId);
        }
    }
}