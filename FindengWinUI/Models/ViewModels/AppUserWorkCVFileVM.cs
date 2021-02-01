using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class AppUserWorkCVFileVM
    {
        public AppUserWork AppUserWork { get; set; }
        public List<AppUserCV> AppUserCV { get; set; }
        public List<CVFile> CVFile { get; set; }
    }
}
