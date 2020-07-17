using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            if (Session["User"] != "admin@shop2play.com")
            {
                Response.Redirect("~/HomePage.aspx?category=CR");
            }
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
        String adminemail = adminlogintb.Text;
        String pass = adminpasstb.Text;
        if (adminemail == "admin@shop2play.com")
        {
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandText = "select password from userregistration where email='" + adminemail + "'";
                mdr = cmd.ExecuteReader();
                if (mdr.Read())
                {
                    if (mdr.GetString(0) == pass)
                    {
                        Session["User"] = "admin@shop2play.com";
                        mdr.Close();
                        conn.Close();
                        Response.Redirect("~/Admin/ItemAvailability.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Enter Proper Password..!!')</script>");
                    }
                }
                conn.Close();
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert(" + e1.ToString() + ")</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter proper Admin Email ID..!!')</script>");
        }
    }
}