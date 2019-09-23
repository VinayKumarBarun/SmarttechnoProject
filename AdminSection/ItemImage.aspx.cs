using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class AdminSection_ItemImage : System.Web.UI.Page
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
        string sql = "SELECT categoryid,category_name FROM TBL_CATEGORY ";
        obj.GetData(ddl_Category, sql, "category_name", "categoryid");
    }
    private void fillItem()
    {
        if (ddl_Category.SelectedIndex > 0)
        {
            string sql = "SELECT itemID,ItemName FROM TBL_ITEMS WHERE categoryid='" + ddl_Category.SelectedValue + "' ";
            obj.GetData(ddl_Items, sql, "ItemName", "itemID");
        }
        else
        {
            ddl_Items.DataSource = null;
            ddl_Items.DataBind();
        }

    } 
    private void ImageItemBind()
    {
        if (ddl_Items.SelectedIndex > 0)
        {
            string sql = "SELECT Itemid,'~/ItemImage/'+Image  AS Image1  FROM  TBL_ITEMS_IMAGE WHERE Itemid='" + ddl_Items.SelectedValue + "' ";
          dlItems.DataSource=  obj.GetData(sql);
          dlItems.DataBind();
        }
        else
        {
            dlItems.DataSource = null;
            dlItems.DataBind();
        }

    }

  protected void Btn_Submit_Click(object sender, EventArgs e)
    {
        //string guid = Guid.NewGuid().ToString() + FileUpload_SelectImage.FileName.Substring(FileUpload_SelectImage.FileName.LastIndexOf("."));
        string guid = Guid.NewGuid().ToString() + System.IO.Path.GetExtension(FileUpload_SelectImage.FileName);
        FileUpload_SelectImage.SaveAs(Server.MapPath("~/ItemImage/") + Path.GetFileName(guid));
        String link = "ItemImage/" + guid;

        string sql = "Insert into TBL_ITEMS_IMAGE(Image,itemID,isActive) values('" + guid + "','" + ddl_Items.SelectedValue + "','" + CheckBox_isActive.Checked + "')";
        int inserted = obj.InsertData(sql);


    }

    public object itemid { get; set; }

    protected void ddl_Category_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillItem();
    }
    protected void ddl_Items_SelectedIndexChanged(object sender, EventArgs e)
    {
        ImageItemBind();
    }
}


 
