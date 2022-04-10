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
    }
    #endregion

    #region Response Models
    public class CreateReservationResponseModel
    {
        /*  •	ReservationId: Rezervasyon numarası
            •	Success: İşlemin başarılı olması durumunda true, başarısız olması durumunda false.
            •	Message: İşlemin sonucuna göre mesaj döndürmelidir.
        */
    }

    public class CancelReservationResponseModel
    {
        /*  •	Success: İşlemin başarılı olması durumunda true, başarısız olması durumunda false.
            •	Message: İşlemin sonucuna göre mesaj döndürmelidir.
        */
    }

    #endregion
}
