using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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
                userID = Convert.ToInt32(sdr1[userID]);
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
                total = Convert.ToInt32(sdr["total"].ToString());
            }

            subtotal.InnerText = "RM" + total + ".00";
            con.Close();

            return total;
        }
    }
}