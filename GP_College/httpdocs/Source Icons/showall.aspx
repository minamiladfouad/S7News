<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showall.aspx.cs" Inherits="showall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
      <%
          if (Request.QueryString["cat"] == "sports")
          {
              %>
             
        <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li class="active"><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>
          
          <%
          }
          else if (Request.QueryString["cat"] == "political")
          {
              %>
            <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li class="active"><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>
           <%
          }
          else if (Request.QueryString["cat"] == "economy")
          {
                %>
         <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li class="active"><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>

        <%}
          else if (Request.QueryString["cat"] == "fan")
          {
             %>
            <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li class="active"><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>

        <%
            }
          else
          {
               %>
              <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li  class="active"><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>
        <%} %>
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
    <div class="wrapper col2">


</div>





<div class="wrapper">
  <div class="container">
    <div class="content">
      

      
      <table width="100%">
      <tr>
          <td class="style1" style="vertical-align:top;border-right-width:1px;border-right-style:groove;" >
          <%
             
              int news_count = Reader.Rows.Count;
              
              
              for (int i = 0; i < news_count; i++)
            { %>
              <table dir="rtl" width="100%">
              <tr>
              <td>
                  <table dir="rtl" >
                  <tr>
                  <td style="width:40px;">
                  <% Response.Write("<img src=\"" + Reader.Rows[i][4].ToString() + "\" Height=\"50px\" Width=\"60px\" />");  %>
                  
                     
                  </td>

                  <td>
                  <p>
                 
                  <%Response.Write("<a style=\"font-size:medium;\"  href=\"shownews.aspx?NewsID=" + Reader.Rows[i][0].ToString() + "\" >" + Reader.Rows[i][1].ToString() + "</a>"); %>
                  </p>
                  </td>

                  </tr>
                  <tr>
                  <td>
                  <% Response.Write("<img src=\"" + "source%20icons/" + Reader.Rows[i][8].ToString() + ".png"+ "\" Height=\"20px\" Width=\"60px\" />");  %>
                  
                  <%Response.Write(Reader.Rows[i][7].ToString()); %>
                  </td>
                  <td>
                  <%Response.Write(Reader.Rows[i][10].ToString()); %>
                  </td>
                  </tr>
                  </table>
              </td>
              </tr>
              <tr>
              <td>
              <hr />
              </td>
              </tr>
              </table>
              <%} %>

          </td>
      </tr>
      </table>
      
      
      
      
      <div id="respond">
        
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
      
      
      <div class="holder"><a href="#"><!--img src="images/demo/300x80.gif" alt="" /-->
          <asp:Chart ID="Chart1" runat="server" Height="150px" >
              <Series>
                  <asp:Series Name="Series1" ChartType="StackedColumn" YValuesPerPoint="6">
                      <Points>
                          <asp:DataPoint Label="Filoagl" YValues="50,0,0,0,0,0" />
                          <asp:DataPoint Label="Yallakora" YValues="0,0,0,0,0,0" />
                          <asp:DataPoint Label="Elshrok" YValues="0,0,0,0,0,0" />
                          <asp:DataPoint Label="El Arabia" YValues="0,0,0,0,0,0" />
                      </Points>
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1">
                  </asp:ChartArea>
              </ChartAreas>
              <Titles>
                  <asp:Title Font="Tahoma, 8.25pt, style=Bold" Name="SourceEvaluation" 
                      Text="&#1578;&#1602;&#1610;&#1610;&#1605; &#1605;&#1589;&#1575;&#1583;&#1585; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585;">
                  </asp:Title>
              </Titles>
          </asp:Chart>
      
      </a></div>
    </div>
    <br class="clear" />
  </div>
</div>







<!-- ####################################################################################################### -->




</asp:Content>

