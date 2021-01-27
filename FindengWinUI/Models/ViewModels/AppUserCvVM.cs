using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class AppUserCvVM
    {
        public AppUser AppUser { get; set; }
        public List<CVFile> CVFiles { get; set; }
    }
}
