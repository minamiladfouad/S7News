using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections.Generic;

public abstract class Source
{
    protected string RSS_link;
    protected string description;
    protected string source_name;

    public void set_RSS_Link(string link)
    {
        RSS_link = link;
    }
    public string get_RSS_Link()
    {
        return RSS_link;
    }

    public void set_description(string des)
    {
        description = des;
    }
    public string get_description()
    {
        return description;
    }

    public void set_source_name(string name)
    {
        source_name = name;
    }
    public string get_source_name()
    {
        return source_name;
    }

    public abstract List<News> ReadNews();
   
}
