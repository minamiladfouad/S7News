using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Xml;
using System.Data;
using System.IO;
using System.Net;


public class Server
{
    private int interval; // in minutes
    LinkedList<Source> Sport_Sources = new LinkedList<Source>();
    LinkedList<Source> political_Sources = new LinkedList<Source>();
    LinkedList<Source> art_Sources = new LinkedList<Source>();
    public Server()
    {
        interval = 5;
        //Source temp = new Source() ;
        //temp.set_RSS_Link("http://www.yallakora.com/arabic/rss.aspx?id=0");
        //temp.set_source_name("yallakora");
        //temp.set_description("all news");
        //Sport_Sources.AddFirst(temp);
        // we will add all news souces like that   

    }

    public void Read_News()
    {

        Services s = new Services();

        Filgoal F = new Filgoal();
        List<News> L = new List<News>();
        L = F.ReadNews();

        Yallakora Y = new Yallakora();
        L.AddRange(Y.ReadNews());

        Arabia Ar = new Arabia();
        L.AddRange(Ar.ReadNews());

        Elshrok Sh = new Elshrok();
        L.AddRange(Sh.ReadNews());

        Masrawy Ms = new Masrawy();
        L.AddRange(Ms.ReadNews());



        L=Mine_News(L);

        s.InsertNews(L);
    }
    public List<News> Mine_News(List<News> L)
    {
        Services s = new Services();
        mining m = new mining();
        DataTable Reader = new DataTable();
        Reader = s.Mining_Table();

        for (int i = 0; i < L.Count; i++)
        {
            int VIP_ID = m.makeMining(L.ElementAt(i).get_title()+" "+L.ElementAt(i).get_body(),Reader);
           
            L.ElementAt(i).set_related_VIP(VIP_ID);
        }
        return L;
    }
}
