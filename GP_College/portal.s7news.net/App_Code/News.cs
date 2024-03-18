using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

public class News
{
    private string title, source, image, description, body, link, category;
    int related_VIP;
    private DateTime publish_Date;

    public void set_title(string t)
    {
        title = t;
    }
    public string get_title()
    {
        return title;
    }

    public void set_source(string s)
    {
        source = s;
    }
    public string get_source()
    {
        return source;
    }

    public void set_image(string img)
    {
        image = img;
    }
    public string get_image()
    {
        return image;
    }

    public void set_description(string desc)
    {
        description = desc;
    }
    public string get_description()
    {
        return description;
    }

    public void set_body(string d)
    {
        body = d;
    }
    public string get_body()
    {
        return body;
    }

    public void set_related_VIP(int vip)
    {
        related_VIP = vip;
    }
    public int get_related_VIP()
    {
        return related_VIP;
    }


    public void set_category(string c)
    {
        category = c;
    }
    public string get_category()
    {
        return category;
    }

    public void set_publish_Date(DateTime d)
    {
        publish_Date = d;
    }
    public DateTime get_publish_Date()
    {
        return publish_Date;
    }

    public void set_link(string l)
    {
        link = l;
    }
    public string get_link()
    {
        return link;
    }

}
