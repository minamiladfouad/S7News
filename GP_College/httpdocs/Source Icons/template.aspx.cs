using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class template : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        red.Visible = true;
        green.Visible = true;
    }
    public void submit(object sender, CommandEventArgs e)
    {
        /*if (red.Checked)
   Label1.Text="You selected " + red.Text;
else
            if (green.Checked)
   Label1.Text="You selected " + green.Text;
        */
        Response.Write(e.CommandName);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = FileUpload1.FileName;
    }
}