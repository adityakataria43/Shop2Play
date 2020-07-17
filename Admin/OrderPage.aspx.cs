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
using System.Data;


public partial class Admin_OrderPage : System.Web.UI.Page
{
    // MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlCommand cmd;
    MySqlDataReader mdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            String strSQL = "select * from orders";
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
    protected void GridView1_DataBound(object sender, EventArgs e)
    {

    }
}
