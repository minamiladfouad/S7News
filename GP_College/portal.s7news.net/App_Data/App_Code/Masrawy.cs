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

public class Masrawy : Source
{
    public Masrawy()
    {
       
    }
    public override List<News> ReadNews()
    {
        List<News> NewsList = new List<News>();
        NewsList = ReadRSSNews("http://www.masrawy.com/News/rss/LocalPolitics.aspx","political");
        NewsList.AddRange(ReadRSSNews("http://www.masrawy.com/News/rss/Local_Sports.aspx","sports"));
        NewsList.AddRange(ReadRSSNews("http://www.masrawy.com/News/rss/RSS_Economy.aspx", "economy"));
        NewsList.AddRange(ReadRSSNews("http://www.masrawy.com/News/rss/Arts.aspx", "fan"));
        return NewsList;
       
    }

    private List<News> ReadRSSNews(string RSS,string cat)
    {

        List<News> PliticalList = new List<News>();
        XmlTextReader reader = new XmlTextReader(RSS);
        DataSet ds = new DataSet();

        // Reads the xml into the dataset
        ds.ReadXml(reader);
        for (int i = 0; i < ds.Tables[4].Rows.Count; i++)
        {
            News temp = new News();
            temp.set_title(ds.Tables[4].Rows[i].ItemArray[0].ToString());
            temp.set_link(ds.Tables[4].Rows[i].ItemArray[5].ToString());
            temp.set_publish_Date(DateTime.Now);
            temp.set_description(ds.Tables[4].Rows[i].ItemArray[3].ToString());
            temp.set_body(ds.Tables[4].Rows[i].ItemArray[4].ToString());

            temp.set_source("Masrawy");
            temp.set_category(cat);



            temp.set_image(ds.Tables[4].Rows[i].ItemArray[7].ToString());

            PliticalList.Add(temp);


        }
        return PliticalList;
    }
    
}
