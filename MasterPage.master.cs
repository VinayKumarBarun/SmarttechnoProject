using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
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
        string sql = "select *,'Image/'+DisplayImage AS DisplayImage1 from  TBL_CATEGORY WHERE isactive=1 AND show_in_header=1";
        dlMenu.DataSource = obj.GetData(sql);
        dlMenu.DataBind();
    }
}
