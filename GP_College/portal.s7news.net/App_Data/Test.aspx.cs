using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //testS.Registeration R = new testS.Registeration();
        //string x = R.Check(1);
       // Response.Write(x);
        Filgoal y = new Filgoal();
        List<News> L = new List<News>();
        L = y.ReadNews();
        Response.Write(L.ElementAt(1).get_image());
        

    }
}