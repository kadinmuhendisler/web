<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="uyelik.aspx.cs" Inherits="uyelik" Title="Ýletiþim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table id="Table1" style="text-align:justify; width: 95%;" >
      
      <tr>
    
    
    <td style="width:90%; height: 286px;"> 
                <span class="yazibasligi">
            Kadýn Mühendisler grubuna üye olmak için:
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
        <span style="text-decoration: underline">E-grup yalnýzca kadýnlara açýk iken e-bültene
            herkes üye olabilir.<br />
        </span>
        <br /><span class="tatlimor">
    E-grup üyelik: 
            <br />
        </span></span><a href="http://groups.yahoo.com/group/kadin_muhendisler/">
        <span class="siyahyazibuyuk"> 
http://groups.yahoo.com/group/kadin_muhendisler/</span></a><br />
        <br />
        <span class="siyahyazibuyuk" style="color: crimson"><strong>
            Lütfen üyelik isteðinizde adýnýzý, soyadýnýzý, hangi mühendislik/mimarlýk alanýndan
            olduðunuzu, öðrenciyseniz üniversite ve bölümünüzü, mezun iseniz mezun olduðunuz
            yýlý, ve üniversitenizi belirtiniz. Grubumuzdan nereden haberdar olduðunuzu da belirtirseniz
            seviniriz. 
            <br />
            <br />
            Gruba reklam ve tanýtým amaçlý üyelik yasaktýr, ancak grup üyelerine
            duyurulmasýný istediðiniz tanýtýmlarýnýzý kadin.muhendisler@gmail.com adresine iletirseniz,
            moderatörler uygun görürlerse&nbsp; gruba ileteceklerdir.<br />
             <br />
            Grup sadece KADIN mimar/mühendis/fen bilimcileri, þehir plancýlarý ve teknik elemanlarýna
            açýktýr. Ancak kadýn çalýþmalarý
            yapan veya kadýn hareketini takip etmek isteyen kadýnlar da üyelik taleplerinde
            belirtiklerinde gruba üye olabilirler. Grubumuzun faaliyetlerini takip etmek isteyen erkekler
            de internet sayfamýzdan, bültenlerimizden &nbsp;veya kadýn.muhendisler@gmail.com
            adresine yazarak bilgi edinebilirler.<br />
        </strong></span>
       <br /><span class="tatlimor">
    E-bültene üyelik:</span><a href="http://groups.google.com/group/kadinmuhendislerbulten"> 
        <br /><span class="siyahyazibuyuk">
        http://groups.google.com/group/kadinmuhendislerbulten</span>
</a>&nbsp;<br />
    <br /> 
                                        
    <span class="tatlimor">
        <br />
        Bizlerle iletiþime geçmek için:<br />
        </span><span class="siyahyazibuyuk">kadin.muhendisler@gmail.com<br />
    </span></td></tr>
       <tr>
           <td colspan="1" style="height: 328px">
               <br />
               
               <table style="width:95%">
                   <tr>
                       <td colspan="2" style="height: 19px; text-align: center"><span class="yazibasligi">
               KADIN MÜHENDÝSLER GRUBU- ÝLETÝÞÝM FORMU</span><br />
                           <br />
                       </td>
                   </tr>
               <tr>
               <td style="width: 99px; height: 19px">
                   <strong>
                   Ýsim:</strong></td>
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
                           <strong>Mesleðiniz:</strong></td>
                       <td style="width: 262px; height: 24px">
                           <asp:TextBox ID="MeslekTBox" runat="server" Width="364px"></asp:TextBox></td>
                   </tr>
               <tr>
               <td style="width: 99px; height: 154px">
                   <strong>
                   Mesajýnýz:</strong></td>
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
                               Text="Mesajýnýz tarafýmýza iletilmiþtir. Ýlginize teþekkür ederiz..." Visible="False"
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

