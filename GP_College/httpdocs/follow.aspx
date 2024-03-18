<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="follow.aspx.cs" Inherits="follow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
      

      
      <table width="100%">
      <tr>
          <td class="style1" align="right">
          <% for (int i = 1; i < Reader.Rows.Count; i++)
             {
                 
                  %>
                            <table dir="rtl">
                            <tr>
                            <td>
                            <% if (Reader.Rows[i][6].ToString() == "")
                               { %>
                            <img src="default-profile-image.png" width="40" height="40" />
                            <%
                                }
                               else
                               {
                                   /*byte[] binaryImage = (byte[])Reader.Rows[i][6];
                                   Response.BinaryWrite(binaryImage);*/
                                   
                               }
                                    %>
                            </td>
                            
                            <td style="width:150px;">
                            
                            <%Response.Write(Reader.Rows[i][5]); %>
                            
                            </td>
                            <td><% Response.Write("<a href=\"showProfile.aspx?VID=" +Reader.Rows[i][1].ToString()+ "\">"); %> <img src="images/VIEW BUTTON.jpg"  width="50" height="30"/></a>
                             </td>
                             <td style="width:60px;"> </td>
                             <% if (i + 1 < Reader.Rows.Count)
                                { %>
                              <td>
                            <% if (Reader.Rows[i+1][6].ToString() == "")
                               { %>
                            <img src="http://egyptworldwide.com/default-profile-image.png" width="40" height="40" />
                            <%
                                 }
                               else
                               {
                                   /*byte[] binaryImage = (byte[])Reader.Rows[i][6];
                                   Response.BinaryWrite(binaryImage);*/

                               }
                                    %>
                            </td>
                            
                            <td style="width:150px;">
                            
                            <%Response.Write(Reader.Rows[i+1][5]); %>
                            
                            </td>
                            <td><% Response.Write("<a href=\"showProfile.aspx?VID=" + Reader.Rows[i+1][1].ToString() + "\">"); %> <img src="images/VIEW BUTTON.jpg"  width="50" height="30"/></a>
                             </td>
                             <%i++;
                                } %>
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
      
      
      
    </div>
    <br class="clear" />
  </div>
</div>







<!-- ####################################################################################################### -->


</asp:Content>

