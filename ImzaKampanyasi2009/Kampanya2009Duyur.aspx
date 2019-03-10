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
        <span class="yazibasligi">D�PLOMALAR PEMBE VEYA MAV� M� K�?</span>
            <br />
            <br />

55 y�ll�k TMMOB'nin tarihinde ilk kez bu y�l 21-22 Kas�m'da bir Kad�n M�hendisler, Mimarlar ve �ehir Planc�lar kurultay� d�zenlenecektir. Bu olumlu geli�meye ra�men TMMOB'ye ba�l� baz� odalar h�l� cinsiyet ayr�mc� ifadeler i�eren i� ilanlar�n� �yelerine aktarmaya devam etmekte, cinsiyet�i i� ilan� veya yay�nlar�n kamuoyuyla payla��lmas�nda arac� bir kurum olmamak i�in yeterince hassasiyet g�stermemektir.
<br /><br />
            Biz, Kad�n M�hendisler, Mimarlar ve �ehir Planc�lar t�m TMMOB bile�enlerine �unu hat�rlatmak isteriz ki; "Bay M�hendis aran�yor" gibi do�rudan veya "askerli�ini yapm��" gibi dolayl� cinsiyet�i ifadelerin yer ald��� i� ilanlar�n�n TMMOB b�ltenleri, yaz��ma listeleri, ilan  panolar� vb. arac�l���yla duyurulmas� Anayasa'n�n 10. Maddesi'ne, �� Kanunu'nun 5. Maddesi'ne, Avrupa Birli�i Mevzuat� ve Uluslararas� �al��ma �rg�t� belgelerine ayk�r�d�r, TCK'nin 122. maddesine g�re de su� olu�turmaktad�r. Bizler, var olan cinsiyet�i uygulamalara art�k son verilmesini istiyor ve cinsiyet�i ilanlar�n kamuoyuyla payla��lmas�nda TMMOB'nin hi�bir ko�ulda arac� olmamas�n� talep ediyoruz. Ayr�ca TMMOB'nin �zel sekt�r�n verdi�i cinsiyet�i i� ilanlar�na kar�� a��lacak davalara m�dahil olmas� veya dava a�mak isteyen �yelerine destek vermesi gerekti�ine de inan�yoruz. TMMOB ve ba�l� Odalar�n hi�bir yay�n�nda, seminerinde, toplant�s�nda cinsiyet ayr�mc�l��� i�eren ifadelere rastlamak istemiyor, ''g�zden ka�m��'', ''dili s�r�m��'' gibi mazeretleri kabul etmiyoruz.
<br /><br />TMMOB m�hendis, mimar ve �ehir planc� diplomalar�n�n pembe veya mavi renkte olmad���n� cinsiyet�i i�verenler ba�ta olmak �zere t�m kamuoyuna hat�rlatmal�d�r.
<br /><br />2008 y�l�  40. Genel Kurul'da oy�oklu�u ile kabul edilmesine ra�men halen kurulamayan Cinsiyet Ayr�mc�l��� Takip Sekreteryas�'n�n ivedilikle hayata ge�irilmesini istiyoruz.  
<br /><br />
            <br />
            <em>Kad�n M�hendisler, Mimarlar ve �ehir Planc�lar Grubu</em></span><em> </em>
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
                          �mza Kampanyas�na Kat�l </span>
                               <br />
                           </span>
                           </strong>
                       <br />   
                               <span style="color: #000000; font-size: 8pt">
                   �sim:</span><br />
                           </span>
                   <asp:TextBox ID="isim" runat="server" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt; color: #000000">
                   Soyisim:</span><br />
                  
                   <asp:TextBox ID="soyisim" runat="server" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt"><span style="color: #000000">E-mail (Internet sayfam�zda
                       yay�nlanmayacak, bilgi ama�l� saklanacakt�r):</span><br />
                   </span>
                   <asp:TextBox ID="email" runat="server" Columns="40"></asp:TextBox><br />
                           <span style="font-size: 8pt; color: #000000;">Meslek:</span><br />
                           <asp:TextBox ID="MeslekTBox" runat="server" TextMode="MultiLine" Columns="40"></asp:TextBox><br />
                   <span style="font-size: 8pt; color: #000000;">
                        �ehir:</span><br />
                        <asp:DropDownList ID="Sehir" runat="server" DataSourceID="SehirlerXmlDataSource"
                            DataTextField="IL_ISIM" DataValueField="IL_ISIM">
                        </asp:DropDownList><asp:XmlDataSource ID="SehirlerXmlDataSource" runat="server" DataFile="~/ImzaKampanyasi2009/sehir.xml">
                        </asp:XmlDataSource>
                   <br />
                           <span style="color: #000000"><span style="font-size: 8pt">Mesaj�n�z (Mesaj�n�z sadece Kad�n M�hendisler Grubu moderat�rleri ve �yeleri taraf�ndan
                       g�r�lebilecektir, internet sayfam�zda yay�nlanmayacakt�r):</span><br /> 
                           </span>
                           <textarea id="MesajBox" runat="server" rows="10" cols="40" style="font-weight: bold"></textarea><br />
                           <strong>
                               <br />
                               &nbsp; </strong>
                        <asp:Button ID="ImzaGonderButton" runat="server" OnClick="Beyhan_Click" Text="�mzala" 
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

