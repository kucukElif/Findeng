using DAL.Entity.Base;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DAL.Entity
{
  public  class CVFile : CoreEntity
    {
        public string cvFile { get; set; }
        public Guid AppUserId { get; set; }
        public virtual AppUser AppUser { get; set; }
    }
}
