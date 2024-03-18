using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserSettings : System.Web.UI.Page
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


        Info = webservice.Get_UserInfo(int.Parse(Session["ID"].ToString()), 2);
        Mail.Text = Info.Rows[0][1].ToString();
        UserName.Text = Info.Rows[0][3].ToString();

       



    }
   
}