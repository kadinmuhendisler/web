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

public partial class EnBuyukDileginiziYazin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       MesajinizAlindiLabel.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        String ToField = "kadin.muhendisler@gmail.com";
        String Subject = "Web sitesinden Gelen: 2010'dan En Buyuk Dilegim iste burada";
        String Comments = "";
        Comments += "--------------------------------------------\n\n";
        Comments += mesajbox.Value.ToString();
        Comments += "\n\n--------------------------------------------\n\n";

        MailSender newmailSender = new MailSender();
        newmailSender.sendMymail(ToField, Subject, Comments);


        MesajinizAlindiLabel.Visible = true;

        mesajbox.Value = "";
        


    }
}
