using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminDash : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadgrid();
            numberOfcustomer();
            numberOffile();
            totalStorage();
        }

        bool ValidRecord = true;
        if (ValidRecord == true)
        {
            string query = "select names from users where ID ='" + Session["user_id"] + "'";
            dt = dbconnect.databaseReturnDt(query);


            if (dt.Rows.Count > 0)
            {

                string names = dt.Rows[0]["names"].ToString();
                welcom_admin.Text = " <br />" + names;
            }
        }

        if (ValidRecord == true)
        {
            string query = "select names from admin where admin_id ='" + Session["user_id"] + "'";
            dt = dbconnect.databaseReturnDt(query);


            if (dt.Rows.Count > 0)
            {

                string names = dt.Rows[0]["names"].ToString();
                welcom_admin.Text = " <br />" + names;
            }
        }
    }


     public void loadgrid()
    {
        string query = "select * from uploadfile ORDER BY id ASC";
        dt = dbconnect.databaseReturnDt(query);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    public void numberOfcustomer()
    {
        string query = "select COUNT(*) AS NumberOfcust from users";
        dt = dbconnect.databaseReturnDt(query);
        msg.Text = dt.Rows[0]["NumberOfcust"].ToString();
    }
    public void numberOffile()
    {
        string query = "select COUNT(*) AS NumberOffile from uploadfile";
        dt = dbconnect.databaseReturnDt(query);
        msg1.Text = dt.Rows[0]["NumberOffile"].ToString();
    }
    public void totalStorage()
    {
     
        string query = "select SUM(filesize) total_storage from uploadfile";
        dt = dbconnect.databaseReturnDt(query);
        msg2.Text = dt.Rows[0]["total_storage"].ToString();
    }

   
    protected void transferFile()
    {

        
    }
   

    private void createDir()
    {

        Response.Write("<script language =Javascript> alert('File Uploaded Successfully,Click Show Images');</script>");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminDash.aspx");
    }
    
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = "";
        Response.Redirect("Default.aspx");

    }
    protected void tranFile_Click(object sender, EventArgs e)
    {
        Button lnkbtn = sender as Button;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        int fileid = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());
        string name, type;


        string query = "SELECT * FROM uploadfile" + " where id = '" + fileid + "'";
        dt = dbconnect.databaseReturnDt(query);
        if (dt.Rows.Count > 0)
        {

            string fileName = dt.Rows[0]["filename"].ToString();
            string fileSize = dt.Rows[0]["filesize"].ToString();

            

            double transTime = double.Parse(fileSize) / 8;
            double transs = Math.Round(transTime);

            string query1 = "insert into transferedFile(filename,filesize,transferedTime) values ("
              + "'" + fileName + "',"
              + "'" + fileSize + "',"
              + "'" + transs.ToString() + "')";
            dbconnect.databaseInsert(query1);


            string query2 = "delete from uploadfile  WHERE id =" + fileid + "";
            dbconnect.databaseInsert(query2);


            System.Threading.Thread.Sleep(1000);
            Response.Redirect("transferedFile.aspx");

        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerInfo.aspx");
    }
}