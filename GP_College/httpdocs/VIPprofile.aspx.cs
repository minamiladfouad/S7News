using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class VIPprofile : System.Web.UI.Page
{
    public DataTable Reader = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable Info = new DataTable();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        if (Session["Honest_login"] != "ok")
        {
            Response.Redirect("default.aspx");
        }

        Services.Services webservice = new Services.Services();
        Reader = new System.Data.DataTable();
        Reader = webservice.Get_VIP_News(int.Parse(Session["ID"].ToString()));

        Info = webservice.Get_UserInfo(int.Parse(Session["ID"].ToString()), 1);
        Mail.Text = Info.Rows[0][2].ToString();
        UserName.Text = Info.Rows[0][5].ToString();

        if (Info.Rows[0][2] != null)
        {
            /* byte[] binaryImage = (byte[])Info.Rows[0][3];


             MemoryStream ms = new MemoryStream(binaryImage);
             Image returnImage = System.Web.UI.WebControls.Image.FromStream(ms);
             ProfilePic=returnImage;*/


        }

        

    }
    /*
    public Image byteArrayToImage(byte[] byteArrayIn)
    {
        MemoryStream ms = new MemoryStream(byteArrayIn);
        Image returnImage = Image.FromStream(ms);
        return returnImage;
    }
     */


}