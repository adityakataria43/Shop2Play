using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Data; 

public partial class MyCartBilling : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/HomePage.aspx?category=CR");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        /*Response.Write("<script>alert('Your Order has been placed Successfully. :)')</script>");
        Response.Redirect("~/HomePage.aspx?category=CR");*/
        //Session.Abandon();
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

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Order has been placed Successfully and will be delivered within 7 days at your doorstep!.Thank You for Shopping!.');window.location ='HomePage.aspx?category=CR';", true);
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

            for (iCnt = 0; iCnt < iRows; iCnt++)
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