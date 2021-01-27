using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;

namespace FindengWinUI.Helper
{
    public static class EmailConfirmation
    {
        public static void SendEmail(string link, string email)
        {
            MailMessage mail = new MailMessage();

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);


            mail.From = new MailAddress("findengco@gmail.com");
            mail.To.Add(email);
            mail.Subject = $"www.findeng.net::Email Doğrulama";
            mail.Body = "<h2>Email adresinizi doğrulamak için lütfen aşağıdaki linke tıklayınız.</h2><hr/>";
            mail.Body += $"<a href='{link}'>Email Doğrulama Linki</a>";
            mail.IsBodyHtml = true;

            smtpClient.Credentials = new System.Net.NetworkCredential("findengco@gmail.com", "Elif2014*");
            smtpClient.EnableSsl = true;
            smtpClient.Port = 587;
            smtpClient.Send(mail);






        }
    }
}
