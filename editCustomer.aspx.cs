using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class editCustomer : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    string ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["edit_ID"] == null || Session["edit_ID"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }

        ID = Session["edit_ID"].ToString(); //get the id from grid
        if (!IsPostBack)
        {
            Load_Form();
        }
    }

    public void Load_Form()
    {
        string str = "SELECT * FROM users" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(str);

     

        name.Text = dt.Rows[0]["names"].ToString();
        phone.Text = dt.Rows[0]["phone"].ToString();
        email.Text = dt.Rows[0]["email"].ToString();
        pwd.Text = dt.Rows[0]["password"].ToString();

    }
    protected void Update_Click(object sender, EventArgs e)
    {
        string str2 = "UPDATE users SET " + "names='" + name.Text.Replace("'", "\''") + "', " +
                   "phone='" + phone.Text.Replace("'", "\''") + "', " +
                   "email='" + email.Text.Replace("'", "\''") + "', " +
                   "password='" + pwd.Text.Replace("'", "\''") + "'" +
                   " where id='" + ID + "'";
        dt = dbconnect.databaseReturnDt(str2);

        Response.Redirect("customerInfo.aspx");
    }

    protected void changPwd_Click(object sender, EventArgs e)
    {
        
        string Newpassword = newpwd.Text.Replace("'", "\''");
        string oldpassword = oldpwd.Text.Replace("'", "\''");

        string query = "SELECT * FROM users" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(query);

        if (dt.Rows[0]["password"].ToString() != oldpassword)
        {
            msgPwd.Text = "Password entered is incorrect";
            return;
        }
        else
        {
            string update = "update users set password='" + Newpassword + "' where id='" + ID + "'";
            dbconnect.databaseInsert(update);

            Panel1.Visible = true;
            Panel2.Visible = false;
            //Image6.Visible = true;
            //msgSucc.Text = "Successfull";
        }
    }
    protected void LinkEdit_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerInfo.aspx");
    }
    protected void canPwd_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    
}