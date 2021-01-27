using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DAL.Entity;
using FindengWinUI.Areas.Admin.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace FindengWinUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class RoleController : Controller
    {
        private readonly UserManager<AppUser> userManager;
        private readonly RoleManager<AppUserRole> roleManager;

        public RoleController(UserManager<AppUser> userManager, RoleManager<AppUserRole> roleManager)
        {
            this.userManager = userManager;
            this.roleManager = roleManager;
        }
        public IActionResult Index()
        {
            return View(roleManager.Roles);
        }

        public IActionResult AddRole()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AddRole(AppUserRole appUserRole)
        {
            if (ModelState.IsValid)
            {
                var result = await roleManager.CreateAsync(appUserRole);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }
                foreach (IdentityError error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
            }
            return View(appUserRole);
        }
        public async Task<IActionResult> Delete(Guid id)
        {
            var role = await roleManager.FindByIdAsync(id.ToString());
            if (role != null)
            {
                IdentityResult result = await roleManager.DeleteAsync(role);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }

            }
            return View("Index", roleManager.Roles);

        }

        public IActionResult Update(Guid id)
        {
            AppUserRole role = roleManager.FindByIdAsync(id.ToString()).Result;
            if (role != null)
            {
                return View(role);
            }

            return RedirectToAction("Index");
        }
        [HttpPost]
        public async Task<IActionResult> Update(AppUserRole appUserRole)
        {
            AppUserRole role = await roleManager.FindByIdAsync(appUserRole.Id.ToString());
            if (role != null)
            {
                role.Name = appUserRole.Name;
                IdentityResult result = await roleManager.UpdateAsync(role);
                if (result.Succeeded)
                {
                    return RedirectToAction("Index");
                }

            }
            else
            {
                ModelState.AddModelError("", "Güncelleme işlemi başarısız oldu");
            }
            return View(appUserRole);

        }

        public async Task<IActionResult> RoleAssign(Guid id)
        {
            TempData["userId"] = id;
            AppUser user = await userManager.FindByIdAsync(id.ToString());

            ViewBag.userName = user.UserName;
            IQueryable<AppUserRole> roles = roleManager.Roles;
            List<string> userroles = await userManager.GetRolesAsync(user) as List<string>;
            List<RoleAssignVM> roleAssignVMs = new List<RoleAssignVM>();
            foreach (var role in roles)
            {
                RoleAssignVM r = new RoleAssignVM();
                r.RoleId = role.Id;
                r.RoleName = role.Name;
                if (userroles.Contains(role.Name))
                {

                    r.Exist = true;
                }
                else
                {
                    r.Exist = false;
                }
                roleAssignVMs.Add(r);
            }
            return View(roleAssignVMs);
        }
        [HttpPost]
        public async Task<IActionResult> RoleAssign(List<RoleAssignVM> roleAssignVMs)
        {
            AppUser user =await userManager.FindByIdAsync(TempData["userId"].ToString());
            foreach (var item in roleAssignVMs)
            {
                if (item.Exist)
                {
                  await userManager.AddToRoleAsync(user, item.RoleName);
                }
                else
                {
                   await userManager.RemoveFromRoleAsync(user, item.RoleName);
                }
            }
            return RedirectToAction("Index", "AppUser");
        }
    }
}
