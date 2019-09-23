using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSection_MasterPage : System.Web.UI.MasterPage
{
    DataAccess objAccess = new DataAccess();
    private object objDataAccess;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserInfo"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        else
        {
            lbl_NameSession.Text = ((DataTable)(Session["UserInfo"])).Rows[0]["pName"].ToString() + "<br />" + ((DataTable)(Session["UserInfo"])).Rows[0]["Email"].ToString();
        }
    }

    protected void ln_logout_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        if (Session["UserInfo"] != null)
        {
            dt = (DataTable)Session["UserInfo"];
            objAccess.logouttime(dt.Rows[0]["idcount"].ToString());
        }
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
}
