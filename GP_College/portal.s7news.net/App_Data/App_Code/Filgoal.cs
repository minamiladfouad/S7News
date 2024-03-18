using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections.Generic;
using System.Xml;
using System.Data;
using System.IO;
using System.Net;

public class Filgoal : Source
{
    public Filgoal()
    {
        set_RSS_Link("http://rss.filgoal.com/arabic/newsrss.aspx?SecID=1");
       //set_RSS_Link(" C:\\Users\\Hany\\Documents\\filgoal2.xml");
       
    }

    override
    public  List<News> ReadNews()
    {
        List<News> NewsList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS_link);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[0].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[2].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[3].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[1].ToString());
           temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[2].ToString()));
           
            temp.set_source("filgoal");
            temp.set_category("sports");
         

            string desc = ds.Tables[3].Rows[i].ItemArray[1].ToString();
            int start = desc.IndexOf("<img src=\"");
            start += 10;
            int length = 0;
          
            length = desc.IndexOf("align=\"right\"",17);
            


            //end -= 23;
            length -= 29;
            string img = desc.Substring(start, length);
            temp.set_image(img);

            NewsList.Add(temp);


        }
        return NewsList;
    }

    public List<News> ReadNews(string RSS)
    {
        List<News> NewsList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[0].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[2].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[3].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[2].ToString()));
            temp.set_source("filgoal");
            temp.set_related_VIP(0);
            temp.set_category("sports");

            string desc = ds.Tables[3].Rows[i].ItemArray[1].ToString();
            int start = desc.IndexOf("<img src=\"");
            start += 10;
            int length = 0;

            length = desc.IndexOf("align=\"right\"", 17);



            //end -= 23;
            length -= 29;
            string img = desc.Substring(start, length);
            temp.set_image(img);

            NewsList.Add(temp);


        }
        return NewsList;
    }

    private string readContent(string url)
    {

        WebRequest wbrq;
        WebResponse wbrs;
        string strURL;
        string strResult;
        StreamReader sr;
        strURL = url;
        wbrq = WebRequest.Create(strURL);
        wbrq.Method = "GET";
        wbrs = wbrq.GetResponse();
        sr = new StreamReader(wbrs.GetResponseStream());
        strResult = sr.ReadToEnd().Trim();
        sr.Close();

        int start_position = strResult.IndexOf("<div id=\"ctl00_cphFilGoalMain_pnlNewsBody\">");

        start_position += 43;
        string temp = strResult.Substring(start_position);
        int end_position = temp.IndexOf("</div>");

        return strResult.Substring(start_position, end_position);
    }
}
