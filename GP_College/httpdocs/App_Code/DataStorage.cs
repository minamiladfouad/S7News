using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.IO;
using System.Data;

/// <summary>
/// Summary description for DataStorage
/// </summary>
public class DataStorage
{
    /*static string DataSource = "192.168.3.70";
    static string InitialCatalog = "fb_elfagr";
    static string UserID = "fb_elfagr";
    static string Password = "m6DraKaR";
    static string Connection = "Data Source=" + DataSource + ";Initial Catalog=" + InitialCatalog + ";User id=" + UserID + ";Password=" + Password + ";";
	*/
    static string Connection = "Data Source=192.168.3.70;Initial Catalog=ElFagr;Persist Security Info=True;User ID=elfagr;Password=aTxt4RLfAc";
   // static string Connection = "Data Source=localhost;Initial Catalog=elfagrCars;Integrated Security=True";
	

	public DataStorage()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string sellCar(string Marka, string Model, string Price, string ReplaceCar, string PreviewPlace, string manifacturingYear, string KilloMeters, string motorPower, string CarDetails, string mobileNum, string OwnerAddress, string image, int Tkeef, int NakelAutomatic, int Dors4, int EBD, int Wsa2dHwa2ya, int CenterLock, int NakelYdoy, int MosbtSor3a, int Ft7tS2f, int RadioKaset, int PowerOption, int Dors2, int Enzar, int ABSOption, int ZogagKhrby, int NewCar, int Approved)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into CarsForSell(Marka,Model,Price,ReplaceCar,PreviewPlace,manifacturingYear,KilloMeters,motorPower,CarDetails,mobileNum,OwnerAddress,Tkeef,NakelAutomatic,Dors4,EBD,Wsa2dHwa2ya,CenterLock,NakelYdoy,MosbtSor3a,Ft7tS2f,RadioKaset,PowerOption,Dors2,Enzar,ABSOption,ZogagKhrby,NewCar,Approved,CarImage) values (N'" + Marka + "',N'" + Model + "',N'" + Price + "',N'" + ReplaceCar + "',N'" + PreviewPlace + "',N'" + manifacturingYear + "',N'" + KilloMeters + "',N'" + motorPower + "',N'" + CarDetails + "',N'" + mobileNum + "',N'" + OwnerAddress + "','" + Tkeef + "','" + NakelAutomatic + "','" + Dors4 + "','" + EBD + "','" + Wsa2dHwa2ya + "','" + CenterLock + "','" + NakelYdoy + "','" + MosbtSor3a + "','" + Ft7tS2f + "','" + RadioKaset + "','" + PowerOption + "','" + Dors2 + "','" + Enzar + "','" + ABSOption + "','" + ZogagKhrby + "','" + NewCar + "','" + Approved + "',@image)";
                      
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            mysqlcmd.Parameters.AddWithValue("@image", image);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public string addOldCar(string Marka, string Model, string Price, string ReplaceCar, string PreviewPlace, string manifacturingYear, string KilloMeters, string motorPower, string CarDetails, string mobileNum, string OwnerAddress, string image, int Tkeef, int NakelAutomatic, int Dors4, int EBD, int Wsa2dHwa2ya, int CenterLock, int NakelYdoy, int MosbtSor3a, int Ft7tS2f, int RadioKaset, int PowerOption, int Dors2, int Enzar, int ABSOption, int ZogagKhrby, int NewCar, int Approved)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into CarsForSell(Marka,Model,Price,ReplaceCar,PreviewPlace,manifacturingYear,KilloMeters,motorPower,CarDetails,mobileNum,OwnerAddress,Tkeef,NakelAutomatic,Dors4,EBD,Wsa2dHwa2ya,CenterLock,NakelYdoy,MosbtSor3a,Ft7tS2f,RadioKaset,PowerOption,Dors2,Enzar,ABSOption,ZogagKhrby,NewCar,Approved) values (N'" + Marka + "',N'" + Model + "',N'" + Price + "',N'" + ReplaceCar + "',N'" + PreviewPlace + "',N'" + manifacturingYear + "',N'" + KilloMeters + "',N'" + motorPower + "',N'" + CarDetails + "',N'" + mobileNum + "',N'" + OwnerAddress + "','" + Tkeef + "','" + NakelAutomatic + "','" + Dors4 + "','" + EBD + "','" + Wsa2dHwa2ya + "','" + CenterLock + "','" + NakelYdoy + "','" + MosbtSor3a + "','" + Ft7tS2f + "','" + RadioKaset + "','" + PowerOption + "','" + Dors2 + "','" + Enzar + "','" + ABSOption + "','" + ZogagKhrby + "','" + NewCar + "','" + Approved + "')SELECT SCOPE_IDENTITY()";

            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            //mysqlcmd.Parameters.AddWithValue("@image", image);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            Reader.Read();

           int carID= int.Parse(Reader[0].ToString());
           Reader.Close();
            conn.Close();

