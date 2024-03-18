using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* Filgoal F = new Filgoal();
        List<News> L = new List<News>();
        L = F.ReadNews();
        Services s = new Services();
         
        s.InsertNews(L);
      

         
        
         
        */
        //////////////////////////////////////////////////////////
        Server S = new Server();
        S.Read_News();

        Response.Write("done");
        
        ///////////////////////////////////////////////////

      /*  Masrawy SH = new Masrawy();
        List<News> L = new List<News>();
        L = SH.ReadNews();



        Response.Write(L.ElementAt(0).get_image());*/

         



      
        
         
    }
}