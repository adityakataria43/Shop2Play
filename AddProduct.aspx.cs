using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using connection;
using System.IO;

public partial class Admin_AddProduct : System.Web.UI.Page
{
    MySqlCommand cmd;
    MySqlConnection conn = null;
    MySqlDataReader mdr = null;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "select MAX(proid) from product";
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                id = int.Parse(mdr.GetString(0)) + 1;
                prodid.Text = id.ToString();
            }
            mdr.Close();
            conn.Close();
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }
    }
    protected void btnaddItem_Click(object sender, EventArgs e)
    {
        int proid = id;
        String pname, pcat, pstock, pdes,pimgname;
        pname = productname.Text;
        pcat = dlscategory.SelectedValue;
        float ppice = float.Parse(productprice.Text);
        pstock = productstock.Text;
        pdes = productdescription.Text;
        pimgname = "Images/"+Path.GetFileName(productfileupload.PostedFile.FileName);
        productfileupload.SaveAs(Server.MapPath(pimgname));
        conn = MyConnections.ConnectDB();
        conn.Open();
        try
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "insert into product values("+proid+","+ppice+",'"+pname+"','"+pcat+"','"+pimgname+"','"+pdes+"','"+pstock+"')";
            cmd.ExecuteNonQuery();
           // Response.Write("<script>alert('Product has been Added.')</script>");
            conn.Close();


         //   Response.Write("<script>alert('Product has been Added.')</script>");
            Response.Redirect("~/Admin/ItemAvailability.aspx");
        }
        catch (Exception e1)
        { 
            Response.Write("<script>alert(" + e1.ToString() + ")</script>");
        }

    }
}