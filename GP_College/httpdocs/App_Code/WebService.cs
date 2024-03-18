using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

   static string DataSource = "184.168.194.68";
    static string InitialCatalog = "s7NewsDB";
    static string UserID = "hanyn";
    static string Password = "Mjuz$861";

    static string Connection = "Data Source=" + DataSource + ";Initial Catalog=" + InitialCatalog + ";User id=" + UserID + ";Password=" + Password + ";";

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent();
    }

    public string Mobile_Convert(DataTable ServiceOut)
    {
        string Result = "";

        for (int i = 0; i < ServiceOut.Rows.Count; i++)
        {
            for (int j = 0; j < ServiceOut.Columns.Count; j++)
            {

                Result += ServiceOut.Rows[i][j] + "$";
            }
            Result += "#";
        }

        return Result;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Category_News(string Cat)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.Category ='" + Cat + "' and News.VID = VIPs.VID ORDER BY PublishDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "Category News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable CommentedNews()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.CommFlag= 1 ORDER BY News.CommentDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "Commented News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable GetNews(int NewsID)
    {
        SqlConnection conn = new SqlConnection(Connection);

        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.NID ='" + NewsID + "'";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        string cmd = "UPDATE News SET ViewsNo = ViewsNo+1 WHERE NID =" + NewsID.ToString();
        SqlCommand sqlcmd = new SqlCommand(cmd, conn);

        conn.Open();

        sqlcmd.ExecuteNonQuery();

        SqlDataReader Reader = mysqlcmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.TableName = "Required News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public short Login(string Email, string Pass) //return 0 not .. 1 admin .. 2 VIP .. 3 User;
    {

        SqlConnection conn = new SqlConnection(Connection);

        SqlCommand mysqlcmd = conn.CreateCommand();
        mysqlcmd.CommandType = CommandType.StoredProcedure;
        mysqlcmd.CommandText = "dbo.IdentifyUser";


        SqlParameter param1 = mysqlcmd.Parameters.Add("@Email", SqlDbType.VarChar, 100);
        param1.Value = Email;

        SqlParameter param2 = mysqlcmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50);
        param2.Value = Pass;

        SqlParameter Out = mysqlcmd.Parameters.Add("@Out", SqlDbType.TinyInt);
        Out.Direction = ParameterDirection.Output;

        conn.Open();
        mysqlcmd.ExecuteNonQuery();

        short Result = Convert.ToInt16(mysqlcmd.Parameters["@Out"].Value);
        conn.Close();

        return Result;
    }


    //----------------------------------------------------------------------------

    [WebMethod] //return 0 not .. 1 Saved
    public Boolean UserRegister(string Email, string UserName, string Pass, short SecretQ, string SecretA, Boolean USex, DateTime BirthDate, DateTime RegisterDate)
    {
        //return 0 not .. 1 Saved

        SqlConnection conn = new SqlConnection(Connection);

        SqlCommand mysqlcmd = conn.CreateCommand();
        mysqlcmd.CommandType = CommandType.StoredProcedure;
        mysqlcmd.CommandText = "dbo.UserRegister";


        SqlParameter param1 = mysqlcmd.Parameters.Add("@Email", SqlDbType.NVarChar, 100);
        param1.Value = Email;

        SqlParameter param2 = mysqlcmd.Parameters.Add("@UserName", SqlDbType.NVarChar, 50);
        param2.Value = UserName;

        SqlParameter param3 = mysqlcmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50);
        param3.Value = Pass;

        SqlParameter param4 = mysqlcmd.Parameters.Add("@SecretQ", SqlDbType.TinyInt);
        param4.Value = SecretQ;

        SqlParameter param5 = mysqlcmd.Parameters.Add("@SecretA", SqlDbType.NVarChar);
        param5.Value = SecretA;

        SqlParameter param6 = mysqlcmd.Parameters.Add("@USex", SqlDbType.Bit);
        param6.Value = USex;

        SqlParameter param7 = mysqlcmd.Parameters.Add("@BirthDate", SqlDbType.Date);
        param7.Value = BirthDate;

        SqlParameter param8 = mysqlcmd.Parameters.Add("@RegisterDate", SqlDbType.DateTime);
        param8.Value = RegisterDate;

        SqlParameter Out = mysqlcmd.Parameters.Add("@Out", SqlDbType.Bit);
        Out.Direction = ParameterDirection.Output;

        conn.Open();
        mysqlcmd.ExecuteNonQuery();

        Boolean Result = Convert.ToBoolean(mysqlcmd.Parameters["@Out"].Value);
        conn.Close();

        return Result;
    }

    //----------------------------------------------------------------------------

    [WebMethod] //return 0 not .. 1 Saved
    public Boolean VIPRegister(string Email, string UserName, string FullName, Boolean VSex, int PhoneNo, string Vaddress, string Job, DateTime BirthDate, string Pass, short SecretQ, string SecretA, DateTime RegisterDate)
    {

        SqlConnection conn = new SqlConnection(Connection);

        SqlCommand mysqlcmd = conn.CreateCommand();
        mysqlcmd.CommandType = CommandType.StoredProcedure;
        mysqlcmd.CommandText = "dbo.VIPRegister";


        SqlParameter param1 = mysqlcmd.Parameters.Add("@Email", SqlDbType.NVarChar, 100);
        param1.Value = Email;

        SqlParameter param2 = mysqlcmd.Parameters.Add("@UserName", SqlDbType.NVarChar, 50);
        param2.Value = UserName;

        SqlParameter param4 = mysqlcmd.Parameters.Add("@FullName", SqlDbType.NVarChar, 50);
        param4.Value = FullName;

        SqlParameter param5 = mysqlcmd.Parameters.Add("@VSex", SqlDbType.Bit);
        param5.Value = VSex;

        SqlParameter param6 = mysqlcmd.Parameters.Add("@PhoneNo", SqlDbType.Int);
        param6.Value = PhoneNo;

        SqlParameter param7 = mysqlcmd.Parameters.Add("@Vaddress", SqlDbType.NVarChar);
        param7.Value = Vaddress;

        SqlParameter param8 = mysqlcmd.Parameters.Add("@Job", SqlDbType.NVarChar, 50);
        param8.Value = Job;

        SqlParameter param9 = mysqlcmd.Parameters.Add("@BirthDate", SqlDbType.Date);
        param9.Value = BirthDate;

        SqlParameter param10 = mysqlcmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50);
        param10.Value = Pass;

        SqlParameter param11 = mysqlcmd.Parameters.Add("@SecretQ", SqlDbType.TinyInt);
        param11.Value = SecretQ;

        SqlParameter param12 = mysqlcmd.Parameters.Add("@SecretA", SqlDbType.NVarChar);
        param12.Value = SecretA;

        SqlParameter param13 = mysqlcmd.Parameters.Add("@RegisterDate", SqlDbType.DateTime);
        param13.Value = RegisterDate;

        SqlParameter Out = mysqlcmd.Parameters.Add("@Out", SqlDbType.Bit);
        Out.Direction = ParameterDirection.Output;

        conn.Open();
        mysqlcmd.ExecuteNonQuery();

        Boolean Result = Convert.ToBoolean(mysqlcmd.Parameters["@Out"].Value);
        conn.Close();

        return Result;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public int Get_ID(string mail, short type)
    {
        //--- 0 if Admin --- 1 if VIP --- 2 if User

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "";

        if (type == 0)
            mycmd = "SELECT AID from Admins Where Email ='" + mail + "'";
        else if (type == 1)
            mycmd = "SELECT VID from VIPs Where Email ='" + mail + "'";
        else if (type == 2)
            mycmd = "SELECT UserID from Users Where Email ='" + mail + "'";


        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();
        Reader.Read();
        int id = int.Parse(Reader[0].ToString());
        return id;

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Add_Comment(int NewsID, int VID, string Comment, DateTime CommentDate, short FeedBack)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "UPDATE News Set VID = " + VID.ToString() + " , Comment = N'" + Comment + "' , CommentDate = '" + CommentDate.ToString() + "' , CommFlag = 1 , FeedBack =" + FeedBack.ToString() + "WHERE NID =" + NewsID.ToString();
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable FollowedVIP_News(int UserID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.VID in (SELECT VID from UserFollow Where UserID =" + UserID.ToString() + " and UserType =" + UserType.ToString() + ") ORDER BY PublishDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Followed VIP News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Follow_VIP(int UserID, int VID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "INSERT into UserFollow (UserID,VID,UserType) VALUES (" + UserID.ToString() + "," + VID.ToString() + "," + UserType.ToString() + ")";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Mining_Table()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "Select Mining,VID,UserName FROM VIPs WHERE Activate = 1";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Mining Table";
        dt.Load(Reader);
        conn.Close();
        return dt;

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Evaluation(string SRC)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.SRC ='" + SRC + "' and not News.FeedBack = 0 ORDER BY News.PublishDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Evaluation for " + SRC;
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Get_UserInfo(int UserID, short type)
    {
        //--- 0 if Admin --- 1 if VIP --- 2 if User

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "";

        if (type == 0)
            mycmd = "SELECT * from Admins Where AID =" + UserID.ToString();
        else if (type == 1)
            mycmd = "SELECT * from VIPs Where VID =" + UserID.ToString();
        else if (type == 2)
            mycmd = "SELECT * from Users Where UserID =" + UserID.ToString();

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "User Information";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void ApproveVIP(int VID, string Mining)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "UPDATE VIPs Set Activate = 1, Mining = '" + Mining + "' WHERE VID =" + VID.ToString();
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Most_Viewed(int N)
    {
        //--- 0 if Admin --- 1 if VIP --- 2 if User

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT TOP " + N.ToString() + " * from (SELECT DENSE_RANK() OVER (ORDER BY ViewsNo DESC) AS TopRank , News.ViewsNo,News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback , VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID ) as MostViewedNews";

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Most Viewed News";
        dt.Load(Reader);

        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Get_All_VIPs()
    {
        //--- 0 if Admin --- 1 if VIP --- 2 if User

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT * from VIPs WHERE Activate = 1";

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Activated VIPs";
        dt.Load(Reader);

        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Get_VIP_News(int VID)  //-- return VIP`s Own News
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.VID ='" + VID + "' ORDER BY News.PublishDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "VIP`s News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public string Mobile_VIP_News(int VID) //-- return VIP`s Own News for Mobiel app.
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.VID ='" + VID + "' ORDER BY News.PublishDate DESC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "VIP`s News";
        dt.Load(Reader);
        conn.Close();

        return Mobile_Convert(dt);
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Followed_VIPs(int UserID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT * from VIPs WHERE VID in(SELECT VID FROM UserFollow Where UserID = " + UserID.ToString() + " and UserType =" + UserType.ToString() + ")";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Followed VIPs";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public int Related_VID(int NID)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT VID from News Where NID =" + NID.ToString();

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();
        Reader.Read();
        int VID = int.Parse(Reader[0].ToString());
        return VID;
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Edit_Private_Security(int UserID, short type, string Name, string Pass, short SecQ, string SecA)
    {
        //--- 0 if Admin --- 1 if VIP --- 2 if User

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "";

        if (type == 0)
            mycmd = "UPDATE Admins Set AdminName = N'" + Name + "' , AdminPass ='" + Pass + "' , SecretQ =" + SecQ + " , SecretA = N'" + SecA + "' WHERE AID =" + UserID.ToString();
        else if (type == 1)
            mycmd = "UPDATE VIPs Set UserName = N'" + Name + "' , Pass ='" + Pass + "' , SecretQ =" + SecQ + " , SecretA = N'" + SecA + "' WHERE VID =" + UserID.ToString();
        else if (type == 2)
            mycmd = "UPDATE Users Set UserName = N'" + Name + "' , Pass ='" + Pass + "' , SecretQ =" + SecQ + " , SecretA = N'" + SecA + "' WHERE UserID =" + UserID.ToString();


        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Edit_VIP_Info(int VID, string FullName, int PhoneNo, string Vaddress, string Job)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "UPDATE VIPs Set FullName = N'" + FullName + "' , PhoneNo = " + PhoneNo.ToString() + " , Vaddress = N'" + Vaddress + "' , Job = N'" + Job + "' WHERE AID =" + VID.ToString();

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Unfollow(int VID, int UserID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "Delete from UserFollow Where VID = " + VID.ToString() + " and UserID = " + UserID.ToString() + " and UserType =" + UserType.ToString();
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Unseen_News(int VID)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and CommFlag is null and News.VID = " + VID.ToString();

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Unseen News";
        dt.Load(Reader);
        conn.Close();
        return dt;

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable User_Unseen_News(int UserID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "SELECT News.NID,News.Title,News.Category,News.Link,News.IMGLink,News.Describtion,News.Body,News.PublishDate,News.SRC,News.VID,News.Comment,News.CommentDate,News.feedback ,VIPs.UserName FROM News , VIPs WHERE News.VID = VIPs.VID and News.NID in (Select NID from Reads WHERE UserID =" + UserID.ToString() + " and UserType = " + UserType.ToString() + ")";

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "User Notification";
        dt.Load(Reader);
        conn.Close();
        return dt;

    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void NoComment(int NID) //if flag = 1 sebak
    {
        SqlConnection conn = new SqlConnection(Connection);

        SqlCommand mysqlcmd = conn.CreateCommand();
        mysqlcmd.CommandType = CommandType.StoredProcedure;
        mysqlcmd.CommandText = "dbo.NoComment";



        SqlParameter param1 = mysqlcmd.Parameters.Add("@NID", SqlDbType.Int);
        param1.Value = NID;

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public void Read(int NID, int UserID, short UserType)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "DELETE from Reads WHERE NID = " + NID.ToString() + " and UserID = " + UserID.ToString() + " and UserType =" + UserType.ToString();

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        mysqlcmd.ExecuteNonQuery();
        conn.Close();
    }


    //----------------------------------------------------------------------------

    [WebMethod]
    public void UploadPhoto(byte[] Photo, short UserType, int UserID)
    {
        // UserType = 0 --> Admin // UserType = 1 --> VIP // UserType = 2 --> User 

        SqlConnection conn = new SqlConnection(Connection);

        SqlCommand cmd = new SqlCommand();
        string mycmd = "";
        if (UserType == 0)
            mycmd = "UPDATE Admins SET Photo = @Photo WHERE AID = " + UserID.ToString();
        if (UserType == 1)
            mycmd = "UPDATE VIPs SET Photo = @Photo WHERE VID = " + UserID.ToString();
        if (UserType == 2)
            mycmd = "UPDATE Users SET Photo = @Photo WHERE UserID = " + UserID.ToString();


        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;

        SqlParameter UploadedImage = new SqlParameter("@Photo", SqlDbType.Image);
        UploadedImage.Value = Photo;
        cmd.Parameters.Add(UploadedImage);


        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    //----------------------------------------------------------------------------

    [WebMethod]
    public DataTable Get_Latest_News(int max)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select Top " + max.ToString() + " VIPs.FullName,News.Comment,News.Category from News Join VIPs On VIPs.VID = News.VID and News.CommFlag = 1 inner join ( select MIN(NID) NID, News.Category from News group by Category ) t2 on News.NID = t2.NID and News.Category = t2.Category";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "Latest News";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    //----------------------------------------------------------------------------


    
}
