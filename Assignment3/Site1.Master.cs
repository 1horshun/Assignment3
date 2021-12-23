using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uname"] != null)
            {
                cartlink.Visible = true;
                string username = Session["uname"].ToString().Split('@')[0];
                user_name.Text = username;
                LinkButton2.Visible = true;
            }
            else
            {
                user_name.Visible = false;
                LinkButton2.Visible = false;
                cartlink.Visible = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if(Session["uname"] != null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Redirect("Webform4.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["uname"] = null;
            Response.Redirect("WebForm4.aspx");
        }
    }
}