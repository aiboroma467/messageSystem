using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class sign_up : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();

    int status = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void signUp_Click(object sender, EventArgs e)
    {
        bool Validrecord = true;
        string query1 = "SELECT * FROM users WHERE email='" + email.Text.Replace("'", "\''") + "' and phone='" + phone.Text.Replace("'", "\''") + "'";
        
        dt = dbconnect.databaseReturnDt(query1);
        if (dt.Rows.Count > 0)
        {
            Validrecord = false;

           msgfal.Text ="Email Or PhoneNo already exsist";
            name.Focus();
            Panel1.Visible = true;
            Panel2.Visible = false;
            //return;
        }

        if (Validrecord == true)
        {
            string query = "insert into users(names,phone,email,password,confirm,regdate) values ("
                + "'" + name.Text.Replace("'", "\''") + "',"
                + "'" + phone.Text.Replace("'", "\''") + "',"
                + "'" + email.Text.Replace("'", "\''") + "',"
                + "'" + pwd.Text.Replace("'", "\''") + "',"
                + "'" + confirm.Text.Replace("'", "\''") + "',"
                + "'" + DateTime.Now.ToString() + "')";
            dbconnect.databaseInsert(query);

            msgsucc.Text = "Successful Registration ";
            
            Panel1.Visible = false;
            Panel2.Visible = true;
            

        }
        else {
            msgfal.Text = "Something went wrong";

            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        name.Text = "";
        phone.Text = "";
        email.Text = "";
        pwd.Text = "";
        confirm.Text = "";
        msgsucc.Text = "";
        msgfal.Text = "";

        Panel1.Visible = false;
        Panel2.Visible = false;
    }

}