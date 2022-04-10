namespace WebApp.ViewModels
{
    #region Request Models
    public class AdvancedRoomSearchRequestModel { }

    public class RoomAvailabilityCheckRequestModel {

        /*  •	HotelIds: Bu parametrede istenilen oteller gönderilecektir. Birden fazla otel gönderilebilmelidir. Zorunlu alan değildir.
            •	RoomTypeIds: Bu parametrede istenilen oda tipleri gönderilecektir. Birden fazla oda tipi gönderilebilmelidir. Zorunlu alandır.
            •	RequestedRoomCount: İstenilen oda sayısı

        */
    }
    #endregion

    #region Request ModelsResponse Models
    public class GetCheapestRoomPricesResult
    {
        /*  •	HotelId: İlgili otelin Id’si.
            •	HotelName: Otel adı.
            •	RoomTypeId: Oda tipinin Id’si.		
            •	RoomTypeName: Oda tipi adı.
            •	Price: Fiyat bilgisi (TL)
        */
    }

    public class AdvancedRoomSearchsResult
    {
        /*  •	HotelId: İlgili otelin Id’si.
            •	HotelName: Otel adı.
            •	RoomTypeId: Oda tipinin Id’si.		
            •	RoomTypeName: Oda tipi adı.
            •	Price: Fiyat bilgisi (TL)
        */
    }


    #endregion
}
