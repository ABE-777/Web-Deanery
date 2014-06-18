<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDeanery.Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome!</title>
</head>
<body>
    <form id="form1" runat="server"  style="text-align:center;">
            <br />
            <br />
            <br />
            <br />
            <img class="style5" src="Resources/Login/haah.png" alt="" /><br />
            <br />
            <div align="center">
             <asp:Login ID="Login" runat="server" Height="147px"                       
            style="font-size: medium; font-family: 'Times New Roman', Times, serif; " 
            Width="500px" RememberMeSet="True" FailureText="User not found, you were not autorized!">
                        <LayoutTemplate>
                                  <img class="style6" src="Resources/Login/Loginform.jpg" alt=""/>&nbsp;<br />
    <div id="Login_box"  style="text-align:left">
              <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
              
        <style type="text/css">       
               #Login_box {background:url(/Resources/Login/LoginText.png) 0 0 no-repeat;height:43px;margin:0 auto;position:relative;width:414px;
            top: -257px;
            left: 1px;
        }
              #Login_box input{border-style:  none;
            border-color: inherit;
            border-width: 0;
            font-family:Tahoma,Arial,Helvetica,sans-serif;font-size:25px;line-height:16px;margin:7px 0 4px 8px;
outline:none;padding:2px;width:396px;
top: -15px;
            left: 265px;
            -webkit-appearance:none;-webkit-border-radius:0;
                height: 30px;
            }
              #Login_box img {float:right;margin:0 0 0 0;}
              #UserName
        {
            width: 404px;
        }
       
       
    </style></div>
    <div id="LoginValidator" style="width: 410px; text-align:right">
        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" 
                                            ErrorMessage="Поле &quot;Имя пользователя&quot; является обязательным." 
                                            style="font-family: 'Times New Roman', Times, serif" 
                                            ToolTip="Поле &quot;Имя пользователя&quot; является обязательным." 
                                            ValidationGroup="Login1" 
            ForeColor="#D9AC29" Font-Bold="True" Font-Size="Medium" >Enter login                                           </asp:RequiredFieldValidator>
        <style type="text/css">
            #LoginValidator{height:45px;
margin:0 auto;position:relative;width:414px;
            top: -254px;
            left: 0px;
        </style>
        </div>
    <div id="Password_box"  style="text-align:left">
         <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
             <br />
             <br />
             <style type="text/css">       
               #Password_box {background:url(/Resources/Login/LoginText.png) 0 0 no-repeat;height:43px;margin:0 auto;position:relative;width:414px;
            top: -257px;
            left: 1px;
        }
              #Password_box input{border-style:  none;
            border-color: inherit;
            border-width: 0;
            font-family:Tahoma,Arial,Helvetica,sans-serif;font-size:25px;line-height:16px;margin:7px 0 4px 8px;
outline:none;padding:2px;width:396px;
top: -15px;
            left: 265px;
            -webkit-appearance:none;-webkit-border-radius:0;
                height: 30px;
            }
              #Password_box img {float:right;margin:0 0 0 0;}      
    </style>
    </div>
    <div id="PasswordValidator" style=" text-align:right; width: 410px; left: 0px;">
        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" 
                                            ErrorMessage="Поле &quot;Пароль&quot; является обязательным." 
                                            ToolTip="Поле &quot;Пароль&quot; является обязательным." 
                                            ValidationGroup="Login1" 
            ForeColor="#D9AC29" Font-Bold="True" Font-Overline="False" 
            Font-Size="Medium">Enter password</asp:RequiredFieldValidator>
        
        <style type="text/css">
              #PasswordValidator{background:none 0 0 no-repeat;height:20px;
margin:0 auto;position:relative;width:414px;
            top: -255px
            }
            </style></div>
    <div id="RememberCheck" style=" text-align:left; width: 410px; left: -4px;">
        <asp:CheckBox ID="RememberMe" runat="server" 
                style="font-style:normal; font-weight: 700" 
            Text="Remember me" Font-Italic="False" ForeColor="#72241F" 
            Font-Size="Medium" Font-Bold="True"></asp:CheckBox>
        <style type="text/css">
            #RememberCheck{background:none 0 0 no-repeat;height:20px;margin:0 auto;position:relative;width:414px;
            top: -240px}
            </style>
        </div>
    <div id="LoginButtonDiv" style=" text-align:left; width: 410px; left: 0px;">
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/PassRecovery.aspx" Font-Bold="True" ForeColor="#72241F" Font-Size="Large">Forget password?</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:ImageButton  
                 ID="LoginButton" runat="server" CssClass="RightArrow" 
                 ImageUrl="/Resources/Login/Loginbutton0.jpg" onmouseout="this.src='/Resources/Login/Loginbutton0.jpg'" 
                 onmouseover="this.src='/Resources/Login/Loginbutton.jpg'" 
             style="width: 80px; height: 43px" 
            ValidationGroup="Login1" CommandName="Login" onclick="LoginButton_Click"/>
        <style type="text/css">
            #LoginButtonDiv{background:none 0 0 no-repeat;height:2px;
margin:0 auto;position:relative;width:414px;
            top: -257px
            }
            </style>
            </div>
    <div id="LoginResult" style=" text-align:center; width: 410px; left: 0px; color: #D9AC29; font-size: large; font-weight: bold;">
             <asp:Literal ID="FailureText" runat="server" EnableViewState="False" ></asp:Literal>
        <style type="text/css">
            #LoginResult{background:none 0 0 no-repeat;height:2px; margin:0 auto;position:relative;width:414px;
            top: -165px
            }
            </style>
            </div>
            </LayoutTemplate>
            </asp:Login>
            </div>
    </form>
</body>
</html>
