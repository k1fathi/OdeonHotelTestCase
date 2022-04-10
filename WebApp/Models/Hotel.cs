namespace WebApp.Models
{
    public class Hotel : ObservableEntity
    {
        public string HotelName { get; set; }

        public virtual ICollection<HotelRoom> HotelRooms { get; set; } = new List<HotelRoom>();
    }
}
