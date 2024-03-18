using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public DataTable Most_Viewed = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //========================Load Plugin News============================
        Services.Services webservice = new Services.Services();

       DataTable Reader = new DataTable();
       Reader= webservice.CommentedNews();
      
       News1.Text = Reader.Rows[0][1].ToString();
       Image1.ImageUrl = Reader.Rows[0][4].ToString();
       Read_more1.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[0][0].ToString(); 
       Comment1.Text = Reader.Rows[0][10].ToString();
       Date1.Text= Reader.Rows[0][7].ToString();
       source1.Text= Reader.Rows[0][8].ToString();
       News1_VIP.Text = Reader.Rows[0][13].ToString();

      
       News2.Text = Reader.Rows[1][1].ToString();
       Image2.ImageUrl = Reader.Rows[1][4].ToString();
       Read_more2.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[1][0].ToString();
       Comment2.Text = Reader.Rows[1][10].ToString();
       Date2.Text = Reader.Rows[1][7].ToString();
       source2.Text = Reader.Rows[1][8].ToString();
       News2_VIP.Text = Reader.Rows[1][13].ToString();

       News3.Text = Reader.Rows[2][1].ToString();
       Image3.ImageUrl = Reader.Rows[2][4].ToString();
       Read_more3.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[2][0].ToString();
       Comment3.Text = Reader.Rows[2][10].ToString();
       Date3.Text = Reader.Rows[2][7].ToString();
       source3.Text = Reader.Rows[2][8].ToString();
       News3_VIP.Text = Reader.Rows[2][13].ToString();

       News4.Text = Reader.Rows[3][1].ToString();
       Image4.ImageUrl = Reader.Rows[3][4].ToString();
       Read_more4.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[3][0].ToString();
       Comment4.Text = Reader.Rows[3][10].ToString();
       Date4.Text = Reader.Rows[3][7].ToString();
       source4.Text = Reader.Rows[3][8].ToString();
       News4_VIP.Text = Reader.Rows[3][13].ToString();
 
  
        //========================Load Political News===============================
       String serverURL = ConfigurationManager.AppSettings["HostServerURL"].ToString();
       Reader = webservice.Category_News("political");
      Political_News1_Header.Text = Reader.Rows[0][1].ToString();
      Political_News1_Header.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[0][0].ToString(); 
       Political_News1_Comment.Text = Reader.Rows[0][10].ToString();
       Image_News1_Political.ImageUrl = Reader.Rows[0][4].ToString();
       Political_News1_SourceImage.ImageUrl = serverURL + "/source%20icons/" + Reader.Rows[0][8].ToString() + ".png";
       Political_News1_PubDate.Text = Reader.Rows[0][7].ToString();
        //========================Load Sports News===============================
       Reader = webservice.Category_News("sports");
       Sport_News1_Header.Text = Reader.Rows[0][1].ToString();
       Sport_News1_Header.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[0][0].ToString();
       Sport_News1_Comment.Text = Reader.Rows[0][10].ToString();
       Sport_News1_Image.ImageUrl = Reader.Rows[0][4].ToString();
       Sport_News1_SourceImage.ImageUrl = serverURL + "/source%20icons/" + Reader.Rows[0][8].ToString() + ".png";
       Sport_News1_PubDate.Text = Reader.Rows[0][7].ToString();

       //========================Load Fan News===============================
       Reader = webservice.Category_News("fan");
       Fan_News1_Header.Text = Reader.Rows[0][1].ToString();
       Fan_News1_Header.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[0][0].ToString();
       Fan_News1_Comment.Text = Reader.Rows[0][10].ToString();
       Fan_News1_Image.ImageUrl = Reader.Rows[0][4].ToString();
       Fan_News1_SourceImage.ImageUrl = serverURL + "/source%20icons/" + Reader.Rows[0][8].ToString() + ".png";
       Fan_News1_PubDate.Text = Reader.Rows[0][7].ToString();
       //========================Load Economy News===============================
       Reader = webservice.Category_News("economy");
       Economy_News1_Header.Text = Reader.Rows[0][1].ToString();
       Economy_News1_Header.NavigateUrl = "shownews.aspx?NewsID=" + Reader.Rows[0][0].ToString();
       Economy_News1_Comment.Text = Reader.Rows[0][10].ToString();
       Economy_News1_Image.ImageUrl = Reader.Rows[0][4].ToString();
       Economy_News1_SourceImage.ImageUrl = serverURL + "/source%20icons/" + Reader.Rows[0][8].ToString() + ".png";
       Economy_News1_PubDate.Text = Reader.Rows[0][7].ToString();

       
       Most_Viewed = webservice.Most_Viewed(3);
       MostViewd_Pic1.ImageUrl = Most_Viewed.Rows[0][6].ToString();
       MostViewd_Title1.Text = Most_Viewed.Rows[0][3].ToString();

       MostViewd_Pic2.ImageUrl = Most_Viewed.Rows[1][6].ToString();
       MostViewd_Title2.Text = Most_Viewed.Rows[1][3].ToString();

       MostViewd_Pic3.ImageUrl = Most_Viewed.Rows[2][6].ToString();
       MostViewd_Title3.Text = Most_Viewed.Rows[2][3].ToString();
        ///////////// chart area////////
        ///////////////// Evaluate filgaol///////////////

       Chart1.Series[0].Points[0].YValues[0] = Calc_Evaluation.Evaluation("filgoal");
       
       ///////////////// Evaluate yallakora///////////////

       Chart1.Series[0].Points[1].YValues[0] = Calc_Evaluation.Evaluation("yallakora");

       ///////////////// Evaluate Elshrok//////////////

        Chart1.Series[0].Points[2].YValues[0] = Calc_Evaluation.Evaluation("Elshrok");

       ///////////////// Evaluate Arabia///////////////

       Chart1.Series[0].Points[3].YValues[0] = Calc_Evaluation.Evaluation("Arabia");
       Chart1.Series[0].Points[4].YValues[0] = Calc_Evaluation.Evaluation("Masrawy");


        
    }

    
}
