using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class AdminSection_ItemMaster : System.Web.UI.Page
{
    DataAccess obj = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillCategory();
        }
    }
    private void fillCategory()
    {

        string sql = "SELECT categoryid,category_name FROM TBL_CATEGORY WHERE IsActive=1";
        obj.GetData(DropCategory, sql, "category_name", "categoryid");

    }
    protected void btnAddItemCategory_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/AddImage/") + Path.GetFileName(FileUpload1.FileName));
        String link = "Image/" + Path.GetFileName(FileUpload1.FileName);
        string sql = "Insert into  TBL_ITEMS_IMAGE(categoryid,ItemName,Price,BrandsName,ProductCode,AvailableStock,ImageUpload) values('" + DropCategory.SelectedValue + "','" + txtItemName.Text + "','" + txtPrice.Text + "','" + txtBrandsName.Text + "','" + txtProductName.Text + "','" + txtAvailableStatus.Text + "','" + FileUpload1.FileName + "')";
        int inserted = obj.InsertData(sql);
        if (inserted > 0)
        {
            fillCategory();
        }

    }
}