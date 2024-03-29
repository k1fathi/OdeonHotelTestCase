using Microsoft.AspNetCore.Mvc;
using WebApp.ViewModels;
using WebApp.Common;
using Swashbuckle.AspNetCore.Annotations;
using Microsoft.Extensions.Caching.Memory;

namespace WebApp.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    [Produces("application/json")]
    [SwaggerTag("Get CheapestRoomPrices, AdvancedRoomSearch, RoomAvailabilityCheck")]
    public class HotelRoomController : ControllerBase
    {
        private readonly ILogger<HotelRoomController> _logger;
        private readonly IMemoryCache _cheapestRoomPricesCache;
        public HotelRoomController(ILogger<HotelRoomController> logger, IMemoryCache cheapestRoomPricesCache)
        {
            _logger = logger;
            _cheapestRoomPricesCache = cheapestRoomPricesCache;
        }


        /// <summary>
        /// Get Cheapest Room Prices
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SwaggerResponse(200, "Get Cheapest Room Prices", typeof(ListResult<GetCheapestRoomPricesResponseModel>))]
        [SwaggerResponse(204, "Get Cheapest Room Prices", typeof(BaseResult))]
        //[ProducesDefaultResponseType(typeof(IEnumerable<GetCheapestRoomPricesResponseModel>))]
        public async Task<IActionResult> GetCheapestRoomPrices()
        {
            try
            {
                //Check cache before get data from DB
                _cheapestRoomPricesCache.TryGetValue($"GetCheapestRoomPrices{DateTime.Today}",out ListResult<GetCheapestRoomPricesResponseModel> result);
                //Check if cache is empty then get new values feom DB
                if (result == null)
                {
                    result = new ListResult<GetCheapestRoomPricesResponseModel>();

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
                        // Cahce exipre date depend on data type. hotel room fees don't chnage on day usually
                       
                    }
                    var cacheEntryOption = new MemoryCacheEntryOptions().SetSlidingExpiration(TimeSpan.FromDays(1));
                   _cheapestRoomPricesCache.Set($"GetCheapestRoomPrices{DateTime.Today}", result, cacheEntryOption);

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

        /// <summary>
        /// Advanced RoomS earch
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse(200, "Successfull Result", typeof(ListResult<AdvancedRoomSearchsResponseModel>))]
        [SwaggerResponse(204, "Not Content Result", typeof(BaseResult))]
        [SwaggerResponse(400, "BadRequest Result", typeof(BaseResult))]
        //[ProducesDefaultResponseType(typeof(IEnumerable<AdvancedRoomSearchsResponseModel>))]
        public async Task<IActionResult> AdvancedRoomSearch([FromBody] AdvancedRoomSearchRequestModel model)
        {
            if (!ModelState.IsValid)
            {
                throw new Exception(ModelState.ToString());
            }
            var result = new ListResult<AdvancedRoomSearchsResponseModel>();
            try
            {
                using (var _context = new OdeonHotelContext())
                {

                    result.List = _context.HotelRooms
                        .Where(o => model.HotelIds.Contains(o.HotelId) && model.RoomTypeIds.Contains(o.RoomTypeId))
                        .Select(o => new AdvancedRoomSearchsResponseModel
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

        /// <summary>
        /// Room Availability Check
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [SwaggerResponse(200, "Successfull Result", typeof(ListResult<RoomAvailabilityCheckResponseModel>))]
        [SwaggerResponse(204, "Not Content Result", typeof(BaseResult))]
        [SwaggerResponse(400, "BadRequest Result", typeof(BaseResult))]
        //[ProducesDefaultResponseType(typeof(IEnumerable<RoomAvailabilityCheckResponseModel>))]
        public async Task<IActionResult> RoomAvailabilityCheck([FromBody] RoomAvailabilityCheckRequestModel model)
        {
            if (!ModelState.IsValid)
            {
                throw new Exception(ModelState.ToString());
            }
            var result = new ListResult<RoomAvailabilityCheckResponseModel>();
            try
            {
                using (var _context = new OdeonHotelContext())
                {

                    result.List = _context.HotelRooms
                        .Where(o => model.HotelIds.Contains(o.HotelId) && model.RoomTypeIds.Contains(o.RoomTypeId))
                        .Select(o => new RoomAvailabilityCheckResponseModel
                        {
                            HotelId = o.Hotel.Id,
                            HotelName = o.Hotel.HotelName,
                            RoomTypeId = o.RoomType.Id,
                            RoomTypeName = o.RoomType.RoomTypeName,
                            IsAvailable = (o.MaxAllotment - o.SoldAllotment) > model.RequestedRoomCount ? true : false,
                        })
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
    }
}