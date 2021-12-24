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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from CUSTOMER where username=@uname", con);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());

            string name = default;
            string email = default;
            string phone = default;
            string addr = default;
            string postcode = default;
            string city = default;
            string state = default;

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                name = sdr["name"].ToString();
                email = sdr["username"].ToString();
                phone = sdr["phoneNum"].ToString();
                addr = sdr["address"].ToString();
                postcode = sdr["postcode"].ToString();
                city = sdr["city"].ToString();
                state = sdr["state"].ToString();
            }

            TextBox1.Text = name;
            TextBox2.Text = email;
            TextBox3.Text = phone;
            TextBox4.Text = addr;
            TextBox5.Text = postcode;
            TextBox6.Text = city;
            TextBox7.Text = state;

            sdr.Close();

            int userID = default;
            SqlCommand cmd4 = new SqlCommand("select userID from CUSTOMER where username=@username", con);
            cmd4.Parameters.AddWithValue("@username", Session["uname"].ToString());
            SqlDataReader sdr2 = cmd4.ExecuteReader();
            if (sdr2.Read())
            {
                userID = Convert.ToInt32(sdr2["userID"]);
            }
            sdr2.Close();

            int total = default;
            SqlCommand cmd1 = new SqlCommand("select sum(totalprice) as total from CART where uid=@uid", con);
            cmd1.Parameters.AddWithValue("@uid", userID);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            if (sdr1.Read())
            {
                if (sdr1["total"] is DBNull)
                {
                    total = 0;
                }
                else
                {
                    total = Convert.ToInt32(sdr1["total"].ToString());
                }
            }

            subTotal.Text = "RM" + total + ".00";
            sdr1.Close();

            int topay = total + 8;
            totalPay.Text = "RM" + topay + ".00";

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex < 0)
            {
                orderWarning.Text = "Please select payment method";
                orderWarning.Visible = true;
            }
            else
            {
                orderWarning.Text = "checkout successfully";
                orderWarning.Visible = true;
            }

        }
    }
}