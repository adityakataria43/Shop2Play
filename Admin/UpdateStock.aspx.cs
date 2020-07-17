using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Data;

public partial class Admin_UpdateStock : System.Web.UI.Page
{
    MySqlConnection conn = null;
    MySqlCommand cmd;
    MySqlDataReader mdr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(txtid.Text);
        int stock = int.Parse(txtstock.Text);
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "update product set prostock=" + stock + " where proid=" + id;
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
            conn.Close();
        }
    }
}