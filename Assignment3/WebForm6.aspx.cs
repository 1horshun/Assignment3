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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                Label6.Text = "Please Enter All Fields!";
                Label6.Visible = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                Label6.Text = "Please Enter All Fields!";
                Label6.Visible = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBox3.Text))
            {
                Label6.Text = "Please Enter All Fields!";
                Label6.Visible = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                Label6.Text = "Please Enter All Fields!";
                Label6.Visible = true;
            }
            else if (string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                Label6.Text = "Please Enter All Fields!";
                Label6.Visible = true;
            }
            else
            {
                Label7.Text = "Message successfully sent! We'll contact you soon";
                Label6.Visible = false;
                Label7.Visible = true;
            }
        }
    }
}