using System.ComponentModel.DataAnnotations.Schema;
namespace WebApp.Models
{
    public class HotelRoom : ObservableEntity
    {
        public Guid HotelId { get; set; }
        [ForeignKey("HotelId")]
        public virtual Hotel Hotel { get; set; }

        public Guid RoomTypeId { get; set; }
        [ForeignKey("RoomTypeId")]
        public virtual RoomType RoomType { get; set; }

        public decimal Price { get; set; }
        public int MaxAllotment { get; set; } = 0; //Toplam satılabilir oda sayısı
        public int SoldAllotment { get; set; } = 0; //Satılan oda sayısı
    }
}
