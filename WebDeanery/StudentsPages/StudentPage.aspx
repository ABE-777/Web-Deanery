<%@ Page Title="" Language="C#" MasterPageFile="~/StudentsPages/Student.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="WebDeanery.StudentsPages.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center">
    <asp:ImageButton ID="ImageButton1" runat="server" 
     ImageUrl="/Resources/StudentRes/my_profile.jpg"   
        onmouseover="this.src='/Resources/StudentRes/my_profile2.jpg'" 
        onmouseout="this.src='/Resources/StudentRes/my_profile.jpg'" 
        PostBackUrl="~/StudentsPages/MyProfile.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
               ImageUrl="/Resources/StudentRes/news.jpg"   
        onmouseover="this.src='/Resources/StudentRes/news2.jpg'" 
        onmouseout="this.src='/Resources/StudentRes/news.jpg'" 
        PostBackUrl="~/StudentsPages/News.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton3" runat="server" 
            ImageUrl="/Resources/06.jpg"   
    onmouseover="this.src='/Resources/6.jpg'" 
    onmouseout="this.src='/Resources/06.jpg'" 
        PostBackUrl="~/StudentsPages/TimeTable.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" 
        ImageUrl="/Resources/05.jpg"   
        onmouseover="this.src='/Resources/5.jpg'" 
        onmouseout="this.src='/Resources/05.jpg'" 
        PostBackUrl="~/StudentsPages/Examinations.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="/Resources/07.jpg"   
        onmouseover="this.src='/Resources/7.jpg'" 
        onmouseout="this.src='/Resources/07.jpg'" 
        PostBackUrl="~/StudentsPages/Attendance.aspx"/>
</p>
</asp:Content>
