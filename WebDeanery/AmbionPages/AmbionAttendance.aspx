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
        <div align="center">
            <label><input type="radio"  checked="checked" name="mygroup" value="College" data-bind="checked: SelectedAttributeValueId" /> College</label>
            <label><input type="radio" name="mygroup" value="Bachelor" data-bind="checked: SelectedAttributeValueId" /> Bachelor</label>
            <label><input type="radio" name="mygroup" value="Magistr" data-bind="checked: SelectedAttributeValueId" /> Magistr</label>
            <label><input type="radio" name="mygroup" value="Aspirant" data-bind="checked: SelectedAttributeValueId" /> Aspirant</label>
            <hr />
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
