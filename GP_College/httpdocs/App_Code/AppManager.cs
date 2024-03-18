using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Data;

/// <summary>
/// Summary description for AppManager
/// </summary>
public class AppManager
{

    private string Connection;
	public AppManager()
	{
        Connection = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionStringSqlHelwan"].ConnectionString;
	}

    public string addSuperVisor(string SName, string SRAddress, string SPhone, string SMobile, string Sdgree, string Uni, string faculty, string departID, string Notes)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into SuperVisor(SName,SRAddress,SPhone,SMobile,Sdgree,Uni,faculty,departID,Notes) values (N'" + SName + "',N'" + SRAddress + "',N'" + SPhone + "',N'" + SMobile + "',N'" + Sdgree + "',N'" + Uni + "',N'" + faculty + "',N'" + departID + "',N'" + Notes +  "')";
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public string addResearcher(string RName, string RAddress, string RPhone, string RMobile, string Uni, string faculty, string departID, string Notes)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into Researcher(RName,RAddress,RPhone,RMobile,Uni,faculty,departID,Notes) values (N'" + RName + "',N'" + RAddress + "',N'" + RPhone + "',N'" + RMobile + "',N'" + Uni + "',N'" + faculty + "',N'" + departID + "',N'" + Notes + "')";
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public string addThesis(string ThesisTitle, string Thesisbrief, string cover, DateTime Registerationdate, DateTime Discussiondate, DateTime Degreedate, string Notes, string ResearcherID, string Ttype)
    {
        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into Thesis(ThesisTitle,Thesisbrief,cover,Registerationdate,Discussiondate,Degreedate,Notes,ResearcherID,Ttype) values (N'" + ThesisTitle + "',N'" + Thesisbrief + "',N'" + cover + "','" + Registerationdate + "',N'" + Discussiondate + "',N'" + Degreedate + "',N'" + Notes + "','" + ResearcherID + "','" + Ttype + "') SELECT SCOPE_IDENTITY()";
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            String result="Error";
            while (Reader.Read())
            {
                result = Reader[0].ToString();
            }
            conn.Close();
            Reader.Close();
            return result;
        }
        catch (Exception ex)
        {
            return "Error";
        }
    }
    
    public string addThesis_research(string query)
    {
        try
        {
            SqlConnection conn = new SqlConnection(Connection);
           
            SqlCommand mysqlcmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            conn.Close();
            Reader.Close();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

   
    public DataTable getThesis(string name)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from Thesis join Researcher on ResearcherID = Researcher.ID and ThesisTitle = N'" + name + "'";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Thesis";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public void delete()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "delete from TheisisupervisorResearcher;delete from Thesis;delete from SuperVisor;delete from Researcher;";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        DataTable dt = new DataTable();
        dt.TableName = "Thesis";
        dt.Load(Reader);
        conn.Close();
      
    }

    public string alter()
    {
        try
        {
            SqlConnection conn = new SqlConnection(Connection);

            SqlCommand mysqlcmd = new SqlCommand("alter table Thesis alter column ThesisTitle nvarchar(Max) not null;alter table Thesis alter column Thesisbrief nvarchar(Max)", conn);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            conn.Close();
            Reader.Close();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

   

    public bool login(string UserName, string Pass)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from accounts Where username='" + UserName + "' and pass = '" + Pass + "'";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        if (Reader.Read())
        {
            return true;
        }

        else
        {
            return false;
        }
    }
}