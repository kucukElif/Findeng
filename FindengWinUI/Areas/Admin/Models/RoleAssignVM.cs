using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Areas.Admin.Models
{
    public class RoleAssignVM
    {
        public Guid RoleId { get; set; }
        public string RoleName { get; set; }
        public bool Exist { get; set; }

    }
}
