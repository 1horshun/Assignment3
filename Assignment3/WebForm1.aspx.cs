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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("select productName, productQuantity, productColor, productPrice, imagePath, count(*) repeated from PRODUCT group by productName, productQuantity, productColor, productPrice, imagePath having count(*) = 3", con);
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(cmd);
            sdr.Fill(dt);
            repeater_home.DataSource = dt;
            repeater_home.DataBind();
            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            string name = default;
            string color = default;

            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            name = (item.FindControl("Label1") as Label).Text;
            color = (item.FindControl("Label4") as Label).Text;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("select pID from PRODUCT where productName=@name and productColor=@color", con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@color", color);
            cmd.ExecuteNonQuery();

            int pid = default;

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                pid = Convert.ToInt32(sdr["pID"].ToString());
            }
            sdr.Close();
            Response.Redirect("WebForm10.aspx?PID="+pid.ToString());
            con.Close();
        }

    }
}