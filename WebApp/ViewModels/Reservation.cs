using Swashbuckle.AspNetCore.Annotations;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace WebApp.ViewModels
{
    #region Request Models
    [SwaggerSchema(Required = new[] { "Create Reservation RequestModel" })]
    public class CreateReservationRequestModel
    {

        /*  •	HotelId: İlgili otelin Id’si.
            •	RoomTypeId: Oda tipinin Id’si.
            •	RequestedRoomCount: Satın alınmak istenen oda sayısı.
            •	BookingDateStart: Rezervasyon başlangıç tarihi.
            •	BookingDateEnd: Rezervasyon bitiş tarihi.
        */
        /// <summary>
        /// HotelId
        /// </summary>
        [Required]
        [SwaggerSchema("The Hotel identifier",Format = "Guid")]
        public Guid HotelId { get; set; }
        /// <summary>
        /// RoomTypeId
        /// </summary>
        [Required]
        public Guid RoomTypeId { get; set; }
        /// <summary>
        /// RequestedRoomCount
        /// </summary>
        public int RequestedRoomCount { get; set; }
        /// <summary>
        /// BookingDateStart
        /// </summary>
        public DateTime BookingDateStart { get; set; }
        /// <summary>
        /// BookingDateEnd
        /// </summary>
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
        [DefaultValue(null)]
        public Guid? ReservationId { get; set; }
        [DefaultValue(false)]
        public bool Success { get; set; }

        public string Message { get; set; } = string.Empty;
    }

    public class CancelReservationResponseModel
    {
        /*  •	Success: İşlemin başarılı olması durumunda true, başarısız olması durumunda false.
            •	Message: İşlemin sonucuna göre mesaj döndürmelidir.
        */
        [DefaultValue(false)]
        public bool Success { get; set; }
        public string Message { get; set; } = string.Empty;
    }

    #endregion
}
