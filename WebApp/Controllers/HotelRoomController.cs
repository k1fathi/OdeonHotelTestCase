using Microsoft.AspNetCore.Mvc;
using WebApp.ViewModels;
using WebApp.Common;

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
        public async Task<IActionResult> GetCheapestRoomPrices()
        {
            var result = new ListResult<GetCheapestRoomPricesResponseModel>();
            try
            {
                using (var _context = new OdeonHotelContext())
                {

                    result.List = _context.HotelRooms
                        .Select(o => new GetCheapestRoomPricesResponseModel
                        {
                            HotelId = o.Hotel.Id,
                            HotelName = o.Hotel.HotelName,
                            RoomTypeId = o.RoomType.Id,
                            RoomTypeName = o.RoomType.RoomTypeName,
                            Price = o.Price
                        })
                        .OrderBy(o => o.Price)
                        .ThenBy(n => n.RoomTypeName)
                        .ToList();

                    //_logger.LogInformation(@"Count of valid datas {0}.", result.List.Count);
                }
                result.IsCompleted = true;
                result.ResultMessage = ResultMessage.Success;
                return Ok(result);

            }
            catch (Exception e)
            {

                return new NotFoundObjectResult(new BaseResult
                {
                    ResultMessage = e.Message,
                    IsCompleted = false
                });
            }

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