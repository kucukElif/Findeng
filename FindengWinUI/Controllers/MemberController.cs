using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DAL.Entity;
using FindengWinUI.Areas.Admin.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Mapster;
using FindengWinUI.Models.ViewModels;
using Microsoft.AspNetCore.Http;
using System.IO;
using BLL.Abstract;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting.Internal;
using Microsoft.AspNetCore.Mvc.Rendering;
using FindengWinUI.Enums;

namespace FindengWinUI.Controllers
{
    [Authorize/*(Roles = "Member,Admin")*/]

    public class MemberController : Controller
    {
        private readonly UserManager<AppUser> userManager;
        private readonly SignInManager<AppUser> signInManager;
        private readonly IAppUserCV appUserCVService;
        private readonly IHostingEnvironment hostingEnvironment;
        private readonly ICVFileService cVFileService;

        public MemberController(UserManager<AppUser> userManager, SignInManager<AppUser> signInManager, IAppUserCV appUserCVService, IHostingEnvironment hostingEnvironment, ICVFileService cVFileService)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.appUserCVService = appUserCVService;
            this.hostingEnvironment = hostingEnvironment;
            this.cVFileService = cVFileService;
        }
        public async Task<IActionResult> Index()
        {
            AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;
            AppUserMemberVM appUserVM = user.Adapt<AppUserMemberVM>();
            appUserVM.AppUser = await userManager.FindByIdAsync(user.Id.ToString());
            appUserVM.AppUserCVs = appUserCVService.GetActive();
            appUserVM.AppUserCV = appUserCVService.GetActiveCV();
            ViewBag.Gender = new SelectList(Enum.GetNames(typeof(Gender)));

            return View(appUserVM);
        }
        public IActionResult CV()
        {
            AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;

            return View(cVFileService.GetByUser(user.Id));
        }
        public async Task<IActionResult> AddCV(CVFile model, IFormFile cv)
        {
            AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;

            string path;
            if (cv != null)
            {
                path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\CVs\\", cv.FileName);
                using (var stream = new FileStream(path, FileMode.Create))
                {
                    await cv.CopyToAsync(stream);
                }

                model.cvFile = cv.FileName;



            }

            var iduser = await userManager.FindByIdAsync(user.Id.ToString());
            model.AppUser = iduser;
            model.AppUserId = iduser.Id;

            cVFileService.Add(model);
            return RedirectToAction("CV", "Member");


        }
        public async Task<IActionResult> DeleteCV(CVFile cvFile)
        {
            cVFileService.Remove(cvFile.ID);
            return RedirectToAction("CV", "Member");

        }

        public async Task<IActionResult> CreateProfile()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> CreateProfile(AppUserCV model, IFormFile image, AppUser appUser)
        {

            try
            {
                string path;
                if (image == null)
                {
                    path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images", "noimage.jpg");
                    model.ImagePath = "noimage.jpg";

                }
                else
                {
                    path = Path.GetFullPath("wwwroot\\images\\" + image.FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        await image.CopyToAsync(stream);
                    }
                    model.ImagePath = image.FileName;
                }

                var user = await userManager.FindByIdAsync(appUser.Id.ToString());
                var cv = appUserCVService.GetById(model.ID);
                model.AppUserId = user.Id;
                model.AppUser = user;

                appUserCVService.Add(model);

                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                return View(model);
            }
        }
        public async Task<IActionResult> EditProfile(Guid id)
        {
            AppUser user = await userManager.FindByIdAsync(id.ToString());

            AppUserCV appUserCV = appUserCVService.GetById(user.Id);

            return View(appUserCV);
        }
        [HttpPost]
        public async Task<IActionResult> EditProfile(AppUserCV model, IFormFile image)
        {

            try
            {
                string path;
                if (image == null)
                {
                    path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images", "noimage.jpg");
                    model.ImagePath = "noimage.jpg";
                }
                else
                {
                    path = Path.GetFullPath("wwwroot\\images\\" + image.FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        await image.CopyToAsync(stream);
                    }
                    model.ImagePath = image.FileName;

                }
                AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;

                var appUser = await userManager.FindByIdAsync(user.Id.ToString());
                var cv = appUserCVService.GetById(model.ID);
                cv.Department = model.Department;
                cv.ImagePath = model.ImagePath;
                cv.PhoneNumber = model.PhoneNumber;
                appUserCVService.Update(cv);

                return RedirectToAction("Index");

            }
            catch (Exception ex)
            {

                return View();
            }

        }

