using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BLL.Abstract;
using DAL.Entity;
using FindengWinUI.Areas.Admin.Models;
using Mapster;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace FindengWinUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles="Admin")]
    public class CVFilesController : Controller
    {
        private readonly ICVFileService cVFileService;
        private readonly UserManager<AppUser> userManager;

        public CVFilesController(ICVFileService cVFileService, UserManager<AppUser> userManager)
        {
            this.cVFileService = cVFileService;
            this.userManager = userManager;
        }
        public IActionResult Index()
        {
            CVFileVM cVFileVM = new CVFileVM();
            cVFileVM.AppUser = userManager.Users;
            cVFileVM.CVFiles = cVFileService.GetActive();

            return View(cVFileVM);
        }
    }
}
