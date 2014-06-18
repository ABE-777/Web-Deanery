<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendance.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="chooseDiv">
        <asp:ListBox ID="Fakultet" runat="server" DataSourceID="SqlDataSource1"  
            Height="123px" Width="265px" DataTextField="Ֆակուլտետի_անվանումը" 
            DataValueField="Ֆակուլտետի_անվանումը" 
            onselectedindexchanged="Fakultet_SelectedIndexChanged">
        </asp:ListBox>
        <asp:ListBox ID="Spec" runat="server" DataSourceID="SqlDataSource2" 
            Height="123px" style="margin-top: 0px" 
            Width="265px" DataTextField="Մասնագիտություն" 
            DataValueField="Մասնագիտություն">
        </asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [Մասնագիտություն] FROM [Masnagitucyun]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Ֆակուլտետի անվանումը] AS Ֆակուլտետի_անվանումը FROM [Fakultet]">
        </asp:SqlDataSource>
    </div>
</asp:Content>