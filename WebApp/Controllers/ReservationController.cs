using Microsoft.AspNetCore.Mvc;
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

        [HttpPost(Name = "CreateReservation")]
        public IActionResult CreateReservation([FromBody] CreateReservationRequestModel model)
        {
            var result = new CreateReservationResponseModel();
          
            return Ok(result);
        }

        [HttpDelete(Name = "CancelReservation")]
        //•	ReservationId: Rezervasyon numarasý
        public IActionResult CancelReservation(int reservationId)
        {
            var result = new CancelReservationResponseModel();

            return Ok(result);
        }
    }
}