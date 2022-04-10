using Microsoft.AspNetCore.Mvc;
using WebApp.ViewModels;

namespace WebApp.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
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
            var result = new GetCheapestRoomPricesResponseModel();
            
            return Ok(result);
        }

        [HttpGet]
        public IActionResult AdvancedRoomSearch([FromQuery] AdvancedRoomSearchRequestModel model)
        {
            var result = new AdvancedRoomSearchsResponseModel();

            return Ok(result);
        }

        [HttpGet]
        public IActionResult RoomAvailabilityCheck([FromQuery] RoomAvailabilityCheckRequestModel model)
        {
            var result = false;

            return Ok(result);
        }
    }
}