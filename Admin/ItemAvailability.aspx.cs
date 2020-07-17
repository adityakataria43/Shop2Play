using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Data;

public partial class Admin_ItemAvailability : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != "admin@shop2play.com")
           // Response.Redirect("~/HomePage.aspx?category=CR");
            Response.Redirect("~/Admin/ItemAvailability.aspx");
    }
   
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            String strSQL = "select * from product where catname='" + DropDownList1.SelectedValue + "'";
            MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, conn);
            MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);
            DataSet ds = new DataSet();
            mydata.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }
    }
    
}