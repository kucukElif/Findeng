using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Mail;
using FindengWinUI.Models.ViewModels;

namespace FindengWinUI.Helper
{
    public static class PasswordReset
    {
        public static void PasswordResetSendEmail(string link,/* ForgotPasswordVM forgotPassword*/ string email)
        {
            MailMessage mail = new MailMessage();

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

          
            mail.From = new MailAddress("findengco@gmail.com");
            mail.To.Add(/*forgotPassword.Email*/email);
            mail.Subject = $"www.findeng.net::Şifre sıfırlama";
            mail.Body = "<h2>Şifrenizi yenilemek için lütfen aşağıdaki linke tıklayınız.</h2><hr/>";
            mail.Body += $"<a href='{link}'>Şifre Yenileme Linki</a>";
            mail.IsBodyHtml = true;

            smtpClient.Credentials = new System.Net.NetworkCredential("findengco@gmail.com", "Elif2014*");
            smtpClient.EnableSsl = true;
            smtpClient.Port = 587;
            smtpClient.Send(mail);






        }
    }
}
