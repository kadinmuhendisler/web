using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using  System.IO;

	public  partial class Kampanya2009Imzacilar : System.Web.UI.Page
	{
		public System.Web.UI.WebControls.Label Label1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
            String FILENAME = Server.MapPath("ImzaKampanyasi2009/isimliste.txt");
            


        //'Get a StreamReader class that can be used to read the file
        StreamReader objStreamReader;
        objStreamReader = File.OpenText(FILENAME);

      
        String contents = objStreamReader.ReadToEnd();
        Int32 j;
        j = 1;
        String[] lines = null;
		String[] subline = null;
	    char[] splitchar = {'\n'};
        char[] splitchar2 = {'#'};

		lines = contents.Split(splitchar);
        String tablo ;

        tablo = "<table width = 90% border=0 class='icTablo'><TR CLASS=icTabloBas><td>Sýra</td><td>Ad</td><td>Soyad</td><td>Meslek</td><td>Þehir</td></tr>";
		

		foreach (String line in lines){
             subline = line.Split(splitchar2);
           
			if (j == 1)
			{
				tablo = tablo + "<tr class='icTabloAcik'>";
				j = 0;
			}
			else
			{
				tablo = tablo + "<tr class='icTabloKoyu'>";
				j = 1;
			}
            foreach (String vals in subline){
										 tablo = tablo + "<td>" + vals + "</td>";

										 }
			tablo = tablo + "</tr>";
			 }
        
		tablo = tablo + "</table>";
       
		Label2.Text = tablo;


        objStreamReader.Close();
		}

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion
		
	}
