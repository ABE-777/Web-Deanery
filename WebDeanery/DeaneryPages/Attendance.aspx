<%@ Page Title="" Language="C#" MasterPageFile="~/DeaneryPages/Deanery.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="WebDeanery.DeaneryPages.Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="FacultyDiv">
<asp:DropDownList ID="Faculty" runat="server" DataSourceID="SqlDataSource" 
        DataMember="DefaultView">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [Ֆակուլտետի անվանումը] AS Ֆակուլտետի_անվանումը FROM [Fakultet]">
    </asp:SqlDataSource>
    </div>
    <div id="SpecDiv"> 
<asp:DropDownList ID="Spec" runat="server">
    </asp:DropDownList>
    </div>
    <div id="CourseDiv">
<asp:DropDownList ID="Course" runat="server">
    </asp:DropDownList>
    </div>
    <div id="GroupDiv">
<asp:DropDownList ID="Group" runat="server">
    </asp:DropDownList>
    </div>
    <div id="PredmetDiv">
<asp:DropDownList ID="Predmet" runat="server">
    </asp:DropDownList>
    </div>
</asp:Content>
