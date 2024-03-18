using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class VIPSetings : System.Web.UI.Page
{
    public DataTable Reader = new DataTable();
    Services.Services webservice = new Services.Services();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataTable Info = new DataTable();
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        if (Session["Honest_login"] != "ok")
        {
            Response.Redirect("default.aspx");
        }

        
       

        Info = webservice.Get_UserInfo(int.Parse(Session["ID"].ToString()), 1);
        Mail.Text = Info.Rows[0][1].ToString();
        UserName.Text = Info.Rows[0][3].ToString();

        if (Info.Rows[0][2] != null)
        {
            /* byte[] binaryImage = (byte[])Info.Rows[0][3];


             MemoryStream ms = new MemoryStream(binaryImage);
             Image returnImage = System.Web.UI.WebControls.Image.FromStream(ms);
             ProfilePic=returnImage;*/


        }

    }
    protected void Upload(object sender, EventArgs e)
    {

        byte[] binaryImage = FileUpload1.FileBytes;
        Progress.Text="جاري التحميل";
        try
        {
            webservice.UploadPhoto(binaryImage,1,int.Parse(Session["ID"].ToString()));
            Progress.Text="تم التحميل";
        }
        catch (Exception ex)
        {
            Progress.Text = ex.Message;//"خطأ في التحميل";
        }
    }

    public byte[] imageToByteArray(System.Drawing.Image imageIn) 
    { 
        MemoryStream ms = new MemoryStream(); 
        imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Gif); 
        return ms.ToArray(); 
    }

    
}