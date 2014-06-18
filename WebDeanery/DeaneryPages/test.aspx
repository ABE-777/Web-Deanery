<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebDeanery.DeaneryPages.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackImageUrl="~/Resources/NewsFrame.png" BorderColor="Red" BorderWidth="3px" 
            DataKeyNames="Ֆակուլտետ ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Ֆակուլտետ ID" HeaderText="Ֆակուլտետ ID" 
                    ReadOnly="True" SortExpression="Ֆակուլտետ ID" />
                <asp:BoundField DataField="Ֆակուլտետի անվանումը" 
                    HeaderText="Ֆակուլտետի անվանումը" SortExpression="Ֆակուլտետի անվանումը" />
                <asp:BoundField DataField="Կրճատ" HeaderText="Կրճատ" SortExpression="Կրճատ" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Fakultet]"></asp:SqlDataSource>
    
    </div>



    <style type="text/css">
    #faux-button
    {
        cursor:pointer;
    }
              #search_box input{background:none;border:0;font-family:Tahoma,Arial,Helvetica,sans-serif;font-size:16px;line-height:16px;margin:2px 0 2px 5px;outline:none;padding:2px;width:270px;-webkit-appearance:none;-webkit-border-radius:0;}
              </style>




      





<div class="faux-button">
    <asp:Label ID="lblAddUser" 
        runat="server" 
        Text="Add User" 
        AssociatedControlID="imgClick" />
   
</div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
         <div id="search_box" align="left">
     <asp:ImageButton ID="ibtnAddUser" 
        runat="server" 
        ImageUrl="~/Resources/Head/user_settings.jpg" 
        AlternateText="Add a user image" />
    <input id="txt_search" type="text" />
    <style type="text/css">        
        #search_box {background:url(/Resources/search.png) 0 0 no-repeat;height:28px;margin:0 auto;position:relative;width:307px;
            top: -77px;
            left: 318px;
        }
              #search_box input{border-style:  none;
            border-color: inherit;
            border-width: 0;
            font-family:Tahoma,Arial,Helvetica,sans-serif;font-size:16px;line-height:16px;margin:2px 0 2px 5px;outline:none;padding:2px;width:266px;top: -15px;
            left: 265px;
            -webkit-appearance:none;-webkit-border-radius:0;
        }
              #search_box img {float:right;margin:0 0 0 0;}
        #txt_search
        {
            width: 270px;
        }
        .RightArrow
        {}
    </style>
    </div>
         </body>
</html>
