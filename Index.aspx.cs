using System;
using System.Data;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    DataAccess obj = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillDetails();
        }
    }
    private void fillDetails()
    {
        string sql = "select *,' Image/'+DisplayImage AS DisplayImage1,' Image/keyboard2.jpeg' AS DisplayImage2 from TBL_CATEGORY";
        dl.DataSource = obj.GetData(sql);
        dl.DataBind();

        //dlMenu.DataSource = dt;
        //dlMenu.DataBind();

    }
}
