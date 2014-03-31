using System.Web.Mvc;

namespace SignalRSample.Controllers
{
    public class ChatController : Controller
    {
        public ViewResult Index()
        {
            return View(new {Title = "Chat Page"});
        }

        [HttpPost]
        public JsonResult PostMessage(string Message)
        {
            Response.StatusCode = 200;
            return Json(new {Message = "Suceess"});
        }
    }
}