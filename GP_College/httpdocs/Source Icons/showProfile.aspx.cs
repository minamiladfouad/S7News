using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class showProfile : System.Web.UI.Page
{
    public DataTable Reader = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable Info = new DataTable();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
       

        Services.Services webservice = new Services.Services();
        Reader = new System.Data.DataTable();
        Reader = webservice.Get_VIP_News(int.Parse(Request.QueryString["VID"]));

        Info = webservice.Get_UserInfo(int.Parse(Request.QueryString["VID"]), 1);
        Mail.Text = Info.Rows[0][2].ToString();
        UserName.Text = Info.Rows[0][3].ToString();
        if (Session["login_type"] == "User")
        {
            
            

            DataTable Followed_VIPs = new DataTable();
            Followed_VIPs = webservice.Followed_VIPs(int.Parse(Session["ID"].ToString()),2);
            bool followed = false;
            for (int i = 0; i < Followed_VIPs.Rows.Count; i++)
            {
                if (Followed_VIPs.Rows[i][1].ToString() == Request.QueryString["VID"])
                {
                    followed = true;
                }
            }

            if (followed)
            {
                Unfollow.Visible = true;
                Label1.Visible = false;

            }
            else
            {
                Button1.Visible = true;
                Label1.Visible = false;
                
            }


        }
        if (Info.Rows[0][2] != null)
        {
            /* byte[] binaryImage = (byte[])Info.Rows[0][3];


             MemoryStream ms = new MemoryStream(binaryImage);
             Image returnImage = System.Web.UI.WebControls.Image.FromStream(ms);
             ProfilePic=returnImage;*/


        }

        if (Reader.Rows.Count == 0)
        {
            Label2.Visible = true;

        }




        ////////////////////////////////////////////////////

     

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
            Services.Services webservice = new Services.Services();
            webservice.Follow_VIP(int.Parse(Session["ID"].ToString()), int.Parse(Request.QueryString["VID"]),2);
            Button1.Visible = false;
            Unfollow.Visible = true;
            Label1.Visible = true;
            Label1.Text = "تم المتابعة بنجاح";
        
    }
    protected void Unfollow_Click(object sender, EventArgs e)
    {
        Services.Services webservice = new Services.Services();
        webservice.Unfollow(int.Parse(Request.QueryString["VID"]), int.Parse(Session["ID"].ToString()),2);
        Response.Redirect(Request.RawUrl);
    }
}