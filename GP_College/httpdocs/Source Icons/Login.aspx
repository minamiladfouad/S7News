<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="login-box.css" rel="stylesheet" type="text/css" />


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
    <div class="content" >
      

      
      <div style="width:300px;display:block;text-align:center;padding-left:200px;">
          <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
              BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
              Font-Size="0.8em" ForeColor="#333333" Width="300px">
              <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
              <LayoutTemplate>
                  <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                      <tr>
                          <td>
                            
                              <table cellpadding="0">
                                  <tr>
                                      <td align="center" colspan="2" 
                                          
                                          style="color:White;background-color:#830509;font-size:medium;font-weight:bold;" 
                                          width="300">
                                          Log In</td>
                                  </tr>
                                  <tr>
                                      <td align="right">
                                          <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                              Width="200px">E-Mail:</asp:Label>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="UserName" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                              ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                              ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="right">
                                          <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                      </td>
                                      <td>
                                        
                                          <asp:TextBox ID="Password" runat="server" Font-Size="Medium" TextMode="Password" 
                                              Width="200px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                              ControlToValidate="Password" ErrorMessage="Password is required." 
                                              ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td colspan="2">
                                          <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="center" colspan="2" style="color:Red;">
                                          <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Login1" 
            ControlToValidate="UserName" ErrorMessage="رجاء اعادة ادخال البريد الألكترونى" ForeColor="red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="right" colspan="2">
                                          <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" 
                                              BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                              Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Log In" 
                                              ValidationGroup="Login1" OnClick="login"  />
                                      </td>
                                  </tr>
                              </table>
                           
                          </td>
                      </tr>
                  </table>
              </LayoutTemplate>
              <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
              <TextBoxStyle Font-Size="0.8em" />
              <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                  ForeColor="White" />
          </asp:Login>
      </div>
      
      
      
      
      <div id="respond">
        
      </div>
    </div>
    <div class="column" >
      <div class="subnav">
        <h2 style="text-align:center;">فوائد التسجيل</h2>
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
      
      
    </div>
    <br class="clear" />
  </div>
</div>







<!-- ####################################################################################################### -->




</asp:Content>

