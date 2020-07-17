using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;

public partial class DetailsPage : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    String proid;
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = Request.Params["name"];
        conn = MyConnections.ConnectDB();
        try
        {
            conn.Open();
            cmd = conn.CreateCommand();
            cmd.CommandText = "select * from product where proname='" + s + "'";
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                    productimage.ImageUrl = mdr.GetString(4);
                    productname.Text = mdr.GetString(2);
                    productprice.Text = mdr.GetString(1);
                    productdescription.Text = mdr.GetString(5);
                    proid = mdr.GetString(0);
                
            }

        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Write("<script>alert('Before adding to cart please Login First..!!')</script>");
        }
        else
        {
           int iSuccess =  AddProductToCart();   
        }
    }
    protected void buynow_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Write("<script>alert('Before buying the product please Login First..!!')</script>");
        }
        else
        {
              int iSuccess = AddProductToCart();
                if (iSuccess == 1)
                    Response.Redirect("~/BillingPage.aspx?name=" + productname.Text + "&Price=" + productprice.Text + "&quantity=" + quantity.Text);
        }
    }

    protected int AddProductToCart()
    {
        int iReturn = 0; 
        String name;
        int price, qt;
        name = productname.Text;
        price = int.Parse(productprice.Text);
        qt = Int32.Parse(quantity.Text.Trim());
        int totalprice = price * qt;
        int iCurrStock = 0;
        int iProId; 
        try
        {
            conn.Open();
            cmd = conn.CreateCommand();
            cmd.CommandText = "select proid, prostock from product where proname='" + name + "'";
            mdr = null;
            mdr = cmd.ExecuteReader();

           if (mdr.Read())
           {
               iProId = mdr.GetInt32(0);
               iCurrStock = mdr.GetInt32(1);
           }
           conn.Close();


           conn.Open();
            cmd = conn.CreateCommand();
            cmd.CommandText = "select * from temp where proname='" + name + "'";
            mdr = null;
            mdr = cmd.ExecuteReader();

            if (mdr.Read())
            {
                Response.Write("<script>alert('Product already present into cart..!!')</script>");
            }
            else
            {
                mdr.Close();
                if (iCurrStock >= 10)
                {
                    if (qt >= 1 && qt <= 10)
                    {
                        try
                        {
                            cmd = conn.CreateCommand();
                            cmd.CommandText = "insert into temp values('" + name + "','" + totalprice + "','" + qt + "','" + proid + "')";
                            cmd.ExecuteNonQuery();

                            //cmd = conn.CreateCommand();
                            //cmd.CommandText = "insert into order values('" + name + "','" + totalprice + "','" + qt + "','" + proid + "')";
                            //cmd.ExecuteNonQuery();

                            Response.Write("<script>alert('Product has been Added. :)')</script>");

                        }
                        catch (Exception e1)
                        {
                            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
                        }
                        finally
                        {
                            conn.Close();
                            iReturn = 1;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Max Quantity 10 only..!!')</script>");
                    }
                }
                else
                {
                    if (qt >= 1 && qt <= iCurrStock)
                    {
                        try
                        {
                            cmd = conn.CreateCommand();
                            cmd.CommandText = "insert into temp values('" + name + "','" + totalprice + "','" + qt + "','" + proid + "')";
                            cmd.ExecuteNonQuery();

                           // cmd = conn.CreateCommand();
                           // cmd.CommandText = "insert into order values('" + name + "','" + totalprice + "','" + qt + "','" + proid + "')";
                            //cmd.ExecuteNonQuery();

                            Response.Write("<script>alert('Product has been Added. :)')</script>");

                        }
                        catch (Exception e1)
                        {
                            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
                           
                        }
                        finally
                        {
                            conn.Close();
                            iReturn = 1; 
                        }
                    }
                    else
                    {
                          Response.Write("<script>alert('Max Quantity " + iCurrStock +  " only..!!')</script>");
                       // Response.Write("<script>alert('Stock Unavailable')");
                    }
 
                }
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

        return iReturn;
    }
}