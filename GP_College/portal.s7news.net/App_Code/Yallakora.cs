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

public class Yallakora : global::Source
{
    public Yallakora()
    {
        set_RSS_Link("http://www.yallakora.com/arabic/rss.aspx?id=0");
        //set_RSS_Link("C:\\Users\\Hany\\Documents\\rss.xml");
        
    }
    override
    public List<News> ReadNews()
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
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_publish_Date(DateTime.Parse( ds.Tables[3].Rows[i].ItemArray[2].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[5].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[1].ToString()));
            temp.set_source("yallakora");
            temp.set_category("sports");
            temp.set_related_VIP(0);
            string desc = ds.Tables[3].Rows[i].ItemArray[5].ToString();

            int start = desc.IndexOf("<img src='");
            start += 10;
            int lenght = desc.IndexOf(">");
            lenght -= 11;
            string img = desc.Substring(start, lenght);
            temp.set_image(img);

            NewsList.Add(temp);
            
            
        }
        return NewsList;
    }
    public List<News> ReadNews(string rss )
    {
        List<News> NewsList = new List<News>();
        XmlTextReader reader = new XmlTextReader(rss);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[0].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[2].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[5].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[1].ToString()));
            temp.set_source("yallakora");
            temp.set_category("sports");
            string desc = ds.Tables[3].Rows[i].ItemArray[5].ToString();
            int start = desc.IndexOf("<img src='");
            start += 10;
            int lenght = desc.IndexOf(">");
            lenght -= 11;
            string img = desc.Substring(start, lenght);
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

        int start_position = strResult.IndexOf("<div id=\"\" class=\"bodycontent\">");
        start_position += 31;
        string temp = strResult.Substring(start_position);
        int end_position = temp.IndexOf("</div>");
        

        return strResult.Substring(start_position, end_position);
    }

}
