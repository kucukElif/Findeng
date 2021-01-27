using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class PasswordChangeVM
    {
        [Display(Name = "Eski şifreniz")]
        [Required(ErrorMessage = "Eski şifreniz gereklidir.")]
        [DataType(DataType.Password)]
        [MinLength(8, ErrorMessage = "Şifreniz en az 8 karakterli olmalıdır.")]
        public string PasswordOld { get; set; }

        [Display(Name = "Yeni şifreniz")]
        [Required(ErrorMessage = "Yeni şifreniz gereklidir.")]
        [DataType(DataType.Password)]
        [MinLength(8, ErrorMessage = "Şifreniz en az 8 karakterli olmalıdır.")]
        public string PasswordNew { get; set; }


        [Display(Name = "Şifre Tekrar")]
        [Required(ErrorMessage = "Onay yeni şifreniz gereklidir.")]
        [DataType(DataType.Password)]
        [MinLength(8, ErrorMessage = "Şifreniz en az 8 karakterli olmalıdır.")]
        [Compare("PasswordNew", ErrorMessage ="Yeni şifre ve onay şifreniz birbirinden farklıdır.")]
        public string PasswordConfirm { get; set; }

    }
}
