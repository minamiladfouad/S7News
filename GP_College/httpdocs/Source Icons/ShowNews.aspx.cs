using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShowNews : System.Web.UI.Page
{
    int NewsID;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable Reader = new DataTable();
        try
        {
            NewsID = int.Parse(Request.QueryString["NewsID"]);
        }
        catch
        {
            
        }
        Services.Services webservice = new Services.Services();
        Reader = webservice.GetNews(NewsID);

        if (Session["Honest_login"] == "ok" && Session["login_type"] == "VIP" && webservice.Related_VID(NewsID) == int.Parse(Session["ID"].ToString()))
        {
            
            write_comment.Visible = true;
            submit.Visible = true;
            reset.Visible = true;
            true_news.Visible = true;
            false_news.Visible = true;

            Comment.Text = Reader.Rows[0][10].ToString();

            webservice.NoComment(NewsID);

        }
        else
        {
            try
            {
                Comment.Text = Reader.Rows[0][10].ToString();
            }
            catch
            {
                Content.Text = "برجاء الرجوع للخبر";
            }
        }
        try
        {
            if (Session["login_type"] == "VIP")
            {
                webservice.Read(NewsID, int.Parse(Session["ID"].ToString()), 1);
            }
            if (Session["login_type"] == "User")
            {
                webservice.Read(NewsID, int.Parse(Session["ID"].ToString()), 2);
            }

           
            
            Content.Text = Reader.Rows[0][6].ToString();
            NewsImage.ImageUrl = Reader.Rows[0][4].ToString();
            NewsImage.ToolTip = NewsTitle.Text = Reader.Rows[0][1].ToString();
            NewsTitle.Text = Reader.Rows[0][1].ToString();
            publishDate.Text = Reader.Rows[0][7].ToString();
            SourceIcon.ImageUrl = "source%20icons/" + Reader.Rows[0][8].ToString() + ".png";

            if (Reader.Rows[0][9].ToString() != "0")
            {
                Related_VIP.Visible = true;
                Related_VIP.Text = Reader.Rows[0][13].ToString();
            }
            
            
        }
        catch
        {
            Content.Text = "برجاء الرجوع للخبر";
        }
        

        
        

    }

    public void update_comment(object sender, EventArgs e)
    {
        short feedback = 0;

        if (true_news.Checked)
            feedback = 1;
        else if (false_news.Checked)
            feedback = 2;
        
        Services.Services webservice = new Services.Services();
       
        try
        {
            webservice.Add_Comment(int.Parse(Request.QueryString["NewsID"]), int.Parse(Session["ID"].ToString()), write_comment.Text, DateTime.Now, feedback);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

    public void reset_text(object sender, EventArgs e)
    {
        write_comment.Text = " ";
    }
    protected void write_comment_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void RadioButtonList1_Load(object sender, EventArgs e)
    {
        

    }
}