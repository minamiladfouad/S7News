﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserNotificaiton.aspx.cs" Inherits="UserNotificaiton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">



        function shadeOnlineSearch() {

            document.onlineMem.src = "images/onlineMem_shadow.png";
        }

        function selectBtn1() {

            var oldHTML = document.getElementById('websiteOwners').innerHTML;
            var newHTML = "<a href=\"UserSettings.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn1()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Settings </font></div> </a>";
            document.getElementById('websiteOwners').innerHTML = newHTML;

        }

        function returnBtn1() {

            var oldHTML = document.getElementById('websiteOwners').innerHTML;
            var newHTML = "<a href=\"UserSettings.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn1()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Settings </font></div> </a>";
            document.getElementById('websiteOwners').innerHTML = newHTML;

        }
        //====================================== Button 2 =====================================================

        function selectBtn2() {

            var oldHTML = document.getElementById('SW_Providers').innerHTML;
            var newHTML = "<a href=\"UserSecuritySettings.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn2()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Securuty settings </font></div> </a>";
            document.getElementById('SW_Providers').innerHTML = newHTML;

        }

        function returnBtn2() {

            var oldHTML = document.getElementById('SW_Providers').innerHTML;
            var newHTML = "<a href=\"UserSecuritySettings.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn2()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Securuty settings</font></div> </a>";
            document.getElementById('SW_Providers').innerHTML = newHTML;

        }


        //====================================== Button 3 =====================================================

        function selectBtn3() {

            var oldHTML = document.getElementById('Firms').innerHTML;
            var newHTML = "<a href=\"Followers.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn3()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Following </font></div> </a>";
            document.getElementById('Firms').innerHTML = newHTML;

        }

        function returnBtn3() {

            var oldHTML = document.getElementById('Firms').innerHTML;
            var newHTML = "<a href=\"Followers.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn3()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Following </font></div> </a>";
            document.getElementById('Firms').innerHTML = newHTML;

        }

        //====================================== Button 4 =====================================================
        function selectBtn4() {

            var oldHTML = document.getElementById('schools').innerHTML;
            var newHTML = "<a href=\"UserNotificaiton.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn4()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Notifications </font></div> </a>";
            document.getElementById('schools').innerHTML = newHTML;

        }

        function returnBtn4() {

            var oldHTML = document.getElementById('schools').innerHTML;
            var newHTML = "<a href=\"UserNotificaiton.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn4()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Notifications </font></div> </a>";
            document.getElementById('schools').innerHTML = newHTML;

        }


</script>


<style type="text/css">
div.B2B_buttons
{
	
	background-color:#F6F6F6;
	padding-left:10px;
	text-align:center;
	height:20px;
	font-weight:bold;
	font-family:Verdana;
	color:Black
	
	
}
div.B2B_buttonsOnmouseOver
{
	
	background-color:#ACACAC;
	padding-left:10px;
	text-align:center;
	height:20px;
	font-weight:bold;
	font-family:Verdana;
	
}
.mainTable
{
		border-collapse: collapse;
			
}
a.B2B_Links{
	
	text-decoration:none;
	color:white;

}

    .style1
    {
        height: 147px;
    }

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li ><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
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
    
    <br class="clear" />
  </div>
</div>
    <div class="wrapper">
  <div class="container">
    <div style="display:block;
	float:right;
	width:100%;">
      

      
       <table width="100%" dir="rtl">
       <tr>
       <td style="width:150px;">
           <asp:Image ID="ProfilePic" runat="server" Height="120" Width="150" 
               ImageUrl="http://egyptworldwide.com/default-profile-image.png" />
       </td>
       <td style="vertical-align:top;padding-top:10px; background-color:#F6F6F6;>
           <asp:Label ID="UserName" runat="server" CssClass="username" Text="اسم المستخدم"></asp:Label><br />
           <asp:Label ID="Mail" runat="server" CssClass="EMail" Text="E-Mail"></asp:Label>
       </td>
       </tr>
       <tr>
          <td class="style1" style="vertical-align:top;">
              <!--------------------------------------------------------------------------->
              <table width="100%" ><!--------------------- table of buttons --------->
        <tr>
        <td>
        <div id="websiteOwners"   >
        <a href="UserSettings.aspx" class="B2B_Links" onmouseover="selectBtn1()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
        Settings
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>
        
        
        <tr>
        <td >
        <div id="SW_Providers"   >
        <a href="UserSecuritySettings.aspx" class="B2B_Links" onmouseover="selectBtn2()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
       Security settings 
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>
        
        
        
        <tr>
        <td>
        <div id="Firms"   >
        <a href="Followers.aspx" class="B2B_Links" onmouseover="selectBtn3()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
        Following 
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>
        
        
        
         
        <tr>
        <td >
        <div id="schools"   >
        <a href="UserNotificaiton.aspx" class="B2B_Links" onmouseover="selectBtn4()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
        Notifications
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>



   
   
        </table>
              <!--------------------------------------------------------------------------->
          </td>
          <td class="style1" style="vertical-align:top;border-right-width:1px;border-right-style:groove;height:400px" >

        
             
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

                  <%Response.Write("<a href=\"shownews.aspx?NewsID=" + Reader.Rows[i][0].ToString() + "\" >" + Reader.Rows[i][1].ToString() + "</a>"); %>
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
    
    <br class="clear" />
  </div>
</div> 


</asp:Content>

