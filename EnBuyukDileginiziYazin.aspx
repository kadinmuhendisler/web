<%@ Page Language="C#" MasterPageFile="~/EnBuyukDilegim.master" AutoEventWireup="true" CodeFile="EnBuyukDileginiziYazin.aspx.cs" Inherits="EnBuyukDileginiziYazin" Title="Dileklerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%"> 
<tr><td style="width: 62%;">
    <span style="font-size: 16pt; font-family: Comic Sans MS"><strong>
        <br />
        <span style="color: mediumseagreen">
    2010'dan En Büyük Dileðiniz Nedir?</span>
        <br />
    </strong></span>
    <br />  <textarea id="mesajbox" runat="server" style="width: 357px; height: 159px;"></textarea>
    <br />
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/gonder.jpg"
        OnClick="ImageButton1_Click" ImageAlign="Middle" /><br />
    <br />
    <asp:Label ID="MesajinizAlindiLabel" runat="server" Font-Bold="True" Font-Size="Larger"
        Text="Dileðiniz bize ulaþmýþtýr. Baþka bir arzunuz...." Visible="False" Width="462px"></asp:Label></td>
        <td style="width: 38%; background-color: #00cc00;"> 
    <br /><span class="tatlimor" style="color: #ffffff">
    Kadýnlarýn sokaklarýnda özgürce gezebilecekleri bir Ýstanbul, ve dünya istiyorum
        <br />
        <br />
Nefret Cinayetlerinin Son Bulmasý!<br />
        <br />
TMMOB'da kadýn örgütlenmesinin gerçekleþmesi<br />
        <br />
Anayasada Cinsel Yönelim ve Cinsiyet Kimliði Eþitliði!<br />
        <br />
Erkek egemenliðinden kurtulmuþ dil, ler!<br />
        <br />
Feministim demekten korkmayan kadýnlar artsýn<br />
     <br />
TMMOB'de kadýn bir genel baþkan! <br />
        <br />
        Feminist bir koca?...<br />
        <br />
Seneye burada daha kalabalýk olmak!<br />
        <br />
8 Martlarda daha kalabalýk olmak ve taleplerimizi daha güçlü haykýrmak dileðiyle<br />
        <br />
Ýki harfli bir ünvan : Dr. :)<br />
        <br />
Kadýn hareketinin emek hareketinin geliþmesi ve daha yakýnlaþmasý<br />
        <br />
Pozitif ayrýmcýlýðýn sona ermesi, meslekte tam eþitlik<br />
        <br />
Ermeni-Türk-Kürt ... Tüm Türkiye Kadýnlarýnýn Bir Arada olmasý<br />
        <br />
Daha çok sýðýnak açýlsýn, Sýðýnaksýz bir dünya için sýðýnak<br /><br /></span></td>
</tr></table>

</asp:Content>

