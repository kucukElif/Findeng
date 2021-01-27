using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class ResetPasswordVM
    {

        [RegularExpression("^((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^a-zA-Z0-9])|(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9])).{8,}$", ErrorMessage = "Lütfen daha güvenli bir şifre seç. 6 karakterden uzun, sana özel ve başkalarının kolayca tahmin edemeyeceği bir şifre seçmelisin.")]

        [StringLength(100, ErrorMessage = "Şifre en az 6 karakterli olmalıdır.", MinimumLength = 6)]
        [DataType(DataType.Password)]

        [Required(ErrorMessage = "Şifre boş geçilemez.")]
        [Display(Name = "Yeni Şifre")]
        public string Password { get; set; }

        public string Token { get; set; }
    }
}
