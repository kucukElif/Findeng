using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using BLL.Abstract;
using DAL.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace FindengWinUI.Controllers
{
    public class HomeController : Controller
    {
        private readonly IPostService postService;
        private readonly UserManager<AppUser> userManager;
        private readonly SignInManager<AppUser> signInManager;

        public HomeController(IPostService postService, UserManager<AppUser> userManager, SignInManager<AppUser> signInManager)
        {
            this.postService = postService;
            this.userManager = userManager;
            this.signInManager = signInManager;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Blog()
        {
            var posts = postService.GetActive();
            return View(posts);
        }
        public IActionResult FullPost(Guid id)
        {
            return View(postService.GetByID(id));

        }
        [Authorize(Policy = "AnkaraPolicy")]
        public IActionResult AnkaraPage()
        {
            return View();
        }
        [Authorize(Policy = "ViolancePolicy")]
        public IActionResult ViolancePage()
        {
            return View();
        }

        public async Task<IActionResult> ExchangeRedirect()
        {
            bool result = User.HasClaim(x => x.Type == "ExpireDateExchange");
            if (!result)
            {
                Claim ExpireDateExchange = new Claim("ExpireDateExchange", DateTime.Now.AddDays(30).Date.ToShortDateString(), ClaimValueTypes.String, "Internal");
                await userManager.AddClaimAsync(userManager.FindByNameAsync(User.Identity.Name).Result, ExpireDateExchange);
                await signInManager.SignOutAsync();
                await signInManager.SignInAsync(userManager.FindByNameAsync(User.Identity.Name).Result, true);
            }


            return RedirectToAction("Exchange");
        }

        [Authorize(Policy ="ExchangePolicy")]
        public IActionResult Exchange()
        {
            return View();
        }
    }
}
