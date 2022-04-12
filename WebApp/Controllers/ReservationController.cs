using Microsoft.AspNetCore.Mvc;
using WebApp.Common;
using WebApp.Models;
using WebApp.ViewModels;

namespace WebApp.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    public class ReservationController : ControllerBase
    {
        private readonly ILogger<ReservationController> _logger;

        public ReservationController(ILogger<ReservationController> logger)
        {
            _logger = logger;
        }

        [HttpPost]
        public async Task<IActionResult> CreateReservation([FromBody] CreateReservationRequestModel model)
        {
            if (!ModelState.IsValid)
            {
                return UnprocessableEntity(ModelState);
            }
            try
            {
                var result = new CreateReservationResponseModel();
                using (var _context = new OdeonHotelContext())
                {
                    var hotelDbModel = _context.HotelRooms.Where(o =>
                    o.Hotel.Id == model.HotelId &&
                    o.RoomType.Id == model.RoomTypeId
                    ).SingleOrDefault();
                    if (hotelDbModel == null) throw new Exception("Hotel not found");

                    var EmptyRoomInHotel = hotelDbModel.MaxAllotment - hotelDbModel.SoldAllotment;
                    if (EmptyRoomInHotel < model.RequestedRoomCount) throw new Exception("Hotel doesn't have enough empty room");

                    var newReservationModel = new Reservation
                    {
                        StartDate = model.BookingDateStart,
                        EndDate = model.BookingDateEnd,
                        RoomCount = model.RequestedRoomCount,
                        HotelRoomId = hotelDbModel.Id
                    };
                    _context.Add<Reservation>(newReservationModel);
                    await _context.SaveChangesAsync();

                    result.ReservationId = newReservationModel.Id;
                    result.Success = true;
                    result.Message = ResultMessage.Success;
                }

                //_logger.LogInformation(@"Count of valid datas {0}.", result.List.Count);
                return Ok(result);
            }
            catch (Exception e)
            {
                return new NotFoundObjectResult(new CreateReservationResponseModel
                {
                    Message = e.InnerException.Message,
                }); ;
            }
        }
        [HttpDelete]
        //•	ReservationId: Rezervasyon numarasý
        public IActionResult CancelReservation(int reservationId)
        {
            var result = new CancelReservationResponseModel();

            return Ok(result);
        }
    }
}