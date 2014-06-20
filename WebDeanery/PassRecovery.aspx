<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassRecovery.aspx.cs" Inherits="WebDeanery.PassRecovery" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Password recovery page</title>
<style type="text/css"> 
    #Label{background:none 0 0 no-repeat;height:20px;margin:0 auto;position:relative;width:414px;top: -155px;}
    #LoginResult{background:none 0 0 no-repeat;height:23px; margin:0 auto;position:relative;width:414px; top: -165px;}
    #ContinueButton{background:none 0 0 no-repeat;height:20px;margin:0 auto;position:relative;width:414px;top: -193px;}
    #Login_box {background:url(/Resources/Login/LoginText.png) 0 0 no-repeat;height:43px;margin:0 auto;position:relative;width:414px;top: -173px;left: 1px;}
    #Login_box input{border-style:  none;border-color: inherit;border-width: 0;font-family:Tahoma,Arial,Helvetica,sans-serif;font-size:25px;line-height:16px;margin:7px 0 4px 8px;outline:none;padding:2px;width:396px;top: -15px;left: 265px;-webkit-appearance:none;-webkit-border-radius:0;height: 30px;}
    #Login_box img {float:right;margin:0 0 0 0;}
    #Login_txt {width: 404px;}
    #LoginValidator{height:45px;margin:0 auto;position:relative;width:414px;top: -149px;left: 0px;}
    #SubmitButtonDiv{background:none 0 0 no-repeat;height:20px;margin:0 auto;position:relative;width:414px; top: -193px;}
    </style>
</head>
<body>

    <form id="form1" runat="server" style="text-align: center">
    <div id="PasswordRec" style="text-align: center">
    <asp:PasswordRecovery ID="PasswordRecovery" runat="server" Height="308px" Width="1366px">
    <UserNameTemplate>
    <br />
    <br />
    <br />
     <br />
    <img class="style5" src="Resources/Login/haah.png" alt=""  style="text-align: center" /><br />
    <br />
    <img class="style6" src="Resources/PassForm.jpg" alt="" style="text-align: center"/><br />
    <div id="Login_box" style="text-align:left">
    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
    </div>
    <div id="LoginValidator" style="text-align:left; width: 410px;">
    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Поле &quot;Имя пользователя&quot; является обязательным." style="font-family: 'Times New Roman', Times, serif" ToolTip="Поле &quot;Имя пользователя&quot; является обязательным." ValidationGroup="PasswordRecovery" ForeColor="#D9AC29" Font-Bold="True" Font-Size="Large" >Type your login</asp:RequiredFieldValidator>
    </div>
    <div id="SubmitButtonDiv" style="text-align:right; width: 410px; left: 0px;">
    &nbsp;
    <asp:ImageButton ID="SubmitButton" runat="server" ImageUrl="/Resources/Login/restore.jpg" onmouseout="this.src='/Resources/Login/restore.jpg'" onmouseover="this.src='/Resources/Login/restore1.jpg'" ValidationGroup="PasswordRecovery" Height="39px" Width="125px" CommandName="Submit"/>
    </div>
    <div id="LoginResult" style=" text-align:center; width: 410px; left: 0px; color: #D9AC29; font-size: large; font-weight: bold;">
    <asp:Literal ID="FailureText" runat="server" EnableViewState="False" ></asp:Literal>
    </div>
    </div>    
    </UserNameTemplate>
    <SuccessTemplate>
    <div id="Label" style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="The password will be sent to your email" Font-Bold="True" Font-Size="Large" ForeColor="#72241F"></asp:Label>
    <asp:ImageButton  ID="ContinueButton" runat="server" ImageUrl="/Resources/Login/continue.jpg" onmouseout="this.src='/Resources/Login/continue.jpg'" onmouseover="this.src='/Resources/Login/continue1.jpg'" Height="39px" Width="125px" CommandName="Submit"  PostBackUrl="~/Default.aspx" />
    </div>
    </SuccessTemplate>
    </asp:PasswordRecovery>
    </div>
    </form>
</body>
</html>