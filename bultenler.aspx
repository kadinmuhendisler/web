<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="bultenler.aspx.cs" Inherits="bultenler" Title="B�ltenler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
     <span class="pembebuyukbaslik">
         <br />
         B�lten dosyalar�na .pdf �eklinde ula�abilirsiniz.</span> 
    <br />
    <br />
    <br />
<div class="duyuruHr">
<table >

    <tr> 
    <td style="height: 18px; width: 342px;"> <span style="color: #696969">
Mart 2008: D�nya Emek�i Kad�nlar G�n�</span>
    </td>
        <td style="height: 18px; text-align:left"> 
            <a href="Bultenler/BultenMart2008.pdf">&nbsp;</a><asp:ImageButton ID="ImageButton1"
                runat="server" ImageUrl="~/images/fem_logo/pdf_button.png" /></td>
   </tr>
   </table>
   </div>
    <div class="duyuruHr">
    <table>
    <tr>
    <td style="height: 18px; text-align:left; width: 349px;">  <span style="color: #696969">
        Aral�k 2007 B�lteni</span></td>
    <td style="width: 47px; height: 18px"> 
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/fem_logo/pdf_button.png" /></td>
    </tr>
    </table>
    </div>
   
    
    <div class="duyuruHr">
    <table>
    <tr>
        <td style="height: 18px; text-align: left; width: 349px;">
            <span style="color: #696969">Haziran 2007 B�lteni</span></td>
        <td style="width: 47px; height: 18px">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/fem_logo/pdf_button.png" /></td>
    </tr>
    
    </table>
    </div>
   
   <div class="duyuruHr">
    <table>
    <tr>
        <td style="height: 18px; text-align: left; width: 350px;">
            <span style="color: #696969">Ocak &nbsp;2007&nbsp; B�lteni</span></td>
        <td style="width: 47px; height: 18px">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/fem_logo/pdf_button.png" /></td>
    </tr>  
    
</table>
</div>
</asp:Content>

