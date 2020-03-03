using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class customerInfo : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadgrid();
        }
    }
    public void loadgrid()
    {
        string query = "select * from users ORDER BY id ASC";
        dt = dbconnect.databaseReturnDt(query);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool ValidRecord = true;
        if (txtSearch.Text == "")
        {
            ValidRecord = false;
            //Panel1.Visible = true;
           // msg.Text = "Please enter name or file number";
            return;
        }
        if (ValidRecord == true)
        {

            string str = "select * from users where names like '%" + txtSearch.Text.Replace("'", "\''") + "%' or email like '%" + txtSearch.Text.Replace("'", "\''") + "%'";
            dt = dbconnect.databaseReturnDt(str);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        else
        {
            //Panel1.Visible = true;
            //msg.Text = "No records found for the search criteria";

        }
        //msg.Text = "";
        txtSearch.Text = "";
       
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        Button editBtn = sender as Button;
        GridViewRow gvrow = editBtn.NamingContainer as GridViewRow;
        int edit_id = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());
        string name, type;

        Session["edit_ID"] = edit_id;
        Response.Redirect("editCustomer.aspx");
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        Button delBtn = sender as Button;
        GridViewRow gvrow = delBtn.NamingContainer as GridViewRow;
        int del_id = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());
        string name, type;


            string query2 = "delete from users  WHERE id =" + del_id + "";
            dbconnect.databaseInsert(query2);

            Response.Redirect("customerInfo.aspx");
        
    }

}