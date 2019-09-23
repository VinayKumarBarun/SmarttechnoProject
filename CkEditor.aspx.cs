using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CkEditor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_CkEditor_Click(object sender, EventArgs e)
    {
        string str = CKEditor1.Text;
        string str1 = Server.HtmlDecode(str);
        string str2 = Server.HtmlEncode(str);
        lblText.Text = "Text After HtmlDecode : " + str1;
        lbl2.Text = "Text After HtmlEncode : " + str2;
    }
}