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

public partial class HomePage : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["category"] != null)
        {
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                String strSQL = "select * from product where catname='" + Request.Params["category"] + "'";
                MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, conn);
                MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);
                DataSet ds = new DataSet();
                mydata.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                conn.Close();
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert(" + e1.ToString() + ")</script>");
            }
        }
        else
        {
            Response.Redirect("~/HomePage.aspx?category=CR");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewproduct")
        {
            int index = e.Item.ItemIndex;
            Label l1 = (Label)DataList1.Items[index].FindControl("lable3");
            Response.Redirect("~/DetailsPage.aspx?name=" + l1.Text);
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}