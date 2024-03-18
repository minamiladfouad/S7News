<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistartion.aspx.cs" Inherits="UserRegistartion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.text
{
    font-size:medium;
    font-weight:bold;
    color:Gray;
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
      

      
           
      <table width="100%">
<tr>

           <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="UserName" ErrorMessage="رجاء ادخال اسم المستخدم" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="UserName" runat="server" Height="20px" Width="231px"></asp:TextBox>
            </td>
            <td>
            <asp:Label ID="Label1" runat="server" Text="اسم المستخدم" CssClass="text"></asp:Label>
            </td>
        </tr>


        <tr>
        
                <td>
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="Email" ErrorMessage="رجاء ادخال البريد الألكترونى" ForeColor="red"></asp:RequiredFieldValidator>
             
                    
            &nbsp;
             
                    
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="Email" ErrorMessage="رجاء اعادة ادخال البريد الألكترونى" ForeColor="red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           
                <asp:TextBox ID="Email" runat="server" Height="20px" Width="230px"></asp:TextBox>
           </td>
           <td>
        <asp:Label ID="Label2" runat="server" Text="البريد الألكترونى" CssClass="text"></asp:Label>

        </td></tr>

        <tr>
        
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="Questions" ErrorMessage="رجاء اختيار سؤال" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="Questions" runat="server" Height="27px" Width="235px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>ما هى أكلتك المفضلة ؟</asp:ListItem>
            <asp:ListItem>ما هو اسم اكبر اعمامك سنا ؟</asp:ListItem>
        </asp:DropDownList>
        </td>
        <td>
        <asp:label ID="label0" runat="server" Text="السؤال السرى" CssClass="text"></asp:label>
         
        </td></tr>
        
        <tr>
        
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
            ControlToValidate="SecretA" ErrorMessage="رجاء ادخال اجابة" ForeColor="red"></asp:RequiredFieldValidator>
        
        <asp:TextBox ID="SecretA" runat="server" Height="20px" Width="231px"></asp:TextBox>
        </td>
        <td>
        <asp:Label ID="label00" runat="server" Text="الاجابة السرية" CssClass="text"></asp:Label>
        </td></tr>
        
        <tr>
      
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="Password" ErrorMessage="رجاء ادخال كلمة السر" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="Password" runat="server" Height="20px" TextMode="Password" 
            Width="231px"></asp:TextBox>
        </td>
        <td>
        <asp:Label ID="Label3" runat="server" Text="كلمة السر" CssClass="text"></asp:Label>
        <br />
        <br />
        </td></tr>
        
        <tr>
      
        <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="Password" ControlToValidate="RePassword" 
            ErrorMessage="كلمة السر يجب ان تتطابق" ForeColor="red"></asp:CompareValidator>
       
        &nbsp;
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="RePassword" ErrorMessage="رجاءاعادةادخال تأكيد كلمة السر" ForeColor="red"></asp:RequiredFieldValidator>
           
        <asp:TextBox ID="RePassword" runat="server" Height="20px" TextMode="Password" 
            Width="231px"></asp:TextBox>
        </td>
        <td>
        <asp:Label ID="Label4" runat="server" Text="تأكيد كلمة السر" CssClass="text"></asp:Label>
        </td></tr>
        
        <tr>
               
        <td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="Gender_List" ErrorMessage="رجاء اختيار النوع" ForeColor="red"></asp:RequiredFieldValidator>
           
        <asp:DropDownList ID="Gender_List" runat="server" Height="27px" Width="235px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>ذكر</asp:ListItem>
            <asp:ListItem>انثى</asp:ListItem>
        </asp:DropDownList>
        </td>
        <td>
        <asp:Label ID="Label5" runat="server" Text="النوع" CssClass="text"></asp:Label>
        
        </td>
        </tr>
        
        <tr>
        
        <td align="right">
          
         <table>
         <tr>
         <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="Day" ErrorMessage="رجاء ادخال اليوم" ForeColor="red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
            runat="server" ControlToValidate="Month" ErrorMessage="رجاء اختيار الشهر" 
            ForeColor="red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="Year" ErrorMessage="رجاء ادخال السنة" ForeColor="red"></asp:RequiredFieldValidator>
       
        
             </br>
             <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="Day" ErrorMessage=" رجاء ادخال يوم صحيح" ForeColor="red" 
            MaximumValue="31" MinimumValue="1"></asp:RangeValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator3" runat="server" 
            ControlToValidate="Year" ErrorMessage="رجاء ادخال سنة صحيحة" ForeColor="red" 
            MaximumValue="2009" MinimumValue="1930"></asp:RangeValidator> 
            </td>
            <td>
             <asp:TextBox ID="Year" runat="server" Height="20px" Width="65px" MaxLength="4"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Text="سنة" CssClass="text"></asp:Label>

            </td>
            <td>
                 <asp:DropDownList ID="Month" runat="server" Height="25px" Width="45px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>يناير</asp:ListItem>
            <asp:ListItem>فبراير</asp:ListItem>
            <asp:ListItem>مارس</asp:ListItem>
            <asp:ListItem>ابريل</asp:ListItem>
            <asp:ListItem>مايو</asp:ListItem>
            <asp:ListItem>يونية</asp:ListItem>
            <asp:ListItem>يوليو</asp:ListItem>
            <asp:ListItem>اغسطس</asp:ListItem>
            <asp:ListItem>سيبتمبر</asp:ListItem>
            <asp:ListItem>اكتوبر</asp:ListItem>
            <asp:ListItem>نوفمبر</asp:ListItem>
            <asp:ListItem>ديسمبر</asp:ListItem>
        </asp:DropDownList>
       
       <asp:Label ID="Label8" runat="server" Text="شهر" CssClass="text"></asp:Label>
            </td>

            <td>
            <asp:TextBox ID="Day" runat="server" Height="19px" Width="36px" MaxLength="2"></asp:TextBox>
         
        <asp:Label ID="Label7" runat="server" Text="يوم" CssClass="text" ></asp:Label>   
            </td>

            
         </tr>
         </table>
     
             
       
         
      
       
       
           
        
         
         
     
       
               
       
         
               
      
         
            
        </td>
        
        <td>
        <asp:Label ID="Label6" runat="server" Text="تاريخ الميلاد" CssClass="text"></asp:Label>
        </td>
        
        </tr>


        <tr>
        <td style="padding-right:60px;padding-top:20px;">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="مستخدم جديد" CssClass="text">
        </asp:Button>
        </td>
        <td>
        
        </td>
        </tr>


 </table>
      
      

      <div id="respond" style="padding-bottom:100px;">
        
      </div>
    </div>
    
    <br class="clear" />
  </div>
</div>
</asp:Content>

