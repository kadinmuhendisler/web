using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Timers;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    //DateTime date;
    
    protected void Page_Load(object sender, EventArgs e)
    {
            
    
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        String filename = BultenDropDown.Text;
        Response.Redirect(filename + ".aspx");
    
    }
    protected void BultenDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}
