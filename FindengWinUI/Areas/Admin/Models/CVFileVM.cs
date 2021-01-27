using DAL.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Areas.Admin.Models
{
    public class CVFileVM
    {
        public List<CVFile> CVFiles { get; set; }
        public IQueryable<AppUser> AppUser { get; set; }
       
    }
}
