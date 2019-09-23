using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Configuration;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    SqlConnection con;
    public DataAccess()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string getConnectionString()
    {
        string constr = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString.ToString();
        return constr;
    }

    public object getData(string sql)
    {
        throw new NotImplementedException();
    }

    public DataTable GetData(string query)
    {
        con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(query, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        return dt;
    }
    public void GetData(DropDownList ddl, string query, string DataTextField, string DataValueField)
    {
        con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(query, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        ddl.DataTextField = DataTextField;
        ddl.DataValueField = DataValueField;
        ddl.DataSource = dt;
        ddl.DataBind();
        ddl.Items.Insert(0, "--SELECT--");
    }

    public int InsertData(string query)
    {
        con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(query, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        return cmd.ExecuteNonQuery();
    }


    public DataTable UserMaster(string FirstName, string LastName, string Email, string PhoneNo, string Company, string Pin, string Address, string Profile, string password)
    {
        DataTable dt = new DataTable();
        {
            using (SqlConnection con = new SqlConnection(getConnectionString()))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("UserMaster", con))
                {
                    cmd.Parameters.AddWithValue("@FirstName", FirstName);
                    cmd.Parameters.AddWithValue("@LastName", LastName);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@PhoneNo", PhoneNo);
                    cmd.Parameters.AddWithValue("@Company", Company);
                    cmd.Parameters.AddWithValue("@Pin", Pin);
                    cmd.Parameters.AddWithValue("@Address", Address);
                    cmd.Parameters.AddWithValue("@Profile", Profile);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataReader dr = cmd.ExecuteReader();
                    dt.Load(dr);
                }
            }
        }
        return dt;
    }

    public DataTable UserLogin(string Email, string password, string IpAddress)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(getConnectionString()))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("UserLogin", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@IpAddress", IpAddress);

                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
            }
        }
        return dt;
    }
    public DataTable logouttime(string idcount)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(getConnectionString()))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("logouttime", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcount", idcount);
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
            }
        }
        return dt;
    }


    public string GetIPAddress()
    {
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        if (!string.IsNullOrEmpty(ipAddress))
        {
            string[] addresses = ipAddress.Split(',');
            if (addresses.Length != 0)
            {
                return addresses[0];
            }
        }
        return context.Request.ServerVariables["REMOTE_ADDR"];
    }
    public string GetData()
    {
        throw new NotImplementedException();
    }

    public void GetData(DropDownList Drop_itemImage, string sql, string p)
    {
        throw new NotImplementedException();
    }

    public void getData(SqlDataReader dr, string sql)
    {
        throw new NotImplementedException();
    }
}