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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear();
            }
        }
        public string DropDownList1_SelectedValue { get; private set; }

        protected void userRegister(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con.Open();

            if (TextBox1.Text == "" | TextBox3.Text == "" | TextBox9.Text == "")
            {
                failMessage.Text = "Please Fill in the Mandatory Fields";
            }
            else if (TextBox9.Text != TextBox10.Text)
            {
                failMessage.Text = "Password do not Match!";
            }
            else
            {
                string Name = TextBox1.Text;
                string DOB = TextBox2.Text;
                string Username = TextBox3.Text;
                string phoneno = TextBox4.Text;
                string pw = TextBox9.Text;
                string securityPhrase = TextBox11.Text;
                string Address = TextBox12.Text;
                string State = TextBox6.Text;
                string City = TextBox7.Text;
                int Postcode = Convert.ToInt32(TextBox8.Text);

                SqlCommand cmd1 = new SqlCommand("insert into CUSTOMER (name, username, password, phoneNum, securityQuestion, address, state, city, postcode, dob) values(@Name, @Username, @pw, @Phoneno, @SecurityPhrase, @Address, @State, @City, @Postcode, @DOB)", con);
                cmd1.Parameters.AddWithValue("@Name", Name);
                cmd1.Parameters.AddWithValue("@Username", Username);
                cmd1.Parameters.AddWithValue("@pw", pw);
                cmd1.Parameters.AddWithValue("@Phoneno", phoneno);
                cmd1.Parameters.AddWithValue("@securityPhrase", securityPhrase);
                cmd1.Parameters.AddWithValue("@Address", Address);
                cmd1.Parameters.AddWithValue("@State", State);
                cmd1.Parameters.AddWithValue("@City", City);
                cmd1.Parameters.AddWithValue("@Postcode", Postcode);
                cmd1.Parameters.AddWithValue("@DOB", DOB);
                cmd1.ExecuteNonQuery();

                successMessage.Text = "User Registered Successfully!";
                Clear();
            }


            con.Close();
        }

        void Clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = TextBox11.Text = TextBox12.Text = "";
            successMessage.Text = failMessage.Text = "";
        }
    }
}