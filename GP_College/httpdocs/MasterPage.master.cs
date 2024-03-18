using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        WebService webservice = new WebService();

        DataTable Reader = new DataTable();
        Reader = webservice.Get_Latest_News(5);
        News1.InnerHtml = Reader.Rows[0]["Comment"].ToString();
    }

    public void authenticate(object sender, EventArgs e)
    {
        Services.Services webservice = new Services.Services();
        try
        {

            int Reader = webservice.Login(email.Text, password.Text);
            switch (Reader)
            {
                case 1:
                    Session["Honest_login"] = "ok";
                    Session["login_type"] = "admin";
                    Response.Redirect("admin.aspx");

                    break;
                case 2:
                    Session["Honest_login"] = "ok";
                    Session["login_type"] = "VIP";
                    Session["ID"] = webservice.Get_ID(email.Text, 1);
                    Response.Redirect("VIPprofile.aspx?ID=" + webservice.Get_ID(password.Text, 1));

                    break;
                case 3:

                    Session["Honest_login"] = "ok";
                    Session["login_type"] = "User";
                    Session["ID"] = webservice.Get_ID(email.Text, 2);
                    Response.Redirect("userprofile.aspx?ID=" + webservice.Get_ID(email.Text, 2));

                    break;
                default:
                  //  Login1.FailureText = "عفوا لقد قمت بأدخال بيانات خاطئة برجاء المحاولة مرة اخرى";
                    break;


            }
        }
        catch (Exception ex)
        {
            // Response.Redirect("login.aspx");
        }
    }
}
