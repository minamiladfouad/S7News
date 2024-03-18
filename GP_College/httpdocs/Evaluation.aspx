<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Evaluation.aspx.cs" Inherits="Evaluation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>
        <!--li><a href="#">&#1601;&#1606;</a>
          <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
            <li><a href="#">Link 3</a></li>
          </ul>
        </li-->
       
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
             </form>
    </div>
    <br class="clear" />
  </div>
</div>




<div class="wrapper">
  <div class="container">
    <div class="content">
      
       <table width="100%" class="showTable">
       <tr>
       <td style="background-color:#FFFFAE;border:1px 0 black 0 ;" >
       <h1 style="text-align:center;">تقييم مصادر الاخبار</h1>
       <p>
       تقييم مصادر الاخبار من حيث مصداقية ومدى موضوعية اخبارها من اهم المميزات التي يتميز بها موقعنا، فهي الاولى من نوعها على مستوى دول العالم
      
       </p>
       <p>س. كيف يتم هذا التقييم وعلى اي اساس؟</p>
       <p>
       ج.هذا التقييم يتم بناء على 
       <br />
        تجميع الاخبار من جميع المصادر
        <br />
        تقييم كل شخص او كيان متعلق به الخبر على الخبر نفسه سواء بالاثبات او النفي
        <br />
        مقارنة نسبة الاخبار الصحيحة والاخبار الخاطئة بالنسبة لكل مصدر وبناء التقييم على ذلك
      
       </p>
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
    <div class="fl_left"><a href="#"><img src="images/demo/468x60.gif" alt="" /></a></div>
    <div class="fl_right"><a href="#"><img src="images/demo/468x60.gif" alt="" /></a></div>
    <br class="clear" />
  </div>
</div>


<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer">
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>




</asp:Content>

