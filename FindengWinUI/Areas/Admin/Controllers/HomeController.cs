using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BLL.Abstract;
using DAL.Entity;
using FindengWinUI.Areas.Admin.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace FindengWinUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles ="Admin")]
    public class HomeController : Controller
    {
        
        private readonly UserManager<AppUser> userManager;
        private readonly SignInManager<AppUser> signInManager;
        private readonly IPostService postService;

        public HomeController(UserManager<AppUser> userManager, SignInManager<AppUser> signInManager)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.postService = postService;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(AdminAppUserVM appUserVM)
        {
            AppUser user = new AppUser()
            {
                UserName = appUserVM.UserName,
                Email = appUserVM.Email,
                FirstName = appUserVM.FirstName,
                LastName = appUserVM.LastName
            };
            var result = await userManager.CreateAsync(user, appUserVM.Password);
            if (result.Succeeded)
            {
                ViewBag.Success = "Kullanıcı oluşturuldu";
            }
            return View();
        }

       

        public async Task<IActionResult> LogOut()
        {
            await signInManager.SignOutAsync();
            return RedirectToAction("Login", "Home");
                
        }

      
    }
}
