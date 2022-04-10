using Microsoft.EntityFrameworkCore;
using WebApp.Models;

namespace WebApp
{
    public class OdeonHotelContext: DbContext

    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=.\\SQLEXPRESS;Initial Catalog=OdeonHotel;Integrated Security=True; Min Pool Size=2; Max Pool Size=100;");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

           foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }

            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Reservation>()
            .HasOne(x => x.HotelRoom)
            .WithMany(x =>x.Reservations)
            .HasForeignKey(x => x.HotelRoomId);

            //modelBuilder.Entity<HotelRoom>().HasKey(x => new { x.HotelId, x.RoomTypeId });

            modelBuilder.Entity<HotelRoom>()
                 .HasOne(x => x.Hotel)
                 .WithMany(x => x.HotelRooms)
                 .HasForeignKey(x => x.HotelId);

            modelBuilder.Entity<HotelRoom>()
              .HasOne(x => x.RoomType)
              .WithMany(x => x.HotelRooms)
              .HasForeignKey(x => x.RoomTypeId);
        }

        public DbSet<Hotel> Hotels { get; set; }
        public DbSet<RoomType> RoomTypes { get; set; }
        public DbSet<HotelRoom> HotelRooms { get; set; }
        public DbSet<Reservation> Reservations { get; set; }
    }
}
