using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using  System.IO;

	public  partial class thanks : System.Web.UI.Page
	{
        String newYorum;
    
		private void Page_Load(object sender, System.EventArgs e)
		{

            Yorumlar.Value = "Merhaba,\n  \n" +
           "Kad�n M�hendisler, Mimarlar ve �ehir Planc�lar Grubu'nun TMMOB'den taleplerini s�ralad���" + " imza kampanyas�n� desteklemek ister misin?";

           // Yorumlar.ServerChange += new System.EventHandler(this.Yorumlar_ServerChange);
		}



        protected void KampanyaDuyur_Click(object sender, EventArgs e)
        {
            String ToField = GonderilenAdres.Text;

            String GondericiAdiDegiskeni = GondericiAdi.Text;

            if (GonderilenAdres.Text.Equals(""))
            {

                //("L�tfen ad�n�z� giriniz!");

                Response.Write("<script language='javascript'> {window.alert('L�tfen kampanya duyurusunu g�ndermek istedi�iniz e-mail adresini giriniz!') }</script>");

                return;

            }



            String Subject = "Arkada��n�z " + GondericiAdiDegiskeni + " Kad�n M�hendisler �mza Kampanyas�na �a��r�yor.";

            String Comments = "TMMOB'de Cinsiyet�ili�e Kar�� �mza Kampanyas�";
            Comments += "\n \n";
            Comments += Yorumlar.Value;
            Comments += "\n http://www.kadinmuhendisler.org/Kampanya2009Duyur.aspx\n\n";
            Comments += "\n\n--------------------------------------------\n\n";

            MailSender newmailSender = new MailSender();
            newmailSender.sendMymailToAllRecipients(ToField, Subject, Comments);

            //ImzaMesajiAlindi.Visible = true;
            GonderilenAdres.Text = "";
            GondericiAdi.Text = "";

            Response.Redirect("Kampanya2009Thx.aspx");
            //MessageBox.Show("Kampanyam�za deste�iniz i�in te�ekk�r ederiz");


        }
        protected void KampanyaTemizle_Click(object sender, EventArgs e)
        {
            GondericiAdi.Text = "";
            GonderilenAdres.Text = "";
            Yorumlar.Value = "";

        }
}
