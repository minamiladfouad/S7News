<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showProfile.aspx.cs" Inherits="showProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.follow
{
    background-image:url('images/Follow.PNG');
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
       <td style="vertical-align:top;padding-top:10px; background-color:#F6F6F6;">
           <asp:Label ID="UserName" runat="server" CssClass="username" Text="اسم المستخدم"></asp:Label><br />
           <asp:Label ID="Mail" runat="server" CssClass="EMail"  Text="E-Mail"></asp:Label><br /><br />
           
               
               <asp:ImageButton ID="Button1" runat="server"   onclick="Button1_Click" 
               Visible="False" Height="30px" ImageUrl="~/images/Follow .PNG" 
               Width="80px"/>

               <asp:ImageButton ID="Unfollow" runat="server"   onclick="Unfollow_Click" 
               Visible="False" Height="30px" ImageUrl="~/images/UnFollow.PNG" 
               Width="80px"/>

           
           <asp:Label ID="Label1" runat="server" Text="لازم تسجل عشان تقدر تتابع" 
               ForeColor="Red"></asp:Label>
       </td>
       </tr>
       <tr>
          <td></td>
          <td class="style1" style="vertical-align:top;border-right-width:1px;border-right-style:groove;height:400px;" >
          <center>
          <br />
          <br />
          <asp:Label ID="Label2" runat="server" 
                  Text="عفوا لا توجد اخبار متعلقة حاليا" BackColor="Yellow" 
                  Font-Bold="True" Font-Size="Medium" Visible="False"></asp:Label><br />
                  
                  </center>

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

