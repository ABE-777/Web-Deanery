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
    <style type="text/css">
        input[type=radio]:not(old){
  width   : 15px;
  margin  : 0;
  padding : 0;
  opacity : 0;
}

        input[type=radio   ]:not(old) + label{
  display      : inline-block;
  margin-left  : -15px;
  padding-left : 15px;
  background   : url(/Resources/AmbionRes/01.png) no-repeat 0 0;
  line-height  : 24px;
}
        input[type=radio]:not(old):checked + label{
  background-position : 0 -48px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="chooseDiv">
        <div align="center" >

             <input id="College" type="radio" name="field" value="College"/>
             <label for="College">College</label>
            <input id="Bachelor" type="radio" name="field" value="Bachelor"/>
             <label for="Bachelor">Bachelor</label>
            <input id="Magistr" type="radio" name="field" value="Magistr"/>
             <label for="Magistr">Magistr</label>
            <input id="Aspirant" type="radio" name="field" value="Aspirant"/>
             <label for="Aspirant">Aspirant</label>
           <%-- <label><input type="radio"  checked="checked" name="mygroup" value="College" data-bind="checked: SelectedAttributeValueId" class="RadioClass" hidden src="../Resources/AmbionRes/01.png" style="background-image: url('../Resources/AmbionRes/01.png'); background-repeat: no-repeat"  /> College</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <label><input type="radio" name="mygroup" value="Bachelor" data-bind="checked: SelectedAttributeValueId" /> Bachelor</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <label><input type="radio" name="mygroup" value="Magistr" data-bind="checked: SelectedAttributeValueId" /> Magistr</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <label><input type="radio" name="mygroup" value="Aspirant" data-bind="checked: SelectedAttributeValueId" /> Aspirant</label>&nbsp; 
            <hr />--%>
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
