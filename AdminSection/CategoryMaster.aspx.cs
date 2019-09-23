using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class AdminSection_CategoryMaster : System.Web.UI.Page
{
    DataAccess obj = new DataAccess();
    private string connectionstring;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }


    protected void btncategory_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            //Label1.Text = "Select I";
            //Label1.ForeColor = System.Drawing.Color.Red;
            return;
        }
        FileUpload1.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(FileUpload1.FileName));
        String link = "Image/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into  TBL_CATEGORY(category_name,IsActive,Show_In_Header,DisplayImage,category_order) values('" + txtcatname.Text.ToUpper() + "','" + checkbox_isactive.Checked + "','" + checkboxShowInHeader.Checked + "','" + FileUpload1.FileName + "','" + ddl_Categoryid.SelectedValue + "')";
        int inserted = obj.InsertData(query);
        if (inserted > 0)
        {
            fillGrid();
        }
        //Label1.Text = "Data Has Been Saved Successfully";
        //Label1.ForeColor = System.Drawing.Color.Blue; 
        txtcatname.Text = "";
        checkbox_isactive.Checked = checkboxShowInHeader.Checked = false;
        fillGrid();
     }


    private void fillGrid()
    {
        string qry = " select categoryid,UPPER(category_name) category_name, case when IsActive=1 then 'Active' else 'Inactive' end AS IsActive" +
       ",case when Show_In_Header = 1 then 'Active' else 'Inactive' end AS Show_In_Header,'../Image/'+DisplayImage DisplayImage, category_order from TBL_CATEGORY  ORDER BY categoryid DESC";
        

        Grd_Categoryid1.DataSource = obj.GetData(qry);
        Grd_Categoryid1.DataBind();

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void txtcatname_TextChanged(object sender, EventArgs e)
    {
        // txtcatname.Text = txtcatname.Text.ToUpper();

    }

    protected void Grd_Categoryid1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "redit")
        {
        }
    }
}

 