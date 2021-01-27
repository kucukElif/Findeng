using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Areas.Admin.Models
{
    public class UserRole
    {
        public List<AppUser> AppUsers { get; set; }
        public List<AppUserRole> AppUserRoles { get; set; }
    }
}
