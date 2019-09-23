using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

using System.Data;
using System.Configuration;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;

public partial class Login : System.Web.UI.Page
{

    DataAccess objDataAccess = new DataAccess();
    private string userid;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            if (Request.QueryString["msg"] != null && Request.QueryString["mail"] != null)
            {
                //   Response.Write("<script>alert('Account created successfully with!!'"+ Request.QueryString["mail"].ToString() +");</script>");
                lbl_info.Text = "Account created successfully with <b>" + Request.QueryString["mail"].ToString() + "</b>";
                txtEmail.Text = Request.QueryString["mail"].ToString();
            }
            else
                if(Session["UserInfo"]!=null)
            {
                Response.Redirect("~/UserSection/DeshBoard.aspx");
            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt;
        try
        {
            dt = objDataAccess.UserLogin(txtEmail.Text.Trim(), txtPassword.Text.Trim(), objDataAccess.GetIPAddress());
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0][0].ToString().Substring(0, 1) != "!")
                {
                    Session["UserInfo"] = dt;                   
                    Response.Redirect("~/UserSection/DeshBoard.aspx");
                }
                else
                {
                    Label1.Text = dt.Rows[0][0].ToString().Substring(1);
                    return;
                }
            }
            else
            {
                Label1.Text = "Invalid User ID or password";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    private void swal(string v1, string v2, string v3)
    {
        throw new NotImplementedException();
    }

    private void ShowMessage(string v, object success)
    {
        throw new NotImplementedException();
    }
}


