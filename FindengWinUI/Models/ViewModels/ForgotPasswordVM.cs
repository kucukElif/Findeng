using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.Models.ViewModels
{
    public class ForgotPasswordVM
    {
        [Required(ErrorMessage ="Email Adresinizi Giriniz")]
        [EmailAddress(ErrorMessage = "Email adresiniz doğru formatta değil.")]
        public string Email { get; set; }

    }
}
