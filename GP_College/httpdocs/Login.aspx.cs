using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    public void login(object sender, EventArgs e)
    {
        Services.Services webservice = new Services.Services();
        try
        {

            int Reader = webservice.Login(Login1.UserName, Login1.Password);
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
                    Session["ID"] = webservice.Get_ID(Login1.UserName, 1);
                    Response.Redirect("VIPprofile.aspx?ID=" + webservice.Get_ID(Login1.UserName, 1));

                    break;
                case 3:

                    Session["Honest_login"] = "ok";
                    Session["login_type"] = "User";
                    Session["ID"] = webservice.Get_ID(Login1.UserName, 2);
                    Response.Redirect("userprofile.aspx?ID=" + webservice.Get_ID(Login1.UserName, 2));

                    break;
                default:
                    Login1.FailureText = "عفوا لقد قمت بأدخال بيانات خاطئة برجاء المحاولة مرة اخرى";
                    break;


            }
        }
        catch(Exception ex)
        {
            Response.Redirect("login.aspx");
        }
    }

    [WebMethod]
    public static void authenticate(string auth_type)
    {

       /* switch (auth_type)
        {
            case "1":
                Session["Honest_login"] = "ok";
                Session["login_type"] = "admin";
                Response.Redirect("admin.aspx");

                break;
            case "2":
                Session["Honest_login"] = "ok";
                Session["login_type"] = "VIP";

                Response.Redirect("VIPprofile.aspx?ID=1");

                break;
            case "3":

                Session["Honest_login"] = "ok";
                Session["login_type"] = "User";


                break;
            default:
                Login1.FailureText = "عفوا لقد قمت بأدخال بيانات خاطئة برجاء المحاولة مرة اخرى";
                break;


        }*/
        HttpContext.Current.Response.Redirect("VIPprofile.aspx?ID=1");
    }
}