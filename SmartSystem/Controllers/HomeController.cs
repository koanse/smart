using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}

		// POST: /Manage/AddPhoneNumber
		[HttpPost]
		[ValidateAntiForgeryToken]
		public async Task<ActionResult> AddPhoneNumber(AddPhoneNumberViewModel model)
		{
			if (!ModelState.IsValid)
			{
				//return View(model);
			}
			// Generate the token and send it
			//var code = await UserManager.GenerateChangePhoneNumberTokenAsync(User.Identity.GetUserId(), model.Number);
			//if (UserManager.SmsService != null)
			//{
			//	var message = new IdentityMessage
			//	{
			//		Destination = model.Number,
			//		Body = "Your security code is: " + code
			//	};
			//	await UserManager.SmsService.SendAsync(message);
			//}
			return RedirectToAction("AddPhoneNumber", new { PhoneNumber = model.Number });
		}

	}
}