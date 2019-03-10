<%@ Page Language="C#" MasterPageFile="~/ImzaKampMaster.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanks" 
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
       <td style="text-align: center;"><span class="yazibasligi">
            <br />
            <br />
           Kampanyamýza desteðiniz için teþekkür ederiz.<br /></span>
            <br /><span class="siyahyazibuyuk">
           <em>Kadýn Mühendisler, Mimarlar ve Þehir Plancýlar Grubu</em>
            <br />
               http://www.kadinmuhendisler.org<br />
               kadin.muhendisler@gmail.com<br /></span>
           <br />
           <br />
           <table style="width: 100%">
               <tr>
                   <td colspan="2" rowspan="3" style="width: 50%; text-align: left">
                       <strong><span style="font-size: 12pt; color: #cc0000">
                           <br />
                           Ýmza Kampanyasýný Duyur<br />
                       </span></strong><span style="font-size: 8pt">
                           <br />
                           <span style="color: #000000">Gönderici Ýsmi:<br />
                           </span></span>
                       <asp:TextBox ID="GondericiAdi" runat="server"></asp:TextBox><br />
                       <span style="color: #000000"><span style="font-size: 8pt">Gönderilecek Email Adresleri:
                       </span>&nbsp; &nbsp;<br />
                       </span><span style="font-size: 8pt; color: #000000">Birden fazla adrese göndermek için
                           lütfen adresleri &nbsp;noktalý virgül (;) &nbsp;veya virgül (,) ile ayýrarak yazýnýz.
                           <br />
                       </span>
                       <asp:TextBox ID="GonderilenAdres" runat="server" TextMode="MultiLine"></asp:TextBox>
                       <br />
                       <span style="color: #000000"><span style="font-size: 8pt">Mesajýnýz:</span><br />
                       </span>
                       <textarea id="Yorumlar" runat="server" cols="28" name="KampanyaDuyurMetni"                          rows="10"></textarea>
                       <br />
                       <br />
                       &nbsp;<asp:Button ID="KampanyaGonderButton" runat="server" BackColor="DarkOrchid"
                           ForeColor="White" OnClick="KampanyaDuyur_Click" Text="Kampanyayý Duyur" />&nbsp;
                   </td>
               </tr>
           </table>
               <br />
        </td>
    </tr>
    <tr>
   
    </tr>  </table>
                       

</asp:Content>

