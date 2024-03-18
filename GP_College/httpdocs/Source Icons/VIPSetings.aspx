<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VIPSetings.aspx.cs" Inherits="VIPSetings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">




        function shadeOnlineSearch() {

            document.onlineMem.src = "images/onlineMem_shadow.png";
        }

        function selectBtn1() {

            var oldHTML = document.getElementById('websiteOwners').innerHTML;
            var newHTML = "<a href=\"VIPSetings.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn1()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Settings </font></div> </a>";
            document.getElementById('websiteOwners').innerHTML = newHTML;

        }

        function returnBtn1() {

            var oldHTML = document.getElementById('websiteOwners').innerHTML;
            var newHTML = "<a href=\"VIPSetings.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn1()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Settings </font></div> </a>";
            document.getElementById('websiteOwners').innerHTML = newHTML;

        }
        //====================================== Button 2 =====================================================

        function selectBtn2() {

            var oldHTML = document.getElementById('SW_Providers').innerHTML;
            var newHTML = "<a href=\"VIPSecuritySettings.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn2()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Security settings </font></div> </a>";
            document.getElementById('SW_Providers').innerHTML = newHTML;

        }

        function returnBtn2() {

            var oldHTML = document.getElementById('SW_Providers').innerHTML;
            var newHTML = "<a href=\"VIPSecuritySettings.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn2()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Security settings </font></div> </a>";
            document.getElementById('SW_Providers').innerHTML = newHTML;

        }


        //====================================== Button 3 =====================================================

        function selectBtn3() {

            var oldHTML = document.getElementById('Firms').innerHTML;
            var newHTML = "<a href=\"MobileApp.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn3()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Mobile App </font></div> </a>";
            document.getElementById('Firms').innerHTML = newHTML;

        }

        function returnBtn3() {

            var oldHTML = document.getElementById('Firms').innerHTML;
            var newHTML = "<a href=\"MobileApp.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn3()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Mobile App </font></div> </a>";
            document.getElementById('Firms').innerHTML = newHTML;

        }

        //====================================== Button 4 =====================================================
        function selectBtn4() {

            var oldHTML = document.getElementById('schools').innerHTML;
            var newHTML = "<a href=\"Notification.aspx\" class=\"B2B_Links\" onmouseout=\"returnBtn4()\"><div  class=\"B2B_buttonsOnmouseOver\" ><font class=\"B2B_Buttons_txt\">Notification </font></div> </a>";
            document.getElementById('schools').innerHTML = newHTML;

        }

        function returnBtn4() {

            var oldHTML = document.getElementById('schools').innerHTML;
            var newHTML = "<a href=\"Notification.aspx\" class=\"B2B_Links\" onmouseover=\"selectBtn4()\"><div  class=\"B2B_buttons\" ><font class=\"B2B_Buttons_txt\">Notification </font></div> </a>";
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
        <a href="VIPSetings.aspx" class="B2B_Links" onmouseover="selectBtn1()" >
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
        <a href="VIPSecuritySettings.aspx" class="B2B_Links" onmouseover="selectBtn2()" >
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
        <a href="MobileApp.aspx" class="B2B_Links" onmouseover="selectBtn3()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
        Mobile App
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>
        
        
        
         
        <tr>
        <td >
        <div id="schools"   >
        <a href="Notification.aspx" class="B2B_Links" onmouseover="selectBtn4()" >
        <div  class="B2B_buttons" >
        <font class="B2B_Buttons_txt">
        
        Notification
                
        </font>
        </div>
        </a>
        </div>
        </td>
        </tr>



   
   
        </table>
              <!--------------------------------------------------------------------------->
          </td>
          <td>
          <table dir="rtl">
          <tr>
          <td>
          تغيير الصورة الشخصية
          </td>
          <td>
          <asp:FileUpload ID="FileUpload1" runat="server" />
          </td>
          <td>
          <asp:Button ID="Upload_Button" runat="server" OnClick="Upload" Text="تحميل" />
          </td>
          <td>
              <asp:Label ID="Progress" runat="server" Text=""></asp:Label>
          </td>
          </tr>
          <tr>
             <td>
             رقم التليفون
             </td>
             <td>
                 <asp:TextBox ID="mobileNumber" runat="server"></asp:TextBox>
             </td>
             <td></td>
              <td></td>
               
          </tr>

          <tr>
             <td>
             العنوان
             </td>
             <td>
                 <asp:TextBox ID="Address" runat="server"></asp:TextBox>
             </td>
             <td></td>
              <td></td>
               
          </tr>
          </table>
          
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

