using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class edit2 : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    string ID;
    string sImageFileExtension;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Session["username"] == null || Session["username"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }*/
        ID = Request.QueryString["id"]; //get the id from grid
        if (!IsPostBack)
        {
            Load_Form();
        }

    }
    public void Load_Form()
    {
        string str = "SELECT * FROM prisoner" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(str);

        lblname.Text = dt.Rows[0]["names"].ToString();
        lblgender.Text = dt.Rows[0]["gender"].ToString();
        lblage.Text = dt.Rows[0]["age"].ToString();
        lbleducation.Text = dt.Rows[0]["education"].ToString();
        lblstate.Text = dt.Rows[0]["state_origin"].ToString();
        lblnation.Text = dt.Rows[0]["nationality"].ToString();
        lblmarital.Text = dt.Rows[0]["marital"].ToString();
        lbloffence.Text = dt.Rows[0]["offence"].ToString();
        lbljudge.Text = dt.Rows[0]["date_judgement"].ToString();
        lblconvict.Text = dt.Rows[0]["date_convicted"].ToString();
        lblprisonN.Text = dt.Rows[0]["prison_name"].ToString();
        lblsentence.Text = dt.Rows[0]["sentence"].ToString();
        lblfile.Text = dt.Rows[0]["file_no"].ToString();


        transTime.Text = DateTime.Now.ToString();
        dataTime.Text = dt.Rows[0]["Ditem_time"].ToString();

        string image = dt.Rows[0]["imagename"].ToString();

        if (image == "NoImage")
        {
            Image9.ImageUrl = "image/nill.jpg";
        }
        else
        {
            Image9.ImageUrl = "~/UserImage/" + image;
        }

    }
    protected void Save_Click(object sender, EventArgs e)
    {
        string str = "SELECT * FROM prisoner" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(str);

        if (dataTime.Text == dt.Rows[0]["Ditem_time"].ToString())
        {
            if (picE.HasFile == false)
             {
                string str2 = "UPDATE prisoner SET " + "names='" + nameE.Text.Replace("'", "\''") + "', " +
                   "gender='" + genderE.Text.Replace("'", "\''") + "', " +
                   "age='" + ageE.Text.Replace("'", "\''") + "', " +
                   "education='" + educationE.Text.Replace("'", "\''") + "', " +
                   "state_origin='" + stateE.Text.Replace("'", "\''") + "', " +
                   "nationality='" + nationE.Text.Replace("'", "\''") + "', " +
                   "marital='" + maritalE.Text.Replace("'", "\''") + "', " +
                   "offence='" + offenceE.Text.Replace("'", "\''") + "', " +
                   "date_convicted='" + convictE.Text.Replace("'", "\''") + "', " +
                   "file_no='" + fileE.Text.Replace("'", "\''") + "', " +
                   "prison_name='" + prisonE.Text.Replace("'", "\''") + "', " +
                   "sentence='" + sentenceE.Text.Replace("'", "\''") + "'" +
           
                   " where id='" + ID + "'";
                dt = dbconnect.databaseReturnDt(str2);


                string update = "Update prisoner set Ditem_time ='" + transTime.Text + "' where id ='" + ID + "'";
                dbconnect.databaseInsert(update);

                Response.Redirect("inmates.aspx");


            }
            else if (picE.HasFile == true)
            {
                string myMap = MapPath("~/").ToLower();
                Random r = new Random();
                int next = r.Next();
                string ImageName = picE.PostedFile.FileName;

                sImageFileExtension = ImageName.Substring(ImageName.LastIndexOf(".")).ToLower();
                if (sImageFileExtension == ".gif" || sImageFileExtension == ".png" || sImageFileExtension == ".jpg" || sImageFileExtension == ".jpeg" || sImageFileExtension == ".bmp")
                {
                    string ImageSaveURL = myMap + "UserImage/" + next + sImageFileExtension;

                    picE.PostedFile.SaveAs(ImageSaveURL);

                    string str2 = "UPDATE prisoner SET " + "names='" + nameE.Text.Replace("'", "\''") + "', " +
                       "gender='" + genderE.Text.Replace("'", "\''") + "', " +
                       "age='" + ageE.Text.Replace("'", "\''") + "', " +
                       "education='" + educationE.Text.Replace("'", "\''") + "', " +
                       "state_origin='" + stateE.Text.Replace("'", "\''") + "', " +
                       "nationality='" + nationE.Text.Replace("'", "\''") + "', " +
                       "marital='" + maritalE.Text.Replace("'", "\''") + "', " +
                       "offence='" + offenceE.Text.Replace("'", "\''") + "', " +
                       "date_convicted='" + convictE.Text.Replace("'", "\''") + "', " +
                        "imagename='" + next + sImageFileExtension + "', " +
                       "file_no='" + fileE.Text.Replace("'", "\''") + "', " +
                       "prison_name'" + prisonE.Text.Replace("'", "\''") + "', " +
                       "sentence='" + sentenceE.Text.Replace("'", "\''") + "'" +


                       " where id='" + ID + "'";
                    dt = dbconnect.databaseReturnDt(str2);


                    string update = "Update prisoner set Ditem_time ='" + transTime.Text + "' where 1d ='" + ID + "'";
                    dbconnect.databaseInsert(update);

                    Response.Redirect("inmates.aspx");
                }
            }
            else
            {
            }
        }
        else
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
            Panel1.Visible = false;
            msg2.Text = " not succesful! The record you attempted to update has been modified by another user"
                + " <br/>Click Continue to start over again";
        }

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("inmates.aspx");
       
    }
    protected void Edit_Click(object sender, EventArgs e)
    {
        string str = "SELECT * FROM prisoner" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(str);

        lblID.Text = "<h4>Update Inmate record</h4>";
        nameE.Text = dt.Rows[0]["names"].ToString();
        genderE.Text = dt.Rows[0]["gender"].ToString();
        ageE.Text = dt.Rows[0]["age"].ToString();
        educationE.Text = dt.Rows[0]["education"].ToString();
        stateE.Text = dt.Rows[0]["state_origin"].ToString();
        nationE.Text = dt.Rows[0]["nationality"].ToString();
        maritalE.Text = dt.Rows[0]["marital"].ToString();
        offenceE.Text = dt.Rows[0]["offence"].ToString();
        judgeE.Text = dt.Rows[0]["date_judgement"].ToString();
        convictE.Text = dt.Rows[0]["date_convicted"].ToString();
        prisonE.Text = dt.Rows[0]["prison_name"].ToString();
        sentenceE.Text = dt.Rows[0]["sentence"].ToString();
        fileE.Text = dt.Rows[0]["file_no"].ToString();

        transTime2.Text = transTime.Text;
        dataTime2.Text = dataTime.Text;
        Panel1.Visible = false;
        Panel2.Visible = true;
        
    


    }
    protected void msgback_Click(object sender, EventArgs e)
    {
        Response.Redirect("inmates.aspx");
    }
}