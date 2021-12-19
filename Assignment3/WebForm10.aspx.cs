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
    }
}