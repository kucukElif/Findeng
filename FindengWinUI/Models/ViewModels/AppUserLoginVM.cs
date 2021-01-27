using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class AppUserLoginVM
    {
        
        [Required(ErrorMessage = "E-posta adresi gereklidir!")]
        [EmailAddress(ErrorMessage = "Email adresiniz doğru formatta değil.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Şifre gereklidir!")]
        [DataType(DataType.Password)]
        [MinLength(8,ErrorMessage ="Şifreniz en az 8 karakterli olmalıdır.")]
        public string Password { get; set; }

        [Display(Name ="Beni Hatırla")]
        public bool RememberMe { get; set; }
    }
}
