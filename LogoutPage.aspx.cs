using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;

public partial class LogoutPage : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "truncate table temp";
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }
        Response.Redirect("~/HomePage.aspx");
    }
}