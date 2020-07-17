using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using connection;

public partial class BillingPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["User"] != null)
        {
            Name.Text = Request.Params["Name"];
            int prc = int.Parse(Request.Params["Price"]);
            int qunt = int.Parse(Request.Params["quantity"]);
            Price.Text = (prc * qunt).ToString();
            qt.Text = Request.Params["quantity"];
            String size = Request.Params["Size"];
            if (size == null)
            {
                Size.Text = "";
                SizeValue.Text = "";
            }
            else
            {
                Size.Text = "Size :   ";
                SizeValue.Text = size;
            }
        }
        else
        {
            Response.Redirect("~/HomePage.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd;
        MySqlConnection conn = null;
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            String strSQL = "select t.proid,t.quentity, p.prostock from temp t inner join product p on t.proid = p.proid";
            MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, conn);
            MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);
            DataSet ds = new DataSet();
            mydata.Fill(ds);
            updateStock(ds);

            cmd = conn.CreateCommand();
            cmd.CommandText = "INSERT INTO `orders` SELECT * FROM `temp`;";
            cmd.ExecuteNonQuery();

            cmd = conn.CreateCommand();
            cmd.CommandText = "truncate table temp";
            cmd.ExecuteNonQuery();

            conn.Close();
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Order has been placed successfully and will be delivered within 7 days at your doorstep!.Thank You for Shopping');window.location ='HomePage.aspx?category=CR';", true);

    }

    protected void updateStock(DataSet dr)
    {
        MySqlCommand cmd;
        MySqlConnection conn = null;
        conn = MyConnections.ConnectDB();
        conn.Open();
        int iRows = dr.Tables[0].Rows.Count;

        if (iRows > 0)
        {
            int iCnt = 0; 

            for (iCnt = 0; iCnt < iRows; iCnt ++) 
            {
                cmd = conn.CreateCommand();
                int iOrdrstk = Convert.ToInt32(dr.Tables[0].Rows[iCnt]["quentity"].ToString());
                int iProdstk = Convert.ToInt32(dr.Tables[0].Rows[iCnt]["prostock"].ToString());
                int iProid = Convert.ToInt32(dr.Tables[0].Rows[iCnt]["proid"].ToString()); 

                cmd.CommandText = "update product set prostock =" + (iProdstk - iOrdrstk) + " where proid=" + iProid;
                cmd.ExecuteNonQuery();
            }
        }

    }

}