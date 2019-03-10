using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Collections.Generic;
using System.Text;
using System.IO;



/// <summary>
/// Summary description for MailSender
/// </summary>
public class MailSender
{
	public MailSender()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    
    public void sendMymail(String toAdress, String subject , String body)
    {
        System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
     
        msg.To.Add( toAdress ) ; 
        msg.From = new MailAddress("kadin.muhendisler@gmail.com", "Kadin Muhendisler Grubu", System.Text.Encoding.UTF8);
        msg.Subject = subject;
        msg.SubjectEncoding = System.Text.Encoding.UTF8;
        msg.Body = body;
        msg.BodyEncoding = System.Text.Encoding.UTF8;
        msg.IsBodyHtml = false;
        msg.Priority = MailPriority.High;

        //Add the Creddentials
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("kadin.muhendisler@gmail.com", "19sabiha33");
        client.Port = 587;//or use 587            
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        //client.SendCompleted += new SendCompletedEventHandler(client_SendCompleted);
        object userState = msg;
        try
        {
            //you can also call client.Send(msg)
            client.Send(msg ); //, userState);
            
        }
        catch (System.Net.Mail.SmtpException ex)
        {
            Console.WriteLine(ex.Message + " : " + ex.StackTrace);
            //MessageBox.Show(ex.Message, "Send Mail Error");
        }

    }
       
    public void sendMymailToAllRecipients(String BccAdress, String subject, String body)
    {
        MailMessage msg = new MailMessage();
        String toAddress = "kadin.muhendisler@gmail.com"; 
        char[] charSeparators = new char[] { ',', ';' };
        String[] result = BccAdress.Split(charSeparators, StringSplitOptions.RemoveEmptyEntries);


        for (int i = 0; i < result.Length; i++)
        {
            MailAddress nextaddress= new MailAddress(result[i]);
            msg.Bcc.Add(nextaddress);
         }

        msg.From = new MailAddress("kadin.muhendisler@gmail.com", "Kadin Muhendisler Grubu", System.Text.Encoding.UTF8);
        msg.Subject = subject;
        msg.SubjectEncoding = System.Text.Encoding.UTF8;
        msg.Body = body;
        msg.BodyEncoding = System.Text.Encoding.UTF8;
        msg.IsBodyHtml = false;
        msg.Priority = MailPriority.High;
        
        //Add the Creddentials
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("kadin.muhendisler@gmail.com", "19sabiha33");
        client.Port = 587;//or use 587            
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        //client.SendCompleted += new SendCompletedEventHandler(client_SendCompleted);
        object userState = msg;
        try
        {
            //you can also call client.Send(msg)
            client.Send(msg); //, userState);

        }
        catch (System.Net.Mail.SmtpException ex)
        {
            Console.WriteLine(ex.Message + " : " + ex.StackTrace);
            //MessageBox.Show(ex.Message, "Send Mail Error");
        }


    } //sendMailtoMultiples


    /*
    void client_SendCompleted(object sender, AsyncCompletedEventArgs e)
    {
        MailMessage mail = (MailMessage)e.UserState;
        string subject = mail.Subject;

        if (e.Cancelled)
        {
            string cancelled = string.Format("[{0}] Send canceled.", subject);
            //MessageBox.Show(cancelled);
        }
        if (e.Error != null)
        {
            string error = String.Format("[{0}] {1}", subject, e.Error.ToString());
            //MessageBox.Show(error);
        }
        else
        {
            //MessageBox.Show("Message sent.");
        }
        
    }
    */
}
