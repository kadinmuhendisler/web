<%@ Page Language="C#" MasterPageFile="~/EnBuyukDilegim.master" AutoEventWireup="true" CodeFile="EnBuyukDileginiziYazin.aspx.cs" Inherits="EnBuyukDileginiziYazin" Title="Dileklerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%"> 
<tr><td style="width: 62%;">
    <span style="font-size: 16pt; font-family: Comic Sans MS"><strong>
        <br />
        <span style="color: mediumseagreen">
    2010'dan En B�y�k Dile�iniz Nedir?</span>
        <br />
    </strong></span>
    <br />  <textarea id="mesajbox" runat="server" style="width: 357px; height: 159px;"></textarea>
    <br />
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/gonder.jpg"
        OnClick="ImageButton1_Click" ImageAlign="Middle" /><br />
    <br />
    <asp:Label ID="MesajinizAlindiLabel" runat="server" Font-Bold="True" Font-Size="Larger"
        Text="Dile�iniz bize ula�m��t�r. Ba�ka bir arzunuz...." Visible="False" Width="462px"></asp:Label></td>
        <td style="width: 38%; background-color: #00cc00;"> 
    <br /><span class="tatlimor" style="color: #ffffff">
    Kad�nlar�n sokaklar�nda �zg�rce gezebilecekleri bir �stanbul, ve d�nya istiyorum
        <br />
        <br />
Nefret Cinayetlerinin Son Bulmas�!<br />
        <br />
TMMOB'da kad�n �rg�tlenmesinin ger�ekle�mesi<br />
        <br />
Anayasada Cinsel Y�nelim ve Cinsiyet Kimli�i E�itli�i!<br />
        <br />
Erkek egemenli�inden kurtulmu� dil, ler!<br />
        <br />
Feministim demekten korkmayan kad�nlar arts�n<br />
     <br />
TMMOB'de kad�n bir genel ba�kan! <br />
        <br />
        Feminist bir koca?...<br />
        <br />
Seneye burada daha kalabal�k olmak!<br />
        <br />
8 Martlarda daha kalabal�k olmak ve taleplerimizi daha g��l� hayk�rmak dile�iyle<br />
        <br />
�ki harfli bir �nvan : Dr. :)<br />
        <br />
Kad�n hareketinin emek hareketinin geli�mesi ve daha yak�nla�mas�<br />
        <br />
Pozitif ayr�mc�l���n sona ermesi, meslekte tam e�itlik<br />
        <br />
Ermeni-T�rk-K�rt ... T�m T�rkiye Kad�nlar�n�n Bir Arada olmas�<br />
        <br />
Daha �ok s���nak a��ls�n, S���naks�z bir d�nya i�in s���nak<br /><br /></span></td>
</tr></table>

</asp:Content>

