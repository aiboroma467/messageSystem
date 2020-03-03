using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;



public partial class custDash : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    string sImageFileExtension;
    string vimage;
    string filesize;
    string filename;
    double upTime;
    int status = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

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

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = "";
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("custDash.aspx");
    }
    protected void uploadf_Click(object sender, EventArgs e)
    {

        bool Validrecord = true;
        if (Validrecord == true)
        {

            if (txtfile.HasFile == true)
            {
                string myMap = MapPath("~/").ToLower();
                Random r = new Random();
                int next = r.Next();
                string ImageName = txtfile.PostedFile.FileName;

                sImageFileExtension = ImageName.Substring(ImageName.LastIndexOf(".")).ToLower();
                if (sImageFileExtension == ".docx" || sImageFileExtension == ".pdf" || sImageFileExtension == ".gif" || sImageFileExtension == ".png" || sImageFileExtension == ".jpg" || sImageFileExtension == ".jpeg" || sImageFileExtension == ".bmp")
                {
                    string ImageSaveURL = myMap + "UserImage/" + next + sImageFileExtension;


                    txtfile.PostedFile.SaveAs(ImageSaveURL);
                    filename = Path.GetFileName(ImageName);
                    filesize = ImageName.Length.ToString();

                    double uploadTime = double.Parse(filesize) / 5;
                    double upTime = Math.Round(uploadTime);

                    string query2 = "insert into uploadfile(filename,filesize,uploadedTime,status) values ("
                     + "'" + filename + "',"
                     + "'" + filesize + "',"
                     + "'" + upTime.ToString() + "',"
                     + "" + status + ")";
                    dbconnect.databaseInsert(query2);

                    System.Threading.Thread.Sleep(8000);
                    msgsucc.Text = "Upload successfull!";


                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Panel3.Visible = true;


                }
            }
            else
            {

            }
        }
        

    }
   
}