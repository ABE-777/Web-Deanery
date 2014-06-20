<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMainPage.aspx.cs" Inherits="WebDeanery.AdminPages.AdminMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center">
    
    <asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="/Resources/01.jpg"   
    onmouseover="this.src='/Resources/1.jpg'" 
    onmouseout="this.src='/Resources/01.jpg'" 
        PostBackUrl="~/AdminPages/AddMission.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="/Resources/02.jpg"   
        onmouseover="this.src='/Resources/2.jpg'" 
        onmouseout="this.src='/Resources/02.jpg'" 
        PostBackUrl="~/AdminPages/StudentDetails.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton3" runat="server" 
        ImageUrl="/Resources/03.jpg"   
        onmouseover="this.src='/Resources/3.jpg'" 
        onmouseout="this.src='/Resources/03.jpg'" 
        PostBackUrl="~/AdminPages/ManageUsers.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" 
        ImageUrl="/Resources/04.jpg"   
        onmouseover="this.src='/Resources/4.jpg'" 
        onmouseout="this.src='/Resources/04.jpg'" 
        PostBackUrl="~/AdminPages/ManageNews.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="/Resources/05.jpg"   
        onmouseover="this.src='/Resources/5.jpg'" 
        onmouseout="this.src='/Resources/05.jpg'"
        ToolTip="Расписание" PostBackUrl="~/AdminPages/Examinations.aspx" />
    
    </p>
    <p align="center">
      <asp:ImageButton ID="ImageButton6" runat="server" 
    ImageUrl="/Resources/06.jpg"   
    onmouseover="this.src='/Resources/6.jpg'" 
    onmouseout="this.src='/Resources/06.jpg'"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton7" runat="server" 
        ImageUrl="/Resources/07.jpg"   
        onmouseover="this.src='/Resources/7.jpg'" 
        onmouseout="this.src='/Resources/07.jpg'"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton8" runat="server" 
        ImageUrl="/Resources/08.jpg"   
        onmouseover="this.src='/Resources/8.jpg'" 
        onmouseout="this.src='/Resources/08.jpg'"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton9" runat="server" 
        ImageUrl="/Resources/09.jpg"   
        onmouseover="this.src='/Resources/9.jpg'" 
        onmouseout="this.src='/Resources/09.jpg'"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton10" runat="server" 
        ImageUrl="/Resources/010.jpg"   
        onmouseover="this.src='/Resources/10.jpg'" 
        onmouseout="this.src='/Resources/010.jpg'" />
  </p>
</asp:Content>







