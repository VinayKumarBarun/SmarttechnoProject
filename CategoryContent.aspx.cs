using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CategoryContent : System.Web.UI.Page
{
    DataAccess obj = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();
        }
    }
    private void binddata()
    {
        string catid = "";
        if (Request.QueryString["catid"] != null)
        {
            catid = Request.QueryString["catid"];

            string query = "SELECT *,'AddImage/'+ImageUpload AS ImageUpload1 FROM TBL_ITEMS WHERE categoryid='" + catid + "'";
            dl1.DataSource = obj.GetData(query);
            dl1.DataBind();


        }
    }
    protected void btn_AddToCard_Click(object sender, EventArgs e)
    {

    }
    public string sql { get; set; }

    public SqlConnection con { get; set; }


}