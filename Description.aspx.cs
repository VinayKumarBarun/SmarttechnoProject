using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Description : System.Web.UI.Page
{
    DataAccess obj = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();
            //varun.Text="<ol> <li> <span ><strong>My name is Varun</strong></span></li> <li> &nbsp;</li> <li> My name is Varun</li> <li> My name is Varun</li> <li> My name is Varun</li> </ol> <p> &nbsp;</p> <table border=1> <tr> <td>S.No.</td> <td>Name</td> <td>Education</td> </tr> </table>";
        }
    }
    private void binddata()
    {

        string itemid = "";
        if (Request.QueryString["itemid"] != null)
        {
            itemid = Request.QueryString["itemid"];

            string query = "SELECT *,'AddImage/'+ImageUpload AS ImageUpload1 FROM TBL_ITEMS WHERE itemid='" + itemid + "'";
            dl.DataSource = obj.GetData(query);
            dl.DataBind(); bindImages(itemid);

        }
    }
    protected void Btn_buynow_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Checkout.aspx");
    }
    private void bindImages(string itemid)
    {
        //string query = "SELECT 'AddImage/'+ImageUpload AS ImageUpload1 FROM TBL_ITEMS  WHERE itemid='" + itemid + "' " +
        //    "UNION SELECT top 10 'ItemImage/'+Image AS ImageUpload1 FROM TBL_ITEMS_IMAGE WHERE itemid='" + itemid + "'";
        string query = "SELECT ImageUpload1 FROM (SELECT 'AddImage/'+ImageUpload AS ImageUpload1 FROM TBL_ITEMS  WHERE itemid='" + itemid + "' UNION " +
            "(SELECT top 10 'ItemImage/'+Image AS ImageUpload1 FROM TBL_ITEMS_IMAGE WHERE itemid='" + itemid + "' ORDER BY ImageID DESC)) AS xx";
        dlItems.DataSource = obj.GetData(query);
        dlItems.DataBind();
    }

}
