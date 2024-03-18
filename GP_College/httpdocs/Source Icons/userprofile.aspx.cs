using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.IO;

public partial class userprofile : System.Web.UI.Page
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
        Reader = webservice.FollowedVIP_News(int.Parse(Session["ID"].ToString()),2);

        Info = webservice.Get_UserInfo(int.Parse(Session["ID"].ToString()), 2);
        Mail.Text = Info.Rows[0][1].ToString();
        UserName.Text = Info.Rows[0][3].ToString();

        if (Info.Rows[0][2].ToString() != "")
        {
           /* byte[] binaryImage = (byte[])Info.Rows[0][3];


            MemoryStream ms = new MemoryStream(binaryImage);
            Image returnImage = System.Web.UI.WebControls.Image.FromStream(ms);
            ProfilePic=returnImage;*/

           
        }
        DataTable followed = new DataTable();
        followed = webservice.Followed_VIPs(int.Parse(Session["ID"].ToString()),2);
        if (followed.Rows.Count == 0)
        {
            Label1.Visible = true;
            HyperLink1.Visible = true;
        }
    }
}