using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Entity
{
  public  class AppUser:IdentityUser<Guid>
    {
        
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string City { get; set; }
        public int Gender { get; set; }
        public DateTime? BirthDay { get; set; }
        public string PhoneNumber { get; set; }
        public Guid AppUserCVId { get; set; }
        public virtual AppUserCV AppUserCV { get; set; }

    }
}
