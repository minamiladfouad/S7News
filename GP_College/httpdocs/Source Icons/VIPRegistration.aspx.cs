using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VIPRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mail = Email.Text;
        string pass = Password.Text;
        string username = UserName.Text;
        string fullname = LastName.Text + " " + FirstName.Text;
        string secretA = SecretA.Text;
        int phonenum = System.Convert.ToInt32(PhoneNumber.Text);
        string address = Address.Text;
        string job = Job.Text;
        string BD = Month.SelectedIndex + "/" + Day.Text + "/" + Year.Text;
        Services.Services webservice = new Services.Services();
        Boolean gender;
        if (Gender_List.SelectedIndex == 0)
            gender = true;
        else
            gender = false;
        DateTime birthdate = DateTime.Parse(BD);
        DateTime registerdate = DateTime.Now;

        Services.Services R = new Services.Services();
        bool Reader = R.VIPRegister(mail, username, fullname, gender, phonenum, address, job, birthdate, pass, short.Parse(Questions.SelectedIndex.ToString()), secretA, registerdate);

        if (Reader == true)
        {


            Session["Honest_login"] = "ok";
            Session["login_type"] = "VIP";
            Session["ID"] = webservice.Get_ID(mail, 1);
            Response.Redirect("userprofile.aspx?ID=" + webservice.Get_ID(mail, 1));

        }

        else
        {
            Response.Redirect("login.aspx");

        }
    }

}

