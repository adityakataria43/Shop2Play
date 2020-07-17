using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using connection;

public partial class Admin_Customer : System.Web.UI.Page
{
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
            cmd.CommandText = "select * from userregistration order by userid";
            mdr = cmd.ExecuteReader();
            CustGrid.DataSource = mdr;
            CustGrid.DataBind();
            mdr.Close();
            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}