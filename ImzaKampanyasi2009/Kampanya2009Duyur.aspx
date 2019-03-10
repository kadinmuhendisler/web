<%@ Page Language="C#" MasterPageFile="~/ImzaKampMaster.master" AutoEventWireup="true" CodeFile="Kampanya2009Duyur.aspx.cs" Inherits="Kampanya2009Duyur" 
Title="Kadin Muhendisler Imza Kampanyasi 2009" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-509773-2";
urchinTracker();
</script>
 

<table width="100%" align="center">
    <tr>
        <td style="height: 25px; text-align: justify;"><span class="siyahyazibuyuk">
        <span class="yazibasligi">DÝPLOMALAR PEMBE VEYA MAVÝ MÝ KÝ?</span>
            <br />
            <br />

55 yýllýk TMMOB'nin tarihinde ilk kez bu yýl 21-22 Kasým'da bir Kadýn Mühendisler, Mimarlar ve Þehir Plancýlar kurultayý düzenlenecektir. Bu olumlu geliþmeye raðmen TMMOB'ye baðlý bazý odalar hâlâ cinsiyet ayrýmcý ifadeler içeren iþ ilanlarýný üyelerine aktarmaya devam etmekte, cinsiyetçi iþ ilaný veya yayýnlarýn kamuoyuyla paylaþýlmasýnda aracý bir kurum olmamak için yeterince hassasiyet göstermemektir.
<br /><br />
            Biz, Kadýn Mühendisler, Mimarlar ve Þehir Plancýlar tüm TMMOB bileþenlerine þunu hatýrlatmak isteriz ki; "Bay Mühendis aranýyor" gibi doðrudan veya "askerliðini yapmýþ" gibi dolaylý cinsiyetçi ifadelerin yer aldýðý iþ ilanlarýnýn TMMOB bültenleri, yazýþma listeleri, ilan  panolarý vb. aracýlýðýyla duyurulmasý Anayasa'nýn 10. Maddesi'ne, Ýþ Kanunu'nun 5. Maddesi'ne, Avrupa Birliði Mevzuatý ve Uluslararasý Çalýþma Örgütü belgelerine aykýrýdýr, TCK'nin 122. maddesine göre de suç oluþturmaktadýr. Bizler, var olan cinsiyetçi uygulamalara artýk son verilmesini istiyor ve cinsiyetçi ilanlarýn kamuoyuyla paylaþýlmasýnda TMMOB'nin hiçbir koþulda aracý olmamasýný talep ediyoruz. Ayrýca TMMOB'nin özel sektörün verdiði cinsiyetçi iþ ilanlarýna karþý açýlacak davalara müdahil olmasý veya dava açmak isteyen üyelerine destek vermesi gerektiðine de inanýyoruz. TMMOB ve baðlý Odalarýn hiçbir yayýnýnda, seminerinde, toplantýsýnda cinsiyet ayrýmcýlýðý içeren ifadelere rastlamak istemiyor, ''gözden kaçmýþ'', ''dili sürçmüþ'' gibi mazeretleri kabul etmiyoruz.
<br /><br />TMMOB mühendis, mimar ve þehir plancý diplomalarýnýn pembe veya mavi renkte olmadýðýný cinsiyetçi iþverenler baþta olmak üzere tüm kamuoyuna hatýrlatmalýdýr.
<br /><br />2008 yýlý  40. Genel Kurul'da oyçokluðu ile kabul edilmesine raðmen halen kurulamayan Cinsiyet Ayrýmcýlýðý Takip Sekreteryasý'nýn ivedilikle hayata geçirilmesini istiyoruz.  
<br /><br />
            <br />
            <em>Kadýn Mühendisler, Mimarlar ve Þehir Plancýlar Grubu</em></span><em> </em>
            <br />
            <br /><span class="siyahyazibuyuk">
            http://www.kadinmuhendisler.org<br />
            E-mail: kadin.muhendisler@gmail.com<br /></span>
        </td>
    </tr>
    <tr>
        <td rowspan="2">
            <br />  <table style="width:100%">
                   <tr>
                       <td style="text-align: left;" rowspan="1" colspan="2">
                           <span><strong><span style="font-size: 12pt"><span style="color: #cc0033">
                               <br />
                          Ýmza Kampanyasýna Katýl </span>
                               <br />
                           </span>
                           </strong>
                       <br />   
                               <span style="color: #000000; font-size: 8pt">
                   Ýsim:</span><br />
                           </span>
                   <asp:TextBox ID="isim" runat="server" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt; color: #000000">
                   Soyisim:</span><br />
                  
                   <asp:TextBox ID="soyisim" runat="server" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt"><span style="color: #000000">E-mail (Internet sayfamýzda
                       yayýnlanmayacak, bilgi amaçlý saklanacaktýr):</span><br />
                   </span>
                   <asp:TextBox ID="email" runat="server" Columns="40"></asp:TextBox><br />
                           <span style="font-size: 8pt; color: #000000;">Meslek:</span><br />
                           <asp:TextBox ID="MeslekTBox" runat="server" TextMode="MultiLine" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt; color: #000000;">
                        Þehir:</span><br />
                        <asp:DropDownList ID="Sehir" runat="server" DataSourceID="SehirlerXmlDataSource"
                            DataTextField="IL_ISIM" DataValueField="IL_ISIM">
                        </asp:DropDownList><asp:XmlDataSource ID="SehirlerXmlDataSource" runat="server" DataFile="~/ImzaKampanyasi2009/sehir.xml">
                        </asp:XmlDataSource>
                   <br />
                           <span style="color: #000000"><span style="font-size: 8pt">Mesajýnýz (Mesajýnýz sadece Kadýn Mühendisler Grubu moderatörleri ve üyeleri tarafýndan
                       görülebilecektir, internet sayfamýzda yayýnlanmayacaktýr):</span><br /> 
                           </span>
                           <textarea id="MesajBox" runat="server" rows="10" cols="40" style="font-weight: bold"></textarea><br />
                           <strong>
                               <br />
                               &nbsp; </strong>
                        <asp:Button ID="ImzaGonderButton" runat="server" OnClick="Beyhan_Click" Text="Ýmzala" 
                        BackColor="DarkOrchid" ForeColor="White" />&nbsp; &nbsp;<asp:Button ID="ImzaTemizleButton" runat="server"  OnClick="ImzaTemizle_Click" Text="Temizle" BackColor="DarkOrchid" ForeColor="White" /><br />
                           <br />
                   &nbsp;                                                 <br />
                           <br />

                           <br />
                           <br />
                           <br />
                       </td>
                   </tr>
           
</table>
                       </td>              </tr>
               <tr>
                   
                  </tr>
            </table>
            &nbsp;&nbsp;
          

</asp:Content>

