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

public class Youm7 : Source
{
    public override System.Collections.Generic.List<News> ReadNews()
    {
        throw new NotImplementedException();
    }

   

    public List<News> ReadNews(string rss)
    {
        return null;
    }

    private string readContent(string url)
    {
        return null;
    }
}
