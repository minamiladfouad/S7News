<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowNews.aspx.cs" Inherits="ShowNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
p.body
{
    font-size:x-large;
}
.showTable
{
    border-collapse:collapse;border-width:0px;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="fb-root"></div>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=108206175954956";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>






<div class="wrapper">
  <div class="container">
    <div class="content">
      
      <table width="100%" class="showTable">
      <tr>
      <td class="showTable">
          <h1> <asp:Label ID="NewsTitle" runat="server" Text="عنوان الخبر"></asp:Label></h1>
      </td>
      </tr>
      <tr>
      <td class="showTable" align="right">
          <table class="showTable">
          <tr>
          <td class="showTable">
              <asp:Image ID="SourceIcon" runat="server" Height="75" Width="100" 
                  ImageAlign="Right" />
          </td>
          <td class="showTable">
              <asp:Label ID="publishDate" runat="server" Text="تاريخ النشر"></asp:Label>
             
          </td>
          </tr>
          
          </table>
      </td>
      </tr>
      <tr>
      <td class="showTable" width="100%" align="right">
          <table class="showTable">
          <tr>
          <td class="showTable" style="background-color:#F9F9F9" align="right">
               <p style="font-size:small;font-weight:bold;text-align:right"><asp:Label ID="Content" runat="server" Text="موضوع الخبر" Font-Size="Larger"></asp:Label></p>
          </td>
          <td class="showTable" style="vertical-align:top;" align="right" >
               <asp:Image ID="NewsImage" runat="server" Height="125" Width="125" 
            ImageAlign="Right" />
          </td>
          </tr>
          </table>
      </td>
      </tr>
      <tr>
      <td class="showTable">
      <h1 style="text-align:center; color:Red;"> التعليق </h1>
      </td>
    
      </tr>
      <tr>
      <td>
          <asp:Label ID="Related_VIP" runat="server" Text="Label" Visible="False"></asp:Label>
      </td>
      </tr>
      <tr>
      <td class="showTable">
          <asp:Label ID="Comment" runat="server" Text="Label">لم يعلق بعد</asp:Label>
          <asp:TextBox ID="write_comment" Width="100%" Height="100px" runat="server" 
              TextMode="MultiLine" ToolTip="اكتب تعليقك على الخبر" Visible="False" 
              Font-Size="Large" ontextchanged="write_comment_TextChanged">تعديل التعليق</asp:TextBox>
        <asp:RadioButton id="true_news" Text="الخبر صحيح" 
GroupName="Eval" runat="server" Visible="False"/>

<asp:RadioButton id="false_news" Text="الخبر خطأ"
GroupName="Eval" runat="server" Visible="False"/>
<br />
          <asp:Button ID="submit" runat="server" Text="أضافة تعليق" Visible="False" OnClick="update_comment" />
          <asp:Button ID="reset" runat="server" Text="مسح النص" Visible="False" OnClick="reset_text" />
      </td>
      
      </tr>
      </table>
      
      
      
      
      
      
      
      <div id="respond" style="padding-top:50px;">
      <%
          Response.Write("<div class=\"fb-comments\" data-href=\""+Request.Url.AbsoluteUri+"\" data-num-posts=\"2\" data-width=\"650\"></div>\"");
           %>
        
      </div>
    </div>
    <div class="column">
      <div class="subnav">
        <h2>فوائد التسجيل</h2>
        <ul  dir="rtl">
          <li><a href="Benefits.aspx">هتوفر وقت في متابعة اخبارك من كل المصادر</a></li>
          <li><a href="#">هتقدر تشوف تقييم حصري لمصادر الاخبار</a>
            <ul dir="rtl">
              <li><a href="#">هتقدر تعرف المصادر الموثوقة</a></li>
              <li><a href="#">هتقول وداعا للشائعات</a></li>
            </ul>
          </li>
          <li><a href="#">هنحسم اقوى القضايا مشاكل الرأي العام</a>
            <ul dir="rtl">
              <li><a href="#">هنوصل بمعظم المشاهير</a></li>
              <li><a href="#">هنوصل بمعظم الهيئات والمؤسسات</a>
                <ul dir="rtl">
                  <li><a href="#">مؤسسات الدولة</a></li>
                  <li><a href="#">المؤسسات العامة</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="#">معانا خليك على ثقة</a></li>
        </ul>
      </div>
      <div class="holder">
      <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fhonestgate&amp;width=300&amp;height=200&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=true&amp;header=true&amp;appId=144900862270473" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:200px;" allowTransparency="true"></iframe>
      
      </div>
      <div id="featured">
        <ul>
          <li>
            <h2>الثقة بين ايديك</h2>
            <p class="imgholder"><img src="images/trusted .jpg" alt="" width="240" height="90" /></p>
          
            
          </li>
        </ul>
      </div>
      
    </div>
    <br class="clear" />
  </div>
</div>



<div class="wrapper">
  <div id="adblock">
    <div class="fl_left"><a href="#"><img src="images/demo/e3lan_1.png" alt="" /></a></div>
    <div class="fl_right"><a href="#"><img src="images/demo/e3lan_2.png" alt="" /></a></div>
    <br class="clear" />
  </div>
</div>


<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer">
    <div class="footbox">
      <h2>&#1593;&#1606;&#1600;&#1600;&#1600;&#1600;&#1575;</h2>
      <ul>
        <li><a href="#">&#1601;&#1603;&#1585;&#1577; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</a></li>
        <li><a href="#">&#1587;&#1610;&#1575;&#1587;&#1577; &#1575;&#1604;&#1582;&#1589;&#1608;&#1589;&#1610;&#1577;</a></li>
        <li><a href="#">&#1601;&#1608;&#1575;&#1574;&#1583; &#1575;&#1604;&#1575;&#1587;&#1578;&#1582;&#1583;&#1575;&#1605;</a></li>
        
        
       <li class="last"><a href="showall.aspx?cat=comm">&#1571;&#1582;&#1576;&#1575;&#1585; &#1608;&#1578;&#1593;&#1604;&#1610;&#1602;&#1575;&#1578;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1605;&#1589;&#1575;&#1583;&#1585;&#1606;&#1575;</h2>
      <ul>
        <li><a href="#">&#1605;&#1608;&#1602;&#1593; &#1601;&#1610;&#1604;&#1580;&#1608;&#1604; &#1575;&#1604;&#1585;&#1610;&#1575;&#1590;&#1610;</a></li>
        <li><a href="#">&#1605;&#1608;&#1602;&#1593; &#1610;&#1575;&#1604;&#1575; &#1603;&#1608;&#1585;&#1575; &#1575;&#1604;&#1585;&#1610;&#1575;&#1590;&#1610;</a></li>
        <li><a href="#">&#1580;&#1585;&#1610;&#1583;&#1577; &#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;</a></li>
        <li><a href="#">&#1580;&#1585;&#1610;&#1583;&#1577; &#1575;&#1604;&#1588;&#1585;&#1608;&#1602;</a></li>
        
        <li class="last"><a href="#">&#1588;&#1575;&#1607;&#1583; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &#1608;&#1575;&#1602;&#1578;&#1585;&#1581; &#1605;&#1593;&#1606;&#1575;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1582;&#1583;&#1605;&#1575;&#1578; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</h2>
      <ul>
        <li><a href="Evaluation.aspx">&#1578;&#1578;&#1576;&#1593; &#1575;&#1604;&#1575;&#1588;&#1582;&#1575;&#1589;</a></li>
        <li><a href="#">&#1578;&#1602;&#1610;&#1610;&#1605; &#1605;&#1589;&#1575;&#1583;&#1585; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585;</a></li>
        <li><a href="UserRegistartion.aspx">&#1575;&#1604;&#1578;&#1587;&#1580;&#1610;&#1604; &#1605;&#1593;&#1606;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1578;&#1593;&#1604;&#1610;&#1602;&#1575;&#1578;</a></li>
        
        <li class="last"><a href="Benefits.aspx">&#1602;&#1585;&#1575;&#1569;&#1577; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1578;&#1608;&#1575;&#1589;&#1604; &#1605;&#1593;&#1606;&#1575;</h2>
      <ul>
        <li><a href="www.facebook.com/honestgate">&#1575;&#1604;&#1601;&#1610;&#1587; &#1576;&#1608;&#1603;</a></li>
        <li><a href="#">&#1605;&#1583;&#1608;&#1606;&#1575;&#1578; &#1578;&#1608;&#1610;&#1578;&#1585;</a></li>
        <li><a href="#">&#1588;&#1575;&#1607;&#1583;&#1606;&#1575; &#1593;&#1604;&#1609; &#1610;&#1608;&#1578;&#1610;&#1608;&#1576;</a></li>
        <li><a href="#">&#1580;&#1608;&#1580;&#1604; &#1576;&#1604;&#1587;</a></li>
        
        <li class="last"><a href="#">&#1604;&#1604;&#1578;&#1608;&#1575;&#1589;&#1604; &#1593;&#1576;&#1585; &#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>&#1571;&#1602;&#1587;&#1575;&#1605; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</h2>
      <ul>
        <li><a href="#">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1575;&#1582;&#1576;&#1575;&#1585; &#1587;&#1610;&#1575;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1602;&#1578;&#1589;&#1575;&#1583;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1571;&#1582;&#1576;&#1575;&#1585; &#1585;&#1610;&#1575;&#1590;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1571;&#1582;&#1576;&#1575;&#1585; &#1601;&#1606;&#1610;&#1577;</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>




</asp:Content>