        public IActionResult PasswordChange()
        {
            return View();
        }


        [HttpPost]
        public async Task<IActionResult> PasswordChange(PasswordChangeVM passwordChangeVM)
        {
            AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;
            if (user != null)
            {
                if (passwordChangeVM.PasswordOld == passwordChangeVM.PasswordNew)
                {
                    ViewBag.Error = "Eski şifreniz ile yeni şifreniz aynı olamaz.";
                    return View();
                }
                else
                {
                    bool exist = userManager.CheckPasswordAsync(user, passwordChangeVM.PasswordOld).Result;
                    if (exist)
                    {
                        IdentityResult result = userManager.ChangePasswordAsync(user, passwordChangeVM.PasswordOld, passwordChangeVM.PasswordNew).Result;
                        if (result.Succeeded)
                        {
                            userManager.UpdateSecurityStampAsync(user);

                            signInManager.SignOutAsync();
                            signInManager.PasswordSignInAsync(user, passwordChangeVM.PasswordNew, true, false);

                            ViewBag.success = true;
                        }

                        else
                        {
                            foreach (var item in result.Errors)
                            {
                                ModelState.AddModelError("", item.Description);
                            }
                        }

                    }
                    else
                    {
                        ModelState.AddModelError("", "Eski şifreniz yanlış");
                    }
                }

            }
            return View(passwordChangeVM);
        }

        public IActionResult UserEdit()
        {
            AppUser user = userManager.FindByNameAsync(User.Identity.Name).Result;
            AppUserVM appUserVM = user.Adapt<AppUserVM>();

            ViewBag.Gender = new SelectList(Enum.GetNames(typeof(Gender)));
            return View(appUserVM);
        }
        [HttpPost]
        public async Task<IActionResult> UserEdit(AppUserVM appUserVM)
        {
            ModelState.Remove("Password");
            ModelState.Remove("RepeatPassword");
            ViewBag.Gender = new SelectList(Enum.GetNames(typeof(Gender)));

            if (ModelState.IsValid)
            {
               

                AppUser user = await userManager.FindByNameAsync(User.Identity.Name);
                string phone = userManager.GetPhoneNumberAsync(user).Result;
                if (phone!=appUserVM.PhoneNumber)
                {
                    if (userManager.Users.Any(u=>u.PhoneNumber==appUserVM.PhoneNumber))
                    {
                        ModelState.AddModelError("", "Bu telefon numarası başka bir üye tarafından kullanılmaktadır");
                        return View(appUserVM);
                    }
                }
                user.FirstName = appUserVM.FirstName;
                user.LastName = appUserVM.LastName;
                user.UserName = appUserVM.UserName;
                user.Email = appUserVM.Email;
                user.City = appUserVM.City;
                user.BirthDay = appUserVM.BirthDay;
                user.Gender = (int)appUserVM.Gender;
                user.PhoneNumber = appUserVM.PhoneNumber;
                IdentityResult result = await userManager.UpdateAsync(user);
                if (result.Succeeded)
                {
                    await userManager.UpdateSecurityStampAsync(user);
                    await signInManager.SignOutAsync();
                    await signInManager.SignInAsync(user, true);


                    ViewBag.success = "true";
                }
                else
                {
                    foreach (var item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);
                    }
                }


            }
            return View(appUserVM);

        }
    }
}
