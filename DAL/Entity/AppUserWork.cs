using DAL.Entity.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Entity
{
  public  class AppUserWork:CoreEntity
    {
        public string Title { get; set; }
        public string Company { get; set; }
        public string Location { get; set; }
        public string employmentType { get; set; }
        public DateTime startDate { get; set; }
        public Guid AppUserId { get; set; }
        public virtual AppUser AppUser { get; set; }
    }
}
