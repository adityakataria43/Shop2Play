using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class RegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Redirect("~/HomePage.aspx");
        }
        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        con.Open();
        int count;
        string checkuser = "select count(*) from UserRegistration";

        MySqlCommand cmd = new MySqlCommand(checkuser, con);
        count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        useridtb.Text = "0" + count.ToString();
    }
    protected void registertb_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            if (rbmale.Checked == false && rbfemale.Checked == false)
            {
                GenderError.Visible = true;
                GenderError.Text = "Select Gender!";
            }
            else
            {
                GenderError.Visible = false;
            }

            lblRegerror.Text = "Registration successful!";
        }
        
        try
        {

            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
            con.Open();
            string RegistrationQuery = "insert into UserRegistration(userid,fname, mname, lname, email, country, password,securityqts,securityans) values (@userid,@fname, @mname, @lname, @email, @country, @password, @securityqts, @securityans)";
            MySqlCommand cmd = new MySqlCommand(RegistrationQuery, con);
            cmd.Parameters.AddWithValue("@userid", useridtb.Text);
            cmd.Parameters.AddWithValue("@fname", fnametb.Text);
            cmd.Parameters.AddWithValue("@mname", mnametb.Text);
            cmd.Parameters.AddWithValue("@lname", lnametb.Text);
            cmd.Parameters.AddWithValue("@email", emailtb.Text);
            cmd.Parameters.AddWithValue("@country", countryddl.Text);
            cmd.Parameters.AddWithValue("@password", passtb.Text);
            cmd.Parameters.AddWithValue("@securityqts", SecList.Text);
            cmd.Parameters.AddWithValue("@securityans", Answertb.Text);
            cmd.ExecuteNonQuery();

            string RegistrationQuery1 = "insert into UserLogin(email,password) values ('" + emailtb.Text + "','" + passtb.Text + "')";
            cmd = new MySqlCommand(RegistrationQuery1, con);
            cmd.ExecuteNonQuery();
            //lblRegerror.Text = "<script>alert('Registration Successful!')</script>";
           // lblRegerror.Visible = true;

            //Response.Write("<script>alert('Registration Successful!')</script>");
            Session["User"] = emailtb.Text;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have registered successfully.');window.location ='HomePage.aspx?category=CR';", true);
            //Response.Redirect("~/HomePage.aspx");
            //lblRegerror.Text = "Registration Successful"

            
            con.Close();
        }
        catch (Exception)
        {
            //Response.Write("<script>alert('Registration Unsuccessful!')</script>");
            lblRegerror.Text = "Registration unsuccessful";
            lblRegerror.Visible = true;
            //Response.Write("Registration Unsuccesful!");
        }
    }
   
}