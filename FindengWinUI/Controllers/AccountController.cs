using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Amazon.Runtime.Internal.Util;
using DAL.Entity;
using DAL.Entity.Base;
using FindengWinUI.Enums;
using FindengWinUI.Models.ViewModels;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using Microsoft.VisualStudio.Web.CodeGeneration.Contracts.Messaging;

namespace FindengWinUI.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<AppUser> userManager;
        private readonly SignInManager<AppUser> signInManager;
        private readonly ILogger<AccountController> logger;

        public AccountController(UserManager<AppUser> userManager, SignInManager<AppUser> signInManager, ILogger<AccountController> logger)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.logger = logger;
        }
        public IActionResult Create()
        {
            ViewBag.Gender = new SelectList(Enum.GetNames(typeof(Gender)));

            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(AppUserVM appUserVM)
        {

            if (ModelState.IsValid)
            {

                if (userManager.Users.Any(u=>u.PhoneNumber==appUserVM.PhoneNumber))
                {
                    ModelState.AddModelError("", "Bu telefon numarası başka bir üye tarafından kullanılmaktadır");
                    return View(appUserVM);
                }
                //string uniqueFileName = null;
                //if (appUserVM.cvFile !=null)
                //{

                //    string uploadsFile = Path.Combine(hostingEnvironment.WebRootPath, "CVs");
                //    uniqueFileName = Guid.NewGuid().ToString() + "_" + appUserVM.cvFile.FileName;
                //    string filePath = Path.Combine(uploadsFile, uniqueFileName);
                //    appUserVM.cvFile.CopyTo(new FileStream(filePath, FileMode.Create));
                //}

                AppUser user = new AppUser()
                {
                    UserName = appUserVM.UserName,
                    FirstName = appUserVM.FirstName,
                    LastName = appUserVM.LastName,
                    Email = appUserVM.Email,
                    Gender = Convert.ToInt32(appUserVM.Gender),
                    City = appUserVM.City,
                    BirthDay = appUserVM.BirthDay,
                    PhoneNumber=appUserVM.PhoneNumber
                    //cvFile=uniqueFileName
                };
                IdentityResult result = await userManager.CreateAsync(user, appUserVM.Password);
                if (result.Succeeded)
                {
                    string confirmationToken = await userManager.GenerateEmailConfirmationTokenAsync(user);
                    string link = Url.Action("EmailConfirmation", "Account", new
                    {
                        userId = user.Id,
                        token = confirmationToken
                    }, protocol: HttpContext.Request.Scheme);
                    Helper.EmailConfirmation.SendEmail(link, user.Email);
                    return View("Login");
                }
                else
                {
                    foreach (IdentityError item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);

                    }
                }

            }

            return View(appUserVM);
        }
        public IActionResult Error()
        {
            return View();
        }
        public async Task<IActionResult> ConfirmEmail(string userId, string token)
        {
            if (userId == null || token == null)
            {
                return RedirectToAction("Index", "Home");

            }
            var user = await userManager.FindByIdAsync(userId);
            if (user == null)
            {
                ViewBag.ErrorMessage = $"Kullanıcı bulunamadı";
                return View("NotFound");
            }
            var result = await userManager.ConfirmEmailAsync(user, token);
            if (result.Succeeded)
            {
                return View();
            }
            ViewBag.ErrorTitle = "E-posta onaylanamadı.";
            return View("EmailConfirmError");
        }
        public IActionResult EmailComfirmError()
        {
            return View();
        }



        public IActionResult Login(string ReturnUrl)
        {
            TempData["ReturnUrl"] = ReturnUrl;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(AppUserLoginVM loginVM)
        {
            if (ModelState.IsValid)
            {
                AppUser user = await userManager.FindByEmailAsync(loginVM.Email);
                if (user != null)
                {

                    if (await userManager.IsLockedOutAsync(user))
                    {
                        ModelState.AddModelError("", "Hesabınız bir süreliğine kilitlenmiştir. Lütfen daha sonra tekrar giriş yapmayı deneyiniz.");
                        return View(loginVM);
                    }
                    if (userManager.IsEmailConfirmedAsync(user).Result == false)
                    {
                        ModelState.AddModelError("", "Email adresiniz onaylanmamıştır. Lütfen e-postanızı kontrol ediniz");
                        return View(loginVM);
                    }
                    await signInManager.SignOutAsync();
                    Microsoft.AspNetCore.Identity.SignInResult result = await signInManager.PasswordSignInAsync(user, loginVM.Password, loginVM.RememberMe, false);



                    if (result.Succeeded)
                    {
                        await userManager.ResetAccessFailedCountAsync(user);
                        if (TempData["ReturnUrl"] != null)
                        {
                            return Redirect(TempData["ReturnUrl"].ToString());

                        }
                        return Redirect("/Home/Index");
                    }
                    else
                    {
                        await userManager.AccessFailedAsync(user);




                        int fail = await userManager.GetAccessFailedCountAsync(user);
                        ModelState.AddModelError("", $"En fazla 3 deneme hakkınız var. {fail} kez başarısız giriş");
                        if (fail == 3)
                        {
                            await userManager.SetLockoutEndDateAsync(user, new System.DateTimeOffset(DateTime.Now.AddMinutes(20)));
                            ModelState.AddModelError(string.Empty, "Hesabınız 3 başarısız girişten dolayı 20 dakika kilitlenmiştir. Lütfen 20 dakika sonra tekrar deneyiniz.");
                        }
                        else
                        {
                            ModelState.AddModelError(string.Empty, "E-posta adresiniz veya şifreniz yanlış.");


                        }
                    }

                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Bu e-posta adresine kayıtlı kullanıcı bulunamamıştır.");

                }

            }
            return View(loginVM);
        }



        public IActionResult LogOut()
        {
            signInManager.SignOutAsync();
            return RedirectToAction("Index", "Home");
        }


        public IActionResult ForgotPassword()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> ForgotPassword(ForgotPasswordVM model)
        {
            if (ModelState.IsValid)
            {
                AppUser user = await userManager.FindByEmailAsync(model.Email);
                if (user != null)
                {
                    try
                    {
                        var token = await userManager.GeneratePasswordResetTokenAsync(user);
                        var passwordResetLink = Url.Action("ResetPasswordConfirmation", "Account", new
                        {
                            userID = user.Id,
                            token = token
                        }, HttpContext.Request.Scheme);

                        Helper.PasswordReset.PasswordResetSendEmail(passwordResetLink,/*model*/user.Email);
                        ViewBag.Status = "Success";

                    }
                    catch (Exception ex)
                    {
                        ViewBag.Error = "E-posta Gönderilirken Bir Hata Oluştu!";
                        return View();
                    }


                }
                else
                {
                    ModelState.AddModelError("", "Sistemde kayıtlı e-posta adresi bulunamamıştır.");
                }
            }


            return View(model);
        }

        public IActionResult ForgotPasswordConfirmation()
        {
            return View();
        }


        public IActionResult ResetPasswordConfirmation(string userID, string token)
        {
            TempData["userID"] = userID;
            TempData["token"] = token;
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> ResetPasswordConfirmation(ResetPasswordVM forgotPasswordVM)
        {
            string token = TempData["token"].ToString();
            string userID = TempData["userID"].ToString();
            AppUser user = await userManager.FindByIdAsync(userID);
            if (user != null)
            {

                IdentityResult result = await userManager.ResetPasswordAsync(user, token, forgotPasswordVM.Password);
                if (result.Succeeded)
                {
                    await userManager.UpdateSecurityStampAsync(user);
                    return Redirect("ForgotPasswordConfirmation");

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
                ModelState.AddModelError("", "Bir hata meydana gelmiştir. Lütfen daha sonra tekrar deneyiniz");
            }
            return View();
        }


        public IActionResult SignIn()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> SignIn(AppUserLoginVM appUserLoginVM)
        {
            if (ModelState.IsValid)
            {
                AppUser user = await userManager.FindByEmailAsync(appUserLoginVM.Email);
                if (user != null)
                {
                    await signInManager.SignOutAsync();
                    var result = await signInManager.PasswordSignInAsync(user, appUserLoginVM.Password, false, false);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Create", "Home", new { area = "admin" });


                    }


                }
            }

            ModelState.AddModelError(string.Empty, "E-posta adresiniz veya şifreniz yanlış.");
            return View();

        }
        public IActionResult AccessDenied(string ReturnUrl)
        {
            if (ReturnUrl.Contains("ViolancePage"))
            {
                ViewBag.message = "Erişmeye çalıştığınız sayfa şiddet videoları içerdiği için 15 yaşından büyük olmanız gerekmektedir";
            }
            else if (ReturnUrl.Contains("AnkaraPage"))
            {
                ViewBag.message = "Bu sayfaya sadece şehir alanı Ankara olan kullanıcılar erişebilir";
            }
            else if (ReturnUrl.Contains("Exchange"))
            {
                ViewBag.message = "30 günlük deneme süreniz dolmuştur.";
            }
            else
            {
                ViewBag.message = "Bu sayfayı görüntülemek için yetkiniz bulunmamaktadır.";
            }
            return View();
        }



        public async Task<IActionResult> EmailConfirmation(string userId, string token)
        {
            var user = await userManager.FindByIdAsync(userId);
            IdentityResult result = await userManager.ConfirmEmailAsync(user, token);
            if (result.Succeeded)
            {
                ViewBag.status = "Email adresiniz onaylanmıştır. Login ekranından giriş yapabilirsiniz";
            }
            else
            {
                ViewBag.status = "Bir hata meydana geldi lütfen daha sonra deneyiniz.";
            }
            return View();
        }



        public IActionResult FacebookLogin(string ReturnUrl)
        {
            string RedirectUrl = Url.Action("ExternalResponse", "Account", new { ReturnUrl = ReturnUrl });
            var properties = signInManager.ConfigureExternalAuthenticationProperties("Facebook", RedirectUrl);
            return new ChallengeResult("Facebook", properties);

        }
        public IActionResult GoogleLogin(string ReturnUrl)
        {
            string RedirectUrl = Url.Action("ExternalResponse", "Account", new { ReturnUrl = ReturnUrl });
            var properties = signInManager.ConfigureExternalAuthenticationProperties("Google", RedirectUrl);
            return new ChallengeResult("Google", properties);

        }

        public async Task<IActionResult> ExternalResponse(string ReturnUrl="/Home/Index")
        {
            ExternalLoginInfo info = await signInManager.GetExternalLoginInfoAsync();
            if (info==null)
            {
                return RedirectToAction("Login","Account");
            }
            else
            {
             Microsoft.AspNetCore.Identity.SignInResult result =   await signInManager.ExternalLoginSignInAsync(info.LoginProvider, info.ProviderKey,true);

                if (result.Succeeded)
                {
                    return Redirect(ReturnUrl);
                }
                else
                {
                    AppUser user = new AppUser();
                    var claimEmail = info.Principal.FindFirst(ClaimTypes.Email);
                    var email = (claimEmail == null ? string.Empty : claimEmail.Value);
                    user.Email = email;
                    //user.Email = info.Principal.FindFirst(ClaimTypes.Email).Value;
                    string ExternalUserId = info.Principal.FindFirst(ClaimTypes.NameIdentifier).Value;
                    if (info.Principal.HasClaim(x=>x.Type==ClaimTypes.Name))
                    {
                        string userName = info.Principal.FindFirst(ClaimTypes.Name).Value;
                        userName = userName.Replace(' ', '-').ToLower() + ExternalUserId.Substring(0, 5).ToString();
                        user.UserName = userName;
                    }
                    else
                    {
                        user.UserName = info.Principal.FindFirst(ClaimTypes.Email).Value;

                    }
                    IdentityResult createResult = await userManager.CreateAsync(user);
                    if (createResult.Succeeded)
                    {

                    IdentityResult loginResult =   await userManager.AddLoginAsync(user, info);
                        if (loginResult.Succeeded)
                        {
                            //await signInManager.SignInAsync(user, true);
                            await signInManager.ExternalLoginSignInAsync(info.LoginProvider, info.ProviderKey, true);
                            return Redirect(ReturnUrl);

                        }
                        else
                        {
                            foreach (IdentityError item in loginResult.Errors)
                            {
                                ModelState.AddModelError("", item.Description);

                            }

                        }

                    }
                    else
                    {
                        foreach (IdentityError item in createResult.Errors)
                        {
                            ModelState.AddModelError("", item.Description);

                        }

                    }




                }






            }


            List<string> errors = ModelState.Values.SelectMany(x => x.Errors).Select(y => y.ErrorMessage).ToList(); 

            return View("FacebookError",errors);

        }

        public IActionResult FacebookError()
        {
            return View();
        }
    }
}
