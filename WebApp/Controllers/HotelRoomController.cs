using Microsoft.AspNetCore.Mvc;
using WebApp.ViewModels;

namespace WebApp.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HotelRoomController : ControllerBase
    {
        private readonly ILogger<HotelRoomController> _logger;

        public HotelRoomController(ILogger<HotelRoomController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IActionResult GetCheapestRoomPrices()
        {
            var result = new GetCheapestRoomPricesResult();
            /*
             * HotelId: �lgili otelin Id�si.
             * HotelName: Otel ad�.
             * RoomTypeId: Oda tipinin Id�si.
             * RoomTypeName: Oda tipi ad�.
             * Price: Fiyat bilgisi(TL). */

            return Ok(result);
        }

        [HttpGet]
        public IActionResult AdvancedRoomSearch([FromQuery] AdvancedRoomSearchRequestModel model)
        {
            var result = new GetCheapestRoomPricesResult();
            /*
             * HotelId: �lgili otelin Id�si.
             * HotelName: Otel ad�.
             * RoomTypeId: Oda tipinin Id�si.
             * RoomTypeName: Oda tipi ad�.
             * Price: Fiyat bilgisi(TL). */

            return Ok(result);
        }

        [HttpGet]
        public IActionResult RoomAvailabilityCheck([FromQuery] RoomAvailabilityCheckRequestModel model)
        {
            var result = false;
            /*
             * HotelId: �lgili otelin Id�si.
             * HotelName: Otel ad�.
             * RoomTypeId: Oda tipinin Id�si.
             * RoomTypeName: Oda tipi ad�.
             * Price: Fiyat bilgisi(TL). */

            return Ok(result);
        }
    }
}