using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace Assignment3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();
            int userID = default;
            SqlCommand cmd4 = new SqlCommand("select userID from CUSTOMER where username=@username", con);
            cmd4.Parameters.AddWithValue("@username", Session["uname"].ToString());
            SqlDataReader sdr1 = cmd4.ExecuteReader();
            if (sdr1.Read())
            {
                userID = Convert.ToInt32(sdr1["userID"]);
            }
            sdr1.Close();


            SqlCommand cmd = new SqlCommand("select * from CART left join PRODUCT on CART.productid= PRODUCT.productId where uid=@uid", con);
            cmd.Parameters.AddWithValue("@uid", userID);
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(cmd);
            sdr.Fill(dt);
            repeater_cart.DataSource = dt;
            repeater_cart.DataBind();
            cmd.ExecuteNonQuery();

            int subtotal = GetSubTotal(userID);
            int total = subtotal + 8; //shipping = rm8
            totalpay.InnerText = "RM" + total + ".00";

            CheckIsEmpty(userID);

            con.Close();
        }

        protected int GetSubTotal(int uid)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            int total = default;
            SqlCommand cmd = new SqlCommand("select sum(totalprice) as total from CART where uid=@uid", con);
            cmd.Parameters.AddWithValue("@uid", uid);
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.Read())
            {
                if(sdr["total"] is DBNull)
                {
                    total = 0; 
                }else
                {
                    total = Convert.ToInt32(sdr["total"].ToString());
                }
            }

            subtotal.InnerText = "RM" + total + ".00";
            con.Close();

            return total;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();
            int userID = default;
            SqlCommand cmd4 = new SqlCommand("select userID from CUSTOMER where username=@username", con);
            cmd4.Parameters.AddWithValue("@username", Session["uname"].ToString());
            SqlDataReader sdr1 = cmd4.ExecuteReader();
            if (sdr1.Read())
            {
                userID = Convert.ToInt32(sdr1["userID"]);
            }
            sdr1.Close();
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;
            HtmlTableCell pName = (HtmlTableCell)item.FindControl("product_name");
            HtmlTableCell pColor = (HtmlTableCell)item.FindControl("product_color");
            HtmlTableCell pSize = (HtmlTableCell)item.FindControl("product_size");
            string productName = pName.InnerText;
            string productColor = pColor.InnerText;
            string productSize = pSize.InnerText;
            SqlCommand cmd = new SqlCommand("select productID from PRODUCT where productName=@pName and productColor=@pColor and productSize=@pSize", con);
            cmd.Parameters.AddWithValue("@pName", productName);
            cmd.Parameters.AddWithValue("@pColor", productColor);
            cmd.Parameters.AddWithValue("@pSize", productSize);

            int productID = default;

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                productID = Convert.ToInt32(sdr["productID"]);
            }

            sdr.Close();
            SqlCommand cmd5 = new SqlCommand("delete from CART where productid=@productID and uid=@userID", con);
            cmd5.Parameters.AddWithValue("@productID", productID);
            cmd5.Parameters.AddWithValue("@userID", userID);
            cmd5.ExecuteNonQuery();
            Response.Redirect("WebForm2.aspx");
            con.Close();
        }

        protected void CheckIsEmpty(int uid)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("select * from CART where uid=@uid", con);
            cmd.Parameters.AddWithValue("@uid", uid);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                if (sdr["productid"] is DBNull)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}