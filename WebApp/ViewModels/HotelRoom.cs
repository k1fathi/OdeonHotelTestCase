using System.ComponentModel.DataAnnotations;

namespace WebApp.ViewModels
{
    #region Request Models
    public class AdvancedRoomSearchRequestModel {
        public List<Guid> HotelIds { get; set; }
        public List<Guid> RoomTypeIds { get; set; }
    }

    public class RoomAvailabilityCheckRequestModel {

        /* •HotelIds: Bu parametrede istenilen oteller gönderilecektir. Birden fazla otel gönderilebilmelidir. Zorunlu alan değildir.
          •	RoomTypeIds: Bu parametrede istenilen oda tipleri gönderilecektir. Birden fazla oda tipi gönderilebilmelidir. Zorunlu alandır.
          •	RequestedRoomCount: İstenilen oda sayısı
      */
        public List<Guid> HotelIds { get; set; }
        public List<Guid> RoomTypeIds { get; set; }
        public int RequestedRoomCount { get; set; }
    }
    #endregion

    #region Request ModelsResponse Models
    public class GetCheapestRoomPricesResponseModel
    {
        /*  •	HotelId: İlgili otelin Id’si.
            •	HotelName: Otel adı.
            •	RoomTypeId: Oda tipinin Id’si.		
            •	RoomTypeName: Oda tipi adı.
            •	Price: Fiyat bilgisi (TL)
        */
        public Guid HotelId { get; set; } 
        public string HotelName { get; set; }
        public Guid RoomTypeId { get; set; }
        public string RoomTypeName { get; set; }
        public decimal Price { get; set; }
    }

    public class AdvancedRoomSearchsResponseModel: GetCheapestRoomPricesResponseModel
    {
        /*  •	HotelId: İlgili otelin Id’si.
            •	HotelName: Otel adı.
            •	RoomTypeId: Oda tipinin Id’si.		
            •	RoomTypeName: Oda tipi adı.
            •	Price: Fiyat bilgisi (TL)
        */

    }

    public class RoomAvailabilityCheckResponseModel 
    {
        /*  •	Available: Uygunluk var ise true, yok ise false olarak dönecektir.  */
        public Guid HotelId { get; set; }
        public string HotelName { get; set; }
        public Guid RoomTypeId { get; set; }
        public string RoomTypeName { get; set; }

        public bool IsAvailable { get; set; }
    }


    #endregion
}
