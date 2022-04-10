namespace WebApp.Models
{
    public class RoomType : ObservableEntity
    {
        public string RoomTypeName { get; set; }

        public virtual ICollection<HotelRoom> HotelRooms { get; set; } = new List<HotelRoom>();
    }
}
