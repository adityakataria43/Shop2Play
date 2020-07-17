using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connection;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            HyperLink13.Text = "LOGIN";
            HyperLink13.NavigateUrl = "~/LoginPage.aspx";
        }
        else if(Session["User"] != null)
        {
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandText = "select fname from userregistration where email='" + Session["User"] + "'";
                mdr = cmd.ExecuteReader();
                if (mdr.Read())
                {
                    Username.Text = "Welcome "+mdr.GetString(0).ToUpper();
                    mdr.Close();
                }
                conn.Close();
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert(" + e1.ToString() + ")</script>");
            }
            HyperLink13.Text = "LOGOUT";
            HyperLink13.NavigateUrl = "~/LogoutPage.aspx";
        }
    }
    protected void addtocart_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/MyCartPage.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=CR");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=BB");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=FB");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=VO");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=SK");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomePage.aspx?category=RK");
    }
}
