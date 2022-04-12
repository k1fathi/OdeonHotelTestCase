using System.ComponentModel.DataAnnotations;

namespace WebApp.ViewModels
{
    #region Request Models
    public class CreateReservationRequestModel
    {

        /*  •	HotelId: İlgili otelin Id’si.
            •	RoomTypeId: Oda tipinin Id’si.
            •	RequestedRoomCount: Satın alınmak istenen oda sayısı.
            •	BookingDateStart: Rezervasyon başlangıç tarihi.
            •	BookingDateEnd: Rezervasyon bitiş tarihi.
        */
        [Required]
        public Guid HotelId { get; set; }
        [Required]
        public Guid RoomTypeId { get; set; }
        public int RequestedRoomCount { get; set; }
        public DateTime BookingDateStart { get; set; }
        public DateTime BookingDateEnd { get; set; }

    }
    #endregion

    #region Response Models
    public class CreateReservationResponseModel
    {
        /*  •	ReservationId: Rezervasyon numarası
            •	Success: İşlemin başarılı olması durumunda true, başarısız olması durumunda false.
            •	Message: İşlemin sonucuna göre mesaj döndürmelidir.
        */
        public Guid? ReservationId { get; set; } = null;
        public bool Success { get; set; } = false;
        public string Message { get; set; } = string.Empty;
    }

    public class CancelReservationResponseModel
    {
        /*  •	Success: İşlemin başarılı olması durumunda true, başarısız olması durumunda false.
            •	Message: İşlemin sonucuna göre mesaj döndürmelidir.
        */
    }

    #endregion
}
