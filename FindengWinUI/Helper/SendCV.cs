using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;

namespace FindengWinUI.Helper
{
    public class SendCV
    {
        public static void SendCVEmail() {


            MailMessage mail = new MailMessage();
            SmtpClient smtpClient = new SmtpClient("smptp.gmail.com", 587);

        }
    }
}
