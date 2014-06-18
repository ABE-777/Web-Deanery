<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebDeanery.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Ошибка!</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            font-weight: bold;
        }
        .style2
        {
            font-size: large;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" Height="518px" ImageUrl="~/Resources/Lock.jpg" 
            style="text-align: center" Width="644px" />
    
    </div>
    <div class="style1">
        Доступ запрещён!</div>
    <p class="style2" style="text-align: center">
        Чтоб получить доступ к данной странице
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">авторизуйтесь!</asp:LinkButton>
    </p>
    </form>
</body>
</html>
