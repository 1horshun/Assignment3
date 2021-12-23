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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("select productName, productQuantity, productColor, productPrice, imagePath, count(*) repeated from PRODUCT where pID=@pid group by productName, productQuantity, productColor, productPrice, imagePath having count(*) = 3", con);
            cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(Request.QueryString["PID"]));
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(cmd);
            sdr.Fill(dt);
            repeater1.DataSource = dt;
            repeater1.DataBind();
            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            if(Session["uname"] != null)
            {
                int userID = default;
                SqlCommand cmd4 = new SqlCommand("select userID from CUSTOMER where username=@username", con);
                cmd4.Parameters.AddWithValue("@username", Session["uname"].ToString());
                SqlDataReader sdr1 = cmd4.ExecuteReader();
                if (sdr1.Read())
                {
                    userID = Convert.ToInt32(sdr1[userID]);
                }
                sdr1.Close();

                string pID = Request.QueryString["PID"];
                string size = default;
                string quantity = default;
                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                size = (item.FindControl("RadioButtonList1") as RadioButtonList).SelectedItem.ToString();
                quantity = (item.FindControl("quantity") as TextBox).Text;

                SqlCommand cmd = new SqlCommand("select * from PRODUCT where pID = @pid and productSize = @size", con);
                cmd.Parameters.AddWithValue("@pid", pID);
                cmd.Parameters.AddWithValue("@size", size);
                SqlDataReader sdr = cmd.ExecuteReader();
                int ID = default;
                int price = default;
                int product_qty = default;
                int to_pay = default;
                if (sdr.Read())
                {
                    ID = Convert.ToInt32(sdr["productID"].ToString());
                    price = Convert.ToInt32(sdr["productPrice"].ToString());
                    product_qty = Convert.ToInt32(sdr["productQuantity"].ToString());
                }
                sdr.Close();

                int cart_product_qty = default;
                SqlCommand cmd5 = new SqlCommand("select productquantity from CART where productid=@pid and uid=@uid", con);
                cmd5.Parameters.AddWithValue("@pid", ID);
                cmd5.Parameters.AddWithValue("@uid", userID);
                SqlDataReader sdr2 = cmd5.ExecuteReader();

                if(sdr2.Read())
                {
                    cart_product_qty = Convert.ToInt32(sdr2["productquantity"].ToString());
                }

                sdr2.Close();

                SqlCommand cmd3 = new SqlCommand("select * from CART where productid=" + ID + " and uid=" + userID, con);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd3))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        to_pay = price * (cart_product_qty + Convert.ToInt32(quantity));
                        SqlCommand cmd2 = new SqlCommand("update CART set productquantity=productquantity+@qty, totalprice=@price where productid=@id AND uid=@uid", con);
                        cmd2.Parameters.AddWithValue("@qty", quantity);
                        cmd2.Parameters.AddWithValue("@price", to_pay);
                        cmd2.Parameters.AddWithValue("@id", ID);
                        cmd2.Parameters.AddWithValue("@uid", userID);
                        cmd2.ExecuteNonQuery();
                    }
                    else
                    {
                        to_pay = Convert.ToInt32(quantity) * price;

                        SqlCommand cmd1 = new SqlCommand("insert into CART (productid,productquantity,totalprice, uid) values(@id, @qty, @price, @uid)", con);
                        cmd1.Parameters.AddWithValue("@id", ID);
                        cmd1.Parameters.AddWithValue("@qty", quantity);
                        cmd1.Parameters.AddWithValue("@price", to_pay);
                        cmd1.Parameters.AddWithValue("@uid", userID);
                        cmd1.ExecuteNonQuery();
                    }
                }
            }else
            {
                Response.Redirect("WebForm4.aspx");
            }

            con.Close();
        }
    }
}