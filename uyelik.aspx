<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="uyelik.aspx.cs" Inherits="uyelik" Title="�leti�im" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table id="Table1" style="text-align:justify; width: 95%;" >
      
      <tr>
    
    
    <td style="width:90%; height: 286px;"> 
                <span class="yazibasligi">
            Kad�n M�hendisler grubuna �ye olmak i�in:
                    <br />
                </span>
                    <br />
   <span class="tatlimor"> Web Sitesi:</span>
        <br />
        <a href="http://www.kadinmuhendisler.org"> 
       <span class="siyahyazibuyuk"> http://www.kadinmuhendisler.org<br /></span>
        </a> <span class="siyahyazibuyuk"> 
        http://www.moryakalilar.org<br />
        <br />
        <span style="text-decoration: underline">E-grup yaln�zca kad�nlara a��k iken e-b�ltene
            herkes �ye olabilir.<br />
        </span>
        <br /><span class="tatlimor">
    E-grup �yelik: 
            <br />
        </span></span><a href="http://groups.yahoo.com/group/kadin_muhendisler/">
        <span class="siyahyazibuyuk"> 
http://groups.yahoo.com/group/kadin_muhendisler/</span></a><br />
        <br />
        <span class="siyahyazibuyuk" style="color: crimson"><strong>
            L�tfen �yelik iste�inizde ad�n�z�, soyad�n�z�, hangi m�hendislik/mimarl�k alan�ndan
            oldu�unuzu, ��renciyseniz �niversite ve b�l�m�n�z�, mezun iseniz mezun oldu�unuz
            y�l�, ve �niversitenizi belirtiniz. Grubumuzdan nereden haberdar oldu�unuzu da belirtirseniz
            seviniriz. 
            <br />
            <br />
            Gruba reklam ve tan�t�m ama�l� �yelik yasakt�r, ancak grup �yelerine
            duyurulmas�n� istedi�iniz tan�t�mlar�n�z� kadin.muhendisler@gmail.com adresine iletirseniz,
            moderat�rler uygun g�r�rlerse&nbsp; gruba ileteceklerdir.<br />
             <br />
            Grup sadece KADIN mimar/m�hendis/fen bilimcileri, �ehir planc�lar� ve teknik elemanlar�na
            a��kt�r. Ancak kad�n �al��malar�
            yapan veya kad�n hareketini takip etmek isteyen kad�nlar da �yelik taleplerinde
            belirtiklerinde gruba �ye olabilirler. Grubumuzun faaliyetlerini takip etmek isteyen erkekler
            de internet sayfam�zdan, b�ltenlerimizden &nbsp;veya kad�n.muhendisler@gmail.com
            adresine yazarak bilgi edinebilirler.<br />
        </strong></span>
       <br /><span class="tatlimor">
    E-b�ltene �yelik:</span><a href="http://groups.google.com/group/kadinmuhendislerbulten"> 
        <br /><span class="siyahyazibuyuk">
        http://groups.google.com/group/kadinmuhendislerbulten</span>
</a>&nbsp;<br />
    <br /> 
                                        
    <span class="tatlimor">
        <br />
        Bizlerle ileti�ime ge�mek i�in:<br />
        </span><span class="siyahyazibuyuk">kadin.muhendisler@gmail.com<br />
    </span></td></tr>
       <tr>
           <td colspan="1" style="height: 328px">
               <br />
               
               <table style="width:95%">
                   <tr>
                       <td colspan="2" style="height: 19px; text-align: center"><span class="yazibasligi">
               KADIN M�HEND�SLER GRUBU- �LET���M FORMU</span><br />
                           <br />
                       </td>
                   </tr>
               <tr>
               <td style="width: 99px; height: 19px">
                   <strong>
                   �sim:</strong></td>
               <td style="width: 262px; height: 19px">
                   <asp:TextBox ID="isim" runat="server" Width="362px"></asp:TextBox></td>
               </tr>
               
               <tr>
               <td style="width: 99px; height: 24px;">
                   <strong>
                   Soyisim:</strong></td>
               <td style="width: 262px; height: 24px;">
                   <asp:TextBox ID="soyisim" runat="server" Width="363px"></asp:TextBox></td>
               </tr>
               <tr>
               <td style="width: 99px; height: 24px">
                   <strong>
                   E-mail:</strong></td>
               <td style="width: 262px; height: 24px">
                   <asp:TextBox ID="email" runat="server" Width="364px"></asp:TextBox></td>
               </tr>
                   <tr>
                       <td style="width: 99px; height: 24px">
                           <strong>Mesle�iniz:</strong></td>
                       <td style="width: 262px; height: 24px">
                           <asp:TextBox ID="MeslekTBox" runat="server" Width="364px"></asp:TextBox></td>
                   </tr>
               <tr>
               <td style="width: 99px; height: 154px">
                   <strong>
                   Mesaj�n�z:</strong></td>
               <td style="width: 262px; height: 154px">
                   <textarea id="mesajbox" runat="server" style="width: 364px; height: 138px"></textarea></td>
               </tr>
               <tr>
               <td style="width: 99px; height: 9px"></td>
               <td style="width: 262px; height: 9px">
                  <table><tr><td style="width: 107px; height: 29px;">
                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/gonder.jpg" OnClick="ImageButton1_Click" /></td><td style="height: 29px">
                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/temizle.jpg" OnClick="ImageButton2_Click" /></td></tr></table>
                   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
               </tr>
                   <tr>
                       <td style="width: 99px; height: 9px">
                       </td>
                       <td style="width: 262px; height: 9px">
                           <asp:Label ID="MesajinizAlindiLabel" runat="server" Font-Bold="True" Font-Size="Larger"
                               Text="Mesaj�n�z taraf�m�za iletilmi�tir. �lginize te�ekk�r ederiz..." Visible="False"
                               Width="462px"></asp:Label></td>
                   </tr>
                   <tr>
                       <td colspan="2" style="height: 9px">
                       </td>
                   </tr>
               </table>
           </td>
       </tr>
       <tr>
           <td style="width: 21px">
           </td>
       </tr>
    </table>
    
    
</asp:Content>

