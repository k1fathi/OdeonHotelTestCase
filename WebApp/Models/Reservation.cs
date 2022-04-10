using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class Reservation :ObservableEntity
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int RoomCount { get; set; }

        public Guid HotelRoomId { get; set; }
        [ForeignKey("HotelRoomId")]
        public virtual HotelRoom HotelRoom { get; set; }

    }
}
