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
using System.Windows.Forms;

public partial class Kampanya2009Duyur : System.Web.UI.Page
{
    String newYorum;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

        Yorumlar.Value = "Merhaba,\n  \n" +
            "Kad�n M�hendisler, Mimarlar ve �ehir Planc�lar Grubu'nun TMMOB'den taleplerini s�ralad���" + " imza kampanyas�n� desteklemek ister misin?";
        Yorumlar.ServerChange += new System.EventHandler(this.Yorumlar_ServerChange);
          
    }

    protected void Beyhan_Click(object sender, System.EventArgs e)
    {
         
        String FILENAME = Server.MapPath("ImzaKampanyasi2009/isimliste.txt");

        String FILENAME2 = Server.MapPath("ImzaKampanyasi2009/isimlisteE.txt");

        //Get a StreamReader class that can be used to read the file

        System.IO.StreamWriter objStreamWriter;

        System.IO.StreamWriter objStreamWriter2;

        System.IO.StreamReader sr;

        System.IO.StreamReader sr2;

        Int32 i;

        if (isim.Text.Equals(""))
        {

            //("L�tfen ad�n�z� giriniz!");

            Response.Write("<script language='javascript'> {window.alert('L�tfen isminizi giriniz!') }</script>");

            return;

        }

        i = 0;
        sr = System.IO.File.OpenText(FILENAME);

        

        String line = sr.ReadLine();

        while (line != null && line.Length > 0)
        {

            line = sr.ReadLine();

            i = i + 1;

        }

        sr.Close();



        i = i + 1;

        objStreamWriter = System.IO.File.AppendText(FILENAME);

        objStreamWriter.WriteLine(i.ToString() + "." + "#" + isim.Text + "#" + soyisim.Text + "#" + MeslekTBox.Text + "#" + Sehir.SelectedValue + "#");

        objStreamWriter.Close();
        objStreamWriter2 = System.IO.File.AppendText(FILENAME2);
        
        objStreamWriter2.WriteLine(i.ToString() + "." + "#" + isim.Text + "#" + soyisim.Text + "#" + MeslekTBox.Text + "#" + email.Text + "#" + Sehir.SelectedValue + "#" + MesajBox.Value + "#");

        objStreamWriter2.Close();
        

        //------------
        //AYNI ZAMANDA kadin.muhendisler@gmail adresine de e-mail gonderilsin ki
        //ne olur ne olmaz
        //--------------
        String gonderenAdi = isim.Text;
        String soyadi = soyisim.Text;
        String meslek = MeslekTBox.Text;
        String yorumlar = MesajBox.Value;
        String emailAdresi = email.Text;
        String ToField = "kadin.muhendisler@gmail.com";

        String Subject = "Imza Kampanyasi Deste�i" + " [ " + gonderenAdi + "   " + soyadi + " ] ";

        String gonderilecekMetin = "\n";
        gonderilecekMetin += "Gonderici Ad�:";
        gonderilecekMetin += gonderenAdi;
        gonderilecekMetin += "\n Soyadi:";
        gonderilecekMetin += soyadi;
        gonderilecekMetin += "\n Meslek:";
        gonderilecekMetin += meslek;
        gonderilecekMetin += "\n Sehir:";
        gonderilecekMetin += Sehir.SelectedValue;
        gonderilecekMetin += "\n Email:";
        gonderilecekMetin += emailAdresi;
        gonderilecekMetin += "\n Yorumlar:";
        gonderilecekMetin += yorumlar;


        MailSender newmailSender = new MailSender();
        newmailSender.sendMymail(ToField, Subject, gonderilecekMetin);
        gonderilecekMetin = "";
        isim.Text = "";
        soyisim.Text = "";
        email.Text = "";
        MeslekTBox.Text = "";
        MesajBox.Value = "";
        //------
        Response.Redirect("Kampanya2009Imzacilar.aspx");

 
    }


    protected void Yorumlar_ServerChange(object sender, EventArgs e)
    {
        newYorum = Yorumlar.Value;
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
        Comments += "\n";
        Comments += "http://www.kadinmuhendisler.org/Kampanya2009Duyur.aspx\n\n";
        Comments += newYorum;
       
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
    protected void ImzaGonder_Click(object sender, EventArgs e)
    {
        String gonderenAdi = isim.Text;
        String soyadi = soyisim.Text;
        String meslek = MeslekTBox.Text;
        String yorumlar = MesajBox.Value;
        String emailAdresi = email.Text;
        String ToField = "kadin.muhendisler@gmail.com";

        String Subject = "Imza Kampanyasi Deste�i" + " [ " + gonderenAdi + "   " + soyadi + " ] ";

        String gonderilecekMetin = "\n";
        gonderilecekMetin += "Gonderici Ad�:";
        gonderilecekMetin += gonderenAdi;
        gonderilecekMetin += "\n Soyadi:";
        gonderilecekMetin += soyadi;
        gonderilecekMetin += "\n Meslek:";
        gonderilecekMetin += meslek;
        gonderilecekMetin += "\n Sehir:";
        gonderilecekMetin += Sehir.SelectedValue;
        gonderilecekMetin += "\n Email:";
        gonderilecekMetin += emailAdresi;
        gonderilecekMetin += "\n Yorumlar:";
        gonderilecekMetin += yorumlar;


        MailSender newmailSender = new MailSender();
        newmailSender.sendMymail(ToField, Subject, gonderilecekMetin);
        gonderilecekMetin = "";
        isim.Text = "";
        soyisim.Text = "";
        email.Text = "";
        MeslekTBox.Text = "";
        MesajBox.Value = "";
    }
    protected void ImzaTemizle_Click(object sender, EventArgs e)
    {
        isim.Text = "";
        soyisim.Text = "";
        MeslekTBox.Text = "";
        email.Text = "";
        MesajBox.Value = "";
    }
    
}