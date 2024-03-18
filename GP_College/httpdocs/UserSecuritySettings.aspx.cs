using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserSecuritySettings : System.Web.UI.Page
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

        UserName_New.Text = Info.Rows[0][3].ToString();
        Questions.SelectedIndex = int.Parse(Info.Rows[0][5].ToString());
        SecretA.Text = Info.Rows[0][6].ToString();



    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Services.Services webservice = new Services.Services();
        webservice.Edit_Private_Security(int.Parse( Session["ID"].ToString()), 2, UserName_New.Text, Password_New.Text,short.Parse(Questions.SelectedIndex.ToString()), SecretA.Text);

    }
}