using DAL.Entity.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DAL.Entity
{
  public  class AppUserWork:CoreEntity
    {
        [Required(ErrorMessage = "İş ünvanı boş geçilemez.")]
        public string Title { get; set; }
        [Required(ErrorMessage = "Şirket adı boş geçilemez.")]

        public string Company { get; set; }

        [Required(ErrorMessage = "Konum boş geçilemez.")]

        public string Location { get; set; }
        [Required(ErrorMessage = "Lütfen laçıklama giriniz.")]
        public string Description { get; set; }
        [Required(ErrorMessage = "Lütfen listeden bir öge seçin.")]

        public string employmentType { get; set; }
        public DateTime startDate { get; set; }
        public string Logo { get; set; }
        public Guid AppUserId { get; set; }
        public virtual AppUser AppUser { get; set; }
    }
}
