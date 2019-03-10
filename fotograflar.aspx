<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fotograflar.aspx.cs" Inherits="fotograflar" 
Title="Fotograflar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="95%">
    <tr>
        <td style="height: 38px">
        </td>
        <td style="height: 38px">
        </td>
        <td style="height: 38px">
        </td>
    </tr>
<tr align="center">
<td>
    <asp:ImageButton ID="ImageButton1" runat="server" BackColor="#0000C0" BorderColor="#0000C0"
        BorderStyle="Solid" BorderWidth="1px" ImageUrl="~/fotolar/Ankara/Ankara_Kampanya_14Haziran2006 001.jpg" OnClick="ImageButton1_Click" /></td>


<td>
    <asp:ImageButton ID="ImageButton2" runat="server" BackColor="#0000C0" BorderColor="#0000C0"
        BorderStyle="Solid" BorderWidth="1px" ImageUrl="~/fotolar/Keig/Keig2_1.JPG" Height="107px" Width="152px" OnClick="ImageButton2_Click" /></td>


<td>
    <asp:ImageButton ID="ImageButton3" runat="server" BackColor="#0000C0" BorderColor="#0000C0"
        BorderStyle="Solid" BorderWidth="1px" ImageUrl="~/fotolar/Sosfor/sosfor1.jpg" Height="108px" Width="150px" /></td>
</tr>

    <tr>
        <td style="height: 38px; text-align:center"><span class="yazarBilgileri">
            Ankara, Haziran 2006</span></td>
        <td style="height: 38px ;text-align:center">
            <span class="yazarBilgileri">Kadýn Emeði ve Ýstihdamý Toplantýsý<br />
                Þubat 2007</span></td>
        <td style="height: 38px; text-align:center">
            <span class="yazarBilgileri">Türkiye Sosyal Forumu<br />
                Eylül 2006</span></td>
    </tr>
    <tr>
        <td style="height: 38px; text-align: center">
        
        <asp:ImageButton ID="IlkToplanti" runat="server" BackColor="#0000C0" BorderColor="#0000C0"
        BorderStyle="Solid" BorderWidth="1px" ImageUrl="~/fotolar/ilktoplanti/muhendishane_sm.jpg" Height="108px" Width="150px" />
        
          </td>
        <td style="height: 38px; text-align: center">
        
          <asp:Image ID="Yemek" runat="server" Height="115px" ImageUrl="~/fotolar/yemek/Yemek1_sm.jpg" Width="161px" /></td>
    </tr>
    <tr>
        <td style="height: 38px; text-align: center"><span class="yazarBilgileri">
            Kadýn Mühendisler ilk toplantý</span></td>
        <td style="height: 38px; text-align: center">
          <span class="yazarBilgileri">  1. Geleneksel Kadýn Mühendisler
            <br />
            Yemeði,&nbsp; Mart 2007</span></td>
        <td style="height: 38px; text-align: center">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="height: 38px; text-align: center">
        <div id="fotoDiv" runat="server" visible=false>
        <embed type="application/x-shockwave-flash" src="http://picasaweb.google.com/s/c/bin/slideshow.swf" width="400" height="267" flashvars="host=picasaweb.google.com&RGB=0x000000&feed=http%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2Fkadin.muhendisler%2Falbumid%2F5173248976925400001%3Fkind%3Dphoto%26alt%3Drss%26authkey%3Da4ZrcDaZWSQ" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
        
        </div>
        </td>
    </tr>
</table>
   
</asp:Content>

