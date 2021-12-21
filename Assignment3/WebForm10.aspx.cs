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
            if (sdr.Read())
            {
                ID = Convert.ToInt32(sdr["productID"].ToString());
                price = Convert.ToInt32(sdr["productPrice"].ToString());
            }
            sdr.Close();

            int to_pay = Convert.ToInt32(quantity) * price;

            SqlCommand cmd1 = new SqlCommand("insert into CART (productid,productquantity,productprice) values(@id, @qty, @price)", con);
            cmd1.Parameters.AddWithValue("@id", ID);
            cmd1.Parameters.AddWithValue("@qty", quantity);
            cmd1.Parameters.AddWithValue("@price", to_pay);
            cmd1.ExecuteNonQuery();

            con.Close();
        }
    }
}