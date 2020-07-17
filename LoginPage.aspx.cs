using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using connection;

public partial class LoginPage : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Redirect("~/HomePage.aspx");
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "select * from userregistration where email='" + logintb.Text + "' and password='" + loginpasstb.Text + "'";
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                Session["User"] = logintb.Text;
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
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have logged in successfully!');window.location ='HomePage.aspx?category=CR';", true);
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login Unsuccessfull!');", true);
                // Response.Write("<script>alert('Login Unsuccessful!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }


}