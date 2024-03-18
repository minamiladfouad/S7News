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

public class Elshrok : Source
{
    public override List<News> ReadNews()
    {
        List<News> NewsList = new List<News>();
        NewsList = ReadPoliticalNews("http://www.shorouknews.com/egypt/Eg-Politics/rss");
        NewsList.AddRange(ReadCinemaNews("http://shorouknews.com/art/cinema/rss"));

        NewsList.AddRange(ReadEconomyNews("http://www.shorouknews.com/Economy/bourse/rss"));

        NewsList.AddRange(ReadEconomyNews("http://www.shorouknews.com/Economy/market/rss"));
        return NewsList;

    }
    private List<News> ReadPoliticalNews(string RSS)
    {

        List<News> PoliticalList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[3].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[5].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[4].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[1].ToString()));
            temp.set_source("Elshrok");
            temp.set_category("political");
            temp.set_related_VIP(0);

            //string desc = ds.Tables[3].Rows[i].ItemArray[1].ToString();
            //int start = desc.IndexOf("<img src=\"");
            //start += 10;
            //int end = desc.IndexOf(".jpg\"");
            //end -= 23;
            //string img = desc.Substring(start, end);
            temp.set_image("http://egyptworldwide.com/honestgate.jpg");

            PoliticalList.Add(temp);


        }
        return PoliticalList;
    }

    private List<News> ReadCinemaNews(string RSS)
    {

        List<News> CinemaList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[3].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[5].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[4].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[1].ToString()));
            temp.set_source("Elshrok");
            temp.set_category("fan");
            temp.set_related_VIP(0);

            //string desc = ds.Tables[3].Rows[i].ItemArray[1].ToString();
            //int start = desc.IndexOf("<img src=\"");
            //start += 10;
            //int end = desc.IndexOf(".jpg\"");
            //end -= 23;
            //string img = desc.Substring(start, end);
            temp.set_image("http://egyptworldwide.com/honestgate.jpg");

            CinemaList.Add(temp);


        }
        return CinemaList;
    }

    private List<News> ReadEconomyNews(string RSS)
    {

        List<News> EconomyList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[3].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[3].Rows[i].ItemArray[3].ToString());
            temp.set_link(ds.Tables[3].Rows[i].ItemArray[1].ToString());
            temp.set_publish_Date(DateTime.Parse(ds.Tables[3].Rows[i].ItemArray[5].ToString()));
            temp.set_description(ds.Tables[3].Rows[i].ItemArray[4].ToString());
            temp.set_body(readContent(ds.Tables[3].Rows[i].ItemArray[1].ToString()));
            temp.set_source("Elshrok");
            temp.set_category("economy");
            temp.set_related_VIP(0);

            //string desc = ds.Tables[3].Rows[i].ItemArray[1].ToString();
            //int start = desc.IndexOf("<img src=\"");
            //start += 10;
            //int end = desc.IndexOf(".jpg\"");
            //end -= 23;
            //string img = desc.Substring(start, end);
            temp.set_image("http://egyptworldwide.com/honestgate.jpg");

            EconomyList.Add(temp);


        }
        return EconomyList;
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

        int start_position = strResult.IndexOf("<div class=\"rightContent rightContent-newSize\">");

        start_position += 46;
        string temp = strResult.Substring(start_position);
        int end_position = temp.IndexOf("</div>");

        return strResult.Substring(start_position, end_position);
    }

}
