using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ItemAvailability.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/HomePage.aspx?category=CR");
    }
}
