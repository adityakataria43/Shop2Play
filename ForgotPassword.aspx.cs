using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Configuration;
using System.Data;

public partial class ForgotPassword : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    string question;
    static String ansdb;
    string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        fpans.Visible = false;
        fpanstb.Visible = false;
        Fpresetpass.Visible = false;
        Fpresetpass0.Visible = false;
        newpass.Visible = false;
        newpass0.Visible = false;
        fpsecqts.Visible = false;
        Label1.Visible = false;
        Resetbtn.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string anstb = fpanstb.Text;
        if (ansdb == anstb)
        {
            String newpass1 = newpass.Text;
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                email = fpemailtb.Text;
                cmd = conn.CreateCommand();
                cmd.CommandText = "update userregistration set password='" + newpass1 + "' where email='" + email + "'";
                cmd.ExecuteNonQuery();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Updated Successfully!');", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password changed Successfully!');window.location ='HomePage.aspx?category=CR';", true);
                //Response.Write("<script>alert('Password Updated Successfully!')</script>");
               // Response.Redirect("~/HomePage.aspx");
                conn.Close();
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert(" + e1.ToString() + ")</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter Correct Answer..!!')</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        email = fpemailtb.Text;
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "select securityqts,securityans from userregistration where email='" + email + "'";
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                question = mdr.GetString(0);
                ansdb = mdr.GetString(1);
                conn.Close();
            Label1.Text = question;
            fpans.Visible = true;
            fpanstb.Visible = true;
            Fpresetpass.Visible = true;
            Fpresetpass0.Visible = true;
            newpass.Visible = true;
            newpass0.Visible = true;
            fpsecqts.Visible = true;
            Label1.Visible = true;
            Resetbtn.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Enter your registered email id')</script>");
            }
            
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }


    }

}