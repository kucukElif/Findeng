using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FindengWinUI.CutsomValidation
{
    public class CustomIdentityErrorDescriber:IdentityErrorDescriber
    {
        public override IdentityError InvalidUserName(string userName)
        {
            return new IdentityError() { 
            Code= "InvalidUserName",
            Description=$"Bu {userName} geçersizdir."
            };
        }

        public override IdentityError DuplicateUserName(string userName)
        {
            return new IdentityError()
            {
                Code = "DuplicateUserName",
                Description = $"Bu kullanıcı adı ({userName}) kullanılmaktadır"
            };
        }
       
        public override IdentityError DuplicateEmail(string email)
        {
            return new IdentityError() {
                Code = "DuplicateEmail",
                Description = $"{email} e-posta adresi kullanılmaktadır. "
            };
        }
        public override IdentityError PasswordTooShort(int length)
        {
            return new IdentityError()
            {
                Code = "PasswordTooShort",
                Description = $"Şifreniz en az {length} karakterli olmalıdır."
            };
        }

        public override IdentityError PasswordRequiresUpper()
        {
            return new IdentityError()
            {
                Code = "UpperCase",
                Description = $"Şifeniz en az bir tane büyük harf içermelidir."
            };
           
        }
        public override IdentityError PasswordRequiresLower()
        {
            return new IdentityError()
            {
                Code = "LowerCase",
                Description = $"Şifeniz en az bir tane küçük harf içermelidir."
            };
        }

        public override IdentityError PasswordRequiresDigit()
        {
            return new IdentityError()
            {
                Code = "Digit",
                Description = $"Şifeniz en az bir tane küçük sayı içermelidir."
            };
        }
        public override IdentityError PasswordRequiresNonAlphanumeric()
        {
            return new IdentityError()
            {
                Code = "NonAlphanumeric",
                Description = $"Şifeniz en az bir tane alfanümerik karakter içermelidir."
            };
        }
    }
}
