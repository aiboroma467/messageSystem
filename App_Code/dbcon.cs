using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//using MySql.Data;
//using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for dbcon
/// </summary>
public class dbcon
{

    public dbcon()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int databaseInsert(string query)
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand(query, cn);
        int result = cmd.ExecuteNonQuery();
        cn.Close();
        return result;
    }

    public DataSet databaseReturnDs(string query)
    {
        DataSet ds = new DataSet();
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cmd.ExecuteNonQuery();
        cn.Close();
        return ds;
    }


    public DataTable databaseReturnDt(string Query)
    {
        DataTable dt = new DataTable();
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand(Query, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cmd.ExecuteNonQuery();
        cn.Close();
        return dt;


    }
}