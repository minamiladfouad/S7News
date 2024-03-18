using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegistartion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mail = Email.Text;
        string pass = Password.Text;
        string username = UserName.Text;
        string secretA = SecretA.Text;
        string BD = Month.SelectedIndex + "/" + Day.Text + "/" + Year.Text;
        Services.Services webservice = new Services.Services();
        /*short secretQ = System.Convert.ToInt16(Questions.Text);*/
        // Boolean gender = System.Convert.ToBoolean(Gender_List);
        Boolean gender;
        if (Gender_List.SelectedIndex == 0)
            gender = true;
        else
            gender = false;
        DateTime birthdate = DateTime.Parse(BD);
        DateTime registerdate = DateTime.Now;

        Services.Services R = new Services.Services();

        bool Reader = R.UserRegister(mail, username, pass, short.Parse(Questions.SelectedIndex.ToString()), secretA, gender, birthdate, registerdate);

        if (Reader == true)
        {
           

            Session["Honest_login"] = "ok";
            Session["login_type"] = "User";
            Session["ID"] = webservice.Get_ID(mail, 2);
            Response.Redirect("userprofile.aspx?ID=" + webservice.Get_ID(mail, 2));

        }

        else
        {
            Response.Redirect("login.aspx");

        }
    }
}
