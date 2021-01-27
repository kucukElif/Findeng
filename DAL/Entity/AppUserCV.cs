using DAL.Entity.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace DAL.Entity
{
   public class AppUserCV :CoreEntity
    {
        public Guid AppUserId { get; set; }
        public virtual AppUser AppUser { get; set; }

        public string Department { get; set; }
        public string PhoneNumber { get; set; }
        public string ImagePath { get; set; }

    }
}
