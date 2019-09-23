using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text.Trim() == WebConfigurationManager.AppSettings["username"].ToString() && txtPassword.Text.Trim() == WebConfigurationManager.AppSettings["password"].ToString())
        {

            Response.Redirect("~/AdminSection/Default.aspx");
        }
        else
        {
            lblAdminMsg.Text = "PassWord do not match";
            

        }
    }
}