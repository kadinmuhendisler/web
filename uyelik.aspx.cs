using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class uyelik : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

	 MesajinizAlindiLabel.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        mesajbox.Value = "";
        isim.Text = "";
        soyisim.Text = "";
        email.Text = "";
        MeslekTBox.Text = "";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        String ToField = "kadin.muhendisler@gmail.com";
        String Subject = "Web sitesinden Iletisim Formu ";
        Subject += isim.Text + " " + soyisim.Text;

        String Comments = isim.Text + " " + soyisim.Text;
        Comments += "\n";
        Comments += email.Text + "\n\n";
        Comments += MeslekTBox.Text + "\n\n"; 
        Comments += "--------------------------------------------\n\n";
        Comments += mesajbox.Value.ToString();
        Comments += "\n\n--------------------------------------------\n\n";

        MailSender newmailSender = new MailSender();
        newmailSender.sendMymail(ToField, Subject, Comments);

        
        MesajinizAlindiLabel.Visible = true;

        mesajbox.Value = "";
        isim.Text = "";
        soyisim.Text = "";
        email.Text = "";
        MeslekTBox.Text = "";
        


    }
}
