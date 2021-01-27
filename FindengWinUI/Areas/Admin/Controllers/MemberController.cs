using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DAL.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace FindengWinUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles ="Admin")]
    public class MemberController : Controller
    {
        private readonly UserManager<AppUser> userManager;

        public MemberController(UserManager<AppUser> userManager )
        {
            this.userManager = userManager;
        }
        public IActionResult Index()
        {
            return View(userManager.Users);
        }
        public IActionResult GetMemberByCity()
        {
            return View();
        }
        [HttpPost]
        public IActionResult GetMemberByCity(AppUser appUserCity)
        {
            if (ModelState.IsValid)
            {
                List<AppUser> city = userManager.Users.Where(x => x.City == appUserCity.City).ToList();
                if (city!=null )
                {
                    TempData["userCity"] = JsonConvert.SerializeObject(city);
                    return RedirectToAction("GetUsers");
                }
            }
            return View();
        }
        public IActionResult GetUsers()
        {
            ViewData["userCity"] = JsonConvert.DeserializeObject<List<AppUser>>((string)TempData["userCity"]);
            //var cityData = ViewData["userCity"] as AppUser;
            //appUser = ViewData["userCity"] as AppUser;
            return View(ViewData["userCity"]);

        }
    }
}