            return addCarImage(carID, image);
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    private string addCarImage(int carID, string imageURL)
    {
        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into carImages (carID,CarImage) values ('" + carID + "','" + imageURL + "')";
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            //mysqlcmd.Parameters.AddWithValue("@image", image);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
     
  
 
            conn.Close();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public string AddNewCar(string Marka, string Model, string Price, string ReplaceCar, string PreviewPlace, string manifacturingYear, string KilloMeters, string motorPower, string CarDetails, string mobileNum, string OwnerAddress, string image, int Tkeef, int NakelAutomatic, int Dors4, int EBD, int Wsa2dHwa2ya, int CenterLock, int NakelYdoy, int MosbtSor3a, int Ft7tS2f, int RadioKaset, int PowerOption, int Dors2, int Enzar, int ABSOption, int ZogagKhrby, int NewCar, int Approved,string approvedBy)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into CarsForSell(Marka,Model,Price,ReplaceCar,PreviewPlace,manifacturingYear,KilloMeters,motorPower,CarDetails,mobileNum,OwnerAddress,Tkeef,NakelAutomatic,Dors4,EBD,Wsa2dHwa2ya,CenterLock,NakelYdoy,MosbtSor3a,Ft7tS2f,RadioKaset,PowerOption,Dors2,Enzar,ABSOption,ZogagKhrby,NewCar,Approved,ApprovedBy,CarImage) values (N'" + Marka + "',N'" + Model + "',N'" + Price + "',N'" + ReplaceCar + "',N'" + PreviewPlace + "',N'" + manifacturingYear + "',N'" + KilloMeters + "',N'" + motorPower + "',N'" + CarDetails + "',N'" + mobileNum + "',N'" + OwnerAddress + "','" + Tkeef + "','" + NakelAutomatic + "','" + Dors4 + "','" + EBD + "','" + Wsa2dHwa2ya + "','" + CenterLock + "','" + NakelYdoy + "','" + MosbtSor3a + "','" + Ft7tS2f + "','" + RadioKaset + "','" + PowerOption + "','" + Dors2 + "','" + Enzar + "','" + ABSOption + "','" + ZogagKhrby + "','" + NewCar + "','" + Approved + "','" + approvedBy+"',@image)";

            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);
            mysqlcmd.Parameters.AddWithValue("@image", image);
            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public Stream getImage(int ID)
    {

        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select CarImage from CarsForSell where ID =" + ID;

        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        object img = mysqlcmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])img);
        }
        catch
        {
            return null;
        }
        finally
        {
            conn.Close();
        }

    }

    public DataTable getCarForSale()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell join carImages on   Approved=1 and CarsForSell.ID = carImages.CarID";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSale";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable getCarForSaleByDate()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell join carImages on  Approved=1 and CarsForSell.ID = carImages.CarID  ORDER BY manifacturingYear  ASC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable getCarForSaleByMotorPower()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell  join carImages on  Approved=1 and CarsForSell.ID = carImages.CarID ORDER BY motorPower  ASC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable getCarForSaleByMarka()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell join carImages on  CarsForSell.ID = carImages.CarID  ORDER BY Marka  ASC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable getCarForSaleByModel()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell join carImages on  CarsForSell.ID = carImages.CarID  ORDER BY Model ASC";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }


    public DataTable getCarInfo(string ID)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell join carImages on  CarsForSell.ID='" + ID + "' and CarsForSell.ID = carImages.CarID";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable filterMarkaAndModelNew(string model,string marka)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell Where Marka='" + marka + "' and Model = '"+model+"' and  NewCar=1";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public DataTable filterMarkaAndModelOld(string model, string marka)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarsForSell Where Marka='" + marka + "' and Model = '" + model + "' and  NewCar=0";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "CarsForSaleByDate";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public string adminLogin(string UserName, string Pass)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select ID from CarsAdmin Where UserName='" + UserName + "' and Pass = '" + Pass + "'";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        if (Reader.Read())
        {
            return Reader["ID"].ToString();
        }

        else
        {
            return "Not Authorized";
        }
    }

    public string ApproveCar(string CarID, string AdminID)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "Update CarsForSell set Approved='1' , ApprovedBy = '" + AdminID + "' where ID=" + CarID;
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();

        if (Reader.Read())
        {
            return Reader["ID"].ToString();
        }

        else
        {
            return "Not Authorized";
        }
    }


    public DataTable getCarservices(string markaID)
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from CarService Where MarkaID="+markaID;
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "m3ard";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public string addAdmin()
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into CarsAdmin(UserName,Pass) values ('mAli','@elfagrC')";

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

    public string addMarka(string markaName)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "Insert into Marka(Name) values (N'"+markaName+"')";
            
            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            conn.Close();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public DataTable getMarka()
    {
        SqlConnection conn = new SqlConnection(Connection);
        string mycmd = "select * from Marka";
        SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

        conn.Open();
        SqlDataReader Reader = mysqlcmd.ExecuteReader();


        DataTable dt = new DataTable();
        dt.TableName = "marka";
        dt.Load(Reader);
        conn.Close();
        return dt;
    }

    public string addService(string markaId,string m3rdName,string address,string phone,string fax,string howerWork,string vaction)
    {

        try
        {
            SqlConnection conn = new SqlConnection(Connection);
            string mycmd = "insert into CarService(MarkaID,Name,SAddress,SPhone,SFAX,SWorkHours,SVacations) values (N'" + markaId + "',N'" + m3rdName + "',N'" + address + "',N'" + phone + "',N'" + fax + "',N'" + howerWork + " ',N'" + vaction + "')";

            SqlCommand mysqlcmd = new SqlCommand(mycmd, conn);

            conn.Open();
            SqlDataReader Reader = mysqlcmd.ExecuteReader();
            conn.Close();
            return "Done";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }
}