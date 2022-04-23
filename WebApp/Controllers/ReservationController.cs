using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System.Data.Entity;
using WebApp.Common;
using WebApp.Models;
using WebApp.ViewModels;

namespace WebApp.Controllers
{
    [ApiController]
    [Route("[controller]/[action]")]
    [SwaggerTag("Create, Cancel Reservation")]
    public class ReservationController : ControllerBase
    {
        private readonly ILogger<ReservationController> _logger;

        public ReservationController(ILogger<ReservationController> logger)
        {
            _logger = logger;
        }
        /// <summary>
        /// Create Reservation.
        /// </summary>
        /// <param> HotelId, RoomTypeId, RequestedRoomCount, BookingDateStart, BookingDateEnd</param>
        /// <returns> Create Reservation</returns>
        [HttpPost]
        [SwaggerResponse(400, "BadRequest Result", typeof(BaseResult))]
        [SwaggerResponse(201, "Created Result", typeof(Reservation))]
        public async Task<IActionResult> CreateReservation([FromBody, SwaggerRequestBody("The Reservation payload", Required = true)] CreateReservationRequestModel model)
        {
            if (!ModelState.IsValid)
            {
                throw new Exception(ModelState.ToString());
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

                    //Check empty room
                    var EmptyRoomInHotel = hotelDbModel.MaxAllotment - hotelDbModel.SoldAllotment;
                    if (EmptyRoomInHotel < model.RequestedRoomCount) throw new Exception($"Hotel doesn't have enough empty room. request room couldnt be more than {EmptyRoomInHotel}");

                    //Update SoldAllotment of hotel
                    hotelDbModel.SoldAllotment = hotelDbModel.SoldAllotment + model.RequestedRoomCount;

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
                    Message = e.Message,
                });
            }
        }
        /// <summary>
        /// Cancel Reservation.
        /// </summary>
        /// <param name="reservationId"></param>
        /// <returns></returns>
        [HttpDelete]
        [SwaggerResponse(400, "BadRequest Result", typeof(BaseResult))]
        [SwaggerResponse(200, "Successfull Result", typeof(CancelReservationResponseModel))]
        public async Task<IActionResult> CancelReservation(Guid reservationId)
        {
            var result = new CancelReservationResponseModel();
            if (!ModelState.IsValid)
            {
                throw new Exception(ModelState.ToString());
            }
            try
            {
                using (var _context = new OdeonHotelContext())
                {
                    var ResDbModel = _context.Reservations
                        .Where(o => o.Id == reservationId)
                        .Include(c => c.HotelRoom)
                        .SingleOrDefault();
                    if (ResDbModel == null) throw new Exception("Reservstion not found");

                    //Decrease hotel room SoldAllotment
                    var HotelRoomDbModel = _context.HotelRooms.SingleOrDefault(o => o.Id == ResDbModel.HotelRoomId);
                    if (ResDbModel == null) throw new Exception("Reservstion not found");

                    HotelRoomDbModel.UpdateDate = DateTime.Now;
                    HotelRoomDbModel.SoldAllotment -= ResDbModel.RoomCount;

                    _context.Remove(ResDbModel);
                    await _context.SaveChangesAsync();

                    result.Success = true;
                    result.Message = ResultMessage.Success;
                }
                return Ok(result);
            }
            catch (Exception e)
            {
                return new NotFoundObjectResult(new CreateReservationResponseModel
                {
                    Message = e.Message,
                });
            }
        }
    }
}