using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Data;
using MySql.Data.MySqlClient;


public partial class AdminDelete : System.Web.UI.Page
{

    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        listview(DropDownList1.SelectedValue);
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        listview(DropDownList1.SelectedValue);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandText = "delete from product where proid=" + id;
                cmd.ExecuteNonQuery();
                conn.Close();
                listview(DropDownList1.SelectedValue);
            }
            catch (Exception e1)
            {
                Response.Write(e1.ToString());
            }
        }
    }

    protected void listview(String s)
    {
        conn = MyConnections.ConnectDB();
        conn.Open();
        cmd = conn.CreateCommand();
        cmd.CommandText = "select proid,proname from product where catname='" + s + "'";
        mdr = cmd.ExecuteReader();
        GridView1.DataSource = mdr;
        GridView1.DataBind();
        conn.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
