<%@ Page Title="" Language="C#" MasterPageFile="~/DeaneryPages/Deanery.Master" AutoEventWireup="true" CodeBehind="DeaneryPage.aspx.cs" Inherits="WebDeanery.DeaneryPages.DeaneryPage" %>
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
    
    <asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="/Resources/diploma_suppliment.jpg"   
    onmouseover="this.src='/Resources/diploma_suppliment2.jpg'" 
    onmouseout="this.src='/Resources/diploma_suppliment.jpg'" PostBackUrl="~/DeaneryPages/DiplomaSupplement.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="/Resources/02.jpg"   
        onmouseover="this.src='/Resources/2.jpg'" 
        onmouseout="this.src='/Resources/02.jpg'" PostBackUrl="~/DeaneryPages/StudentDetails.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" 
        ImageUrl="/Resources/04.jpg"   
        onmouseover="this.src='/Resources/4.jpg'" 
        onmouseout="this.src='/Resources/04.jpg'" PostBackUrl="~/DeaneryPages/ManageNews.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="/Resources/05.jpg"   
        onmouseover="this.src='/Resources/5.jpg'" 
        onmouseout="this.src='/Resources/05.jpg'"
        ToolTip="Расписание" PostBackUrl="~/DeaneryPages/Examinations.aspx" />
     
   
    
    </p>
    <p align="center">
      
    <asp:ImageButton ID="ImageButton6" runat="server" 
    ImageUrl="/Resources/06.jpg"   
    onmouseover="this.src='/Resources/6.jpg'" 
    onmouseout="this.src='/Resources/06.jpg'" PostBackUrl="~/DeaneryPages/TimeTable.aspx"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton7" runat="server" 
        ImageUrl="/Resources/07.jpg"   
        onmouseover="this.src='/Resources/7.jpg'" 
        onmouseout="this.src='/Resources/07.jpg'" PostBackUrl="~/DeaneryPages/Attendance.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton10" runat="server" 
        ImageUrl="/Resources/010.jpg"   
        onmouseover="this.src='/Resources/10.jpg'" 
        onmouseout="this.src='/Resources/010.jpg'" PostBackUrl="~/DeaneryPages/Finance.aspx" />
  </p>
</asp:Content>