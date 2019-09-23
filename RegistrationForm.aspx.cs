using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RegistrationForm : System.Web.UI.Page
{


    DataAccess objDataAccess = new DataAccess();


    // private string connectionstring;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btn_RegistrationFrom_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            Random generator = new Random();
            String pass = generator.Next(0, 999999).ToString("D8");
            dt = objDataAccess.UserMaster(txtFirstName.Text.Trim(), txtLastName.Text.Trim(), txtEmail.Text.Trim(), txtPhoneNo.Text.Trim(), txtCompany.Text.Trim(), txtpincode.Text.Trim(), txt_Address.Text.Trim(), Fu_profile.FileName.Trim(), pass);

            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0][0].ToString().Substring(0, 1) != "!")
                {
                    lbl_message.Text = dt.Rows[0][0].ToString();
                    lbl_message.ForeColor = System.Drawing.Color.Green;
                    EmailSender objEmail = new EmailSender();
                    objEmail.SendRegEmail(txtFirstName.Text, txtEmail.Text, pass);
                    Response.Redirect("Login.aspx?mail=" + txtEmail.Text.Trim() + "&msg=success");
                }
                else
                {
                    lbl_message.Text = dt.Rows[0][0].ToString().Substring(1);
                    lbl_message.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {

                lbl_message.Text = "Record Not Updated";
            }
        }
        catch
        {

            lbl_message.Text = "Record Not Updated";
        }
    }


}




