<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendance.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p style="margin: 10px"></p>
      <div align="center">
         <div id="NewsFrame" style="background-image: url('/Resources/NewsFrame.png'); height: 60px; width: 1004px;" align="left"> 
         </div>
      </div>
      <p style="margin: 10px"></p>
      <div align="center">
         <div id="UserFrame" style="background-image: url('/Resources/UserFrame.png'); height: 34px; width: 1004px; text-align: center; color: #D9AC29; font-size: large; font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: bold; padding-top: 3px; background-repeat: no-repeat;" align="left"> 
              Welcome <asp:LoginName ID="LoginName1" runat="server" />
         </div>
      </div>
<p align="center">
    <asp:ImageButton ID="ImageButton6" runat="server" 
    ImageUrl="/Resources/06.jpg"   
    onmouseover="this.src='/Resources/6.jpg'" 
    onmouseout="this.src='/Resources/06.jpg'" PostBackUrl="~/AmbionPages/TimeTable.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:ImageButton ID="ImageButton7" runat="server" 
        ImageUrl="/Resources/07.jpg"   
        onmouseover="this.src='/Resources/7.jpg'" 
        onmouseout="this.src='/Resources/07.jpg'" PostBackUrl="~/AmbionPages/AmbionAttendance.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" 
        ImageUrl="/Resources/04.jpg"   
        onmouseover="this.src='/Resources/4.jpg'" 
        onmouseout="this.src='/Resources/04.jpg'" 
        PostBackUrl="~/AmbionPages/ManageNews.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="/Resources/05.jpg"   
        onmouseover="this.src='/Resources/5.jpg'" 
        onmouseout="this.src='/Resources/05.jpg'"
        ToolTip="Расписание" PostBackUrl="~/AmbionPages/Examinations.aspx" />
    </p>
</asp:Content>




