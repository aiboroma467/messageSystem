using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


    
public partial class transferedFile : System.Web.UI.Page
{   
    
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadgrid();
    }

    public void loadgrid()
    {
        string query = "select * from transferedFile ORDER BY id ASC";
        dt = dbconnect.databaseReturnDt(query);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}