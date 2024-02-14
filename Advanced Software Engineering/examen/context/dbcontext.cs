using Microsoft.EntityFrameworkCore;
using Howest.models;

namespace Howest.MCT.Context;
public class AplicationDbContext : DbContext
{

    public DbSet<Broadcast> Broadcasts { get; set; }

    public DbSet<Channel> Channels { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseMySQL("server=localhost;user=root;password=root;database=examen_db;");
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Channel>().HasMany(b => b.Broadcasts).WithOne(c => c.Channel).HasForeignKey(c => c.ChannelId);

        modelBuilder.Entity<Channel>().HasData(
            new Channel { Id = 1, Name = "VRT", IsChildFriendly = false },
            new Channel { Id = 2, Name = "Ketnet", IsChildFriendly = true }
        );

        modelBuilder.Entity<Broadcast>().HasData(
            new Broadcast { Id = 1, SerieName = "Serie 1", SerieId = 1, ChannelId = 1 },
            new Broadcast { Id = 2, SerieName = "Serie 2", SerieId = 2, ChannelId = 2 }
        );

        //         modelBuilder.Entity<Guide>().HasData(
        //     new Guide { Id = 1, Name = "Sybrin Pypaert" },
        //     new Guide { Id = 2, Name = "Yoran Pypaert" }
        // );

        // modelBuilder.Entity<Guide>()
        //          .HasMany(t => t.Tours)
        //          .WithOne(g => g.Guide)
        //          .HasForeignKey(t => t.GuideId);

    }
}