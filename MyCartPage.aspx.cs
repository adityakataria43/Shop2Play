using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.Data;

public partial class MyCartPage : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                String strSQL = "select * from temp";
                MySqlDataAdapter mydata = new MySqlDataAdapter(strSQL, conn);
                MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(mydata);
                DataSet ds = new DataSet();
                mydata.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                conn.Close();
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert(" + e1.ToString() + ")</script>");
                conn.Close();
            }
        }
        else
        {
            Response.Redirect("~/HomePage.aspx?category=CR");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String proid = productid.Text.Trim();
        if (proid == "" || proid == null)
        {
            Response.Write("<scritp>alert('Please Enter the Product ID to Delete from Your Cart..!!')</script>");
        }
        else
        {
            conn = MyConnections.ConnectDB();
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandText = "select * from temp where proid='" + proid + "'";
                mdr = cmd.ExecuteReader();
                if (mdr.Read())
                {
                    mdr.Close();
                    try
                    {
                        cmd = conn.CreateCommand();
                        cmd.CommandText = "delete from temp where proid='" + proid + "'";
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("~/MyCartPage.aspx");
                    }
                    catch (Exception e1)
                    {
                        Response.Write("<script>alert(" + e1.ToString() + ")</script>");
                        conn.Close();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Enter Proper Product ID..!!')</script>");
                }
            }
            catch (Exception e2)
            {
                Response.Write("<script>alert(" + e2.ToString() + ")</script>");
            }
            finally
            {
                conn.Close();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String proid = productid.Text.Trim();
        int proqt = int.Parse(productqt.Text.Trim());
        if (proid == "" || proid == null || proqt == null)
        {
            Response.Write("<scritp>alert('Please Enter the Product ID and Quantity to update the quantity of a product..!!')</script>");
        }
        else
        {
            int iCurrStock = 0; 
            conn.Open();
            cmd = conn.CreateCommand();
            cmd.CommandText = "select proid, prostock from product where proid=" + proid;
            mdr = null;
            mdr = cmd.ExecuteReader();

            if (mdr.Read())
            {
                int iProId = mdr.GetInt32(0);
                iCurrStock = mdr.GetInt32(1);

                if (iCurrStock > 10)
                    iCurrStock = 10; 
            }
            conn.Close();

            if (proqt < 1 || proqt > iCurrStock)
            {
                Response.Write("<script>alert('Maximum Quantity is "+ iCurrStock +" only..!!')</script>");
            }
            else
            {
                conn = MyConnections.ConnectDB();
                conn.Open();
                int totalprice;
                try
                {
                    cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from temp where proid='" + proid + "'";
                    mdr = cmd.ExecuteReader();
                    if (mdr.Read())
                    {
                        mdr.Close();
                        cmd.CommandText = "select price from product where proid="+proid;
                        mdr = cmd.ExecuteReader();
                        if (mdr.Read())
                        {
                            Int32 price = mdr.GetInt32(0);
                            totalprice = price * proqt;
                            mdr.Close();
                            cmd.CommandText = "update temp set quentity="+proqt+", price='"+totalprice+"'where proid='"+proid+"'";
                            cmd.ExecuteNonQuery();
                        }
                        Response.Redirect("~/MyCartPage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please Enter Proper Product ID..!!')</script>");
                    }
                }
                catch (Exception e2)
                {
                    Response.Write("<script>alert(" + e2.ToString() + ")</script>");
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
    protected void GridView2_DataBound(object sender, EventArgs e)
    {
        int totalamount = 0;
        foreach (GridViewRow row in GridView2.Rows)
        {
            int price = int.Parse(row.Cells[3].Text);
            totalamount += price;
        }
        GridViewRow footer = GridView2.FooterRow;
        //footer.Cells[2].ColumnSpan = 3;
        footer.Cells[2].HorizontalAlign = HorizontalAlign.Right;
        footer.Cells[2].Text = "Total Amount is : ";
        //footer.Cells[3].ColumnSpan = 2;
        footer.Cells[3].Text = totalamount.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MyCartBilling.aspx");
    }
}