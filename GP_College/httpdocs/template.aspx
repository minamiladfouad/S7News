<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="template.aspx.cs" Inherits="template" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
      body {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica, sans-serif;
        background: #000 url(bg-texture.png) repeat;
        color: #dddddd;
      }
      
      h1, h3 {
        margin: 0;
        padding: 0;
        font-weight: normal;
      }
      
      a {
        color: #EB067B;
      }
      
      div#container {
        width: 580px;
        margin: 100px auto 0 auto;
        padding: 20px;
        background: #000;
        border: 1px solid #1a1a1a;
      }
      
      /* HOVER STYLES */
      div#pop-up {
        display: none;
        position: absolute;
        width: 280px;
        padding: 10px;
        background: #eeeeee;
        color: #000000;
        border: 1px solid #1a1a1a;
        font-size: 90%;
      }
    </style>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js">
    
</script>

 <script type="text/javascript">
     $(function () {
         var moveLeft = 20;
         var moveDown = 10;

         $('a#trigger').hover(function (e) {
             $('div#pop-up').show();
             //.css('top', e.pageY + moveDown)
             //.css('left', e.pageX + moveLeft)
             //.appendTo('body');
         }, function () {
             $('div#pop-up').hide();
         });

         $('a#trigger').mousemove(function (e) {
             $("div#pop-up").css('top', e.pageY + moveDown).css('left', e.pageX + moveLeft);
         });

     });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
  <div class="container">
    <div style="display:block;
	float:right;
	width:100%;">
      
       <div id="container">
      <h1>jQuery Tutorial - Pop-up div on hover</h1>
      <p>
        To show hidden div, simply hover your mouse over
        <a href="#" id="trigger">this link</a>.
      </p>
      
      <!-- HIDDEN / POP-UP DIV -->
      <div id="pop-up">
        <h3>Pop-up div Successfully Displayed</h3>
        <p>
          This div only appears when the trigger link is hovered over. Otherwise
          it is hidden from view.
        </p>
      </div>
      
    </div>






      
       hany<br /><br />
        Select your favorite color:
<br />
<asp:RadioButton id="red" Text="Red" Checked="True" 
GroupName="colors" runat="server" Visible="False"/>
<br />
<asp:RadioButton id="green" Text="Green"
GroupName="colors" runat="server" Visible="False"/>
<br />
<asp:RadioButton id="blue" Text="Blue" 
GroupName="colors" runat="server"/>
<br /><% int a=0; %>
        <asp:Image ID="Image1" runat="server" />
<asp:Button ID="Button1" text="Submit" OnCommand="submit" CommandArgument= "1" 
            runat="server" CommandName="11" onclick="Button1_Click"/>

      <p><asp:Label id="Label1" runat="server"/></p>
        <asp:CheckBox ID="CheckBox1" runat="server" />

        <asp:CheckBox ID="CheckBox2" runat="server" />
        <asp:CheckBox ID="CheckBox3" runat="server" />
         

      <asp:FileUpload ID="FileUpload1" runat="server" />
      
      <div id="respond">
        
      </div>
    </div>
    
    <br class="clear" />
  </div>
</div>
</asp:Content>

