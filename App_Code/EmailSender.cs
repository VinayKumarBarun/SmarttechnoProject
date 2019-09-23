using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Configuration;
using System.Net.Mail;

/// <summary>
/// Summary description for EmailSender
/// </summary>
public class EmailSender
{
    public EmailSender()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void SendRegEmail(string fName,string toaddress, string pass)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        string SenderEmailID = WebConfigurationManager.AppSettings["SenderEmailID"].ToString();
        string SenderEmailPassword = WebConfigurationManager.AppSettings["SenderEmailPassword"].ToString();
        string fromaddress = WebConfigurationManager.AppSettings["fromAddress"].ToString();
        smtp.Credentials = new System.Net.NetworkCredential(SenderEmailID,SenderEmailPassword);
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello " + fName + "  Thanks for Register at Smart Tech ";
        msg.Body = "Thanks For Register: Your Generated Password is : " + pass + "";        
        msg.To.Add(toaddress);        
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);            
        }
        catch
        {
            throw;
        }
    }
}