using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class follow : System.Web.UI.Page
{
    public DataTable Reader = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Services.Services webservice = new Services.Services();
        Reader = webservice.Get_All_VIPs();
        










        Chart1.Series[0].Points[0].YValues[0] = Calc_Evaluation.Evaluation("filgoal");

        ///////////////// Evaluate yallakora///////////////

        Chart1.Series[0].Points[1].YValues[0] = Calc_Evaluation.Evaluation("yallakora");

        ///////////////// Evaluate Elshrok//////////////

        Chart1.Series[0].Points[2].YValues[0] = Calc_Evaluation.Evaluation("Elshrok");

        ///////////////// Evaluate Arabia///////////////

        Chart1.Series[0].Points[3].YValues[0] = Calc_Evaluation.Evaluation("Arabia");
    }
}