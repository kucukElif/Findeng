using DAL.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class AppUserMemberVM
    {
        [Required(ErrorMessage = "Kullanıcı adı boş geçilemez.")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Email boş geçilemez.")]
        [EmailAddress(ErrorMessage = "Email adresiniz doğru formatta değil.")]
        public string Email { get; set; }
        //[RegularExpression("^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^a-zA-Z0-9])|(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])).{8,}$", ErrorMessage = "Lütfen daha güvenli bir şifre seç. 8 karakterden uzun, sana özel ve başkalarının kolayca tahmin edemeyeceği bir şifre seçmelisin.")]

        [StringLength(100, ErrorMessage = "Şifre en az 8 karakterli olmalıdır.", MinimumLength = 8)]
        [DataType(DataType.Password)]

        [Required(ErrorMessage = "Şifre boş geçilemez.")]
        public string Password { get; set; }
        [Required(ErrorMessage = "Şifre (Tekrar) boş geçilemez.")]
        [Compare("Password", ErrorMessage = ("Şifreler uyuşmuyor"))]
        public string RepeatPassword { get; set; }

        [Required(ErrorMessage = "Adınızı giriniz.")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Soyadınızı giriniz.")]
        public string LastName { get; set; }
        public DateTime? BirthDay { get; set; }
        [Required(ErrorMessage = "Bu bölüm boş geçilemez.")]

        public string City { get; set; }
        [Required(ErrorMessage = "Bu bölüm boş geçilemez.")]

        public int Gender { get; set; }
        public List<AppUserCV> AppUserCVs { get; set; }
        public AppUser AppUser { get; set; }
        public AppUserCV AppUserCV { get; set; }

    }
}
