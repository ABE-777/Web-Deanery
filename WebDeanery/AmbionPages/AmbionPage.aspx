<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendance.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendance" %>
<%@ Import Namespace="System.Web.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript" src="../Scripts/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="../Scripts/knockout-3.1.0.debug.js"></script>
    <script type="text/javascript" src="../Scripts/Module/AmbionModule.js"></script>
    <script type="text/javascript">
        $(function () {
            ko.applyBindings(new AmbionModel(), document.getElementById("chooseDiv"));
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="chooseDiv">
        <div>
        <input type="radio" name="Study" value="College" checked="checked" data-bind="click: CheckItem"/>College
        <input type="radio" name="Study" value="Bachelor" data-bind="click: CheckItem"/>Bachelor
            <input type="radio" name="Study" value="Magistr" data-bind="click: CheckItem"/>Magistr
            <input type="radio" name="Study" value="Aspirant" data-bind="click: CheckItem"/>Aspirant
        </div>
        <ul data-bind="foreach: items">
            <li data-bind="click: $root.OpenItem">
                <p data-bind="text: FacultetAnun"></p>
            </li>
        </ul>
        <div>
            <h1 data-bind="text: itemText"></h1>
        </div>
    </div>
</asp:Content>
<%-- <asp:ListBox ID="Fakultet" runat="server" DataSourceID="SqlDataSource1"  
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
        </asp:SqlDataSource>--%>