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
  opacity : 0;
}

        input[type=radio]:not(old) + label{
  display      : inline-block;
  margin-left  : -15px;
  padding-left : 15px;
  background   : url(/Resources/AmbionRes/02.png) no-repeat 0 0;
  line-height  : 15px;
}
         input[type=radio]:not(old):checked:hover + label{
   background   : url(/Resources/AmbionRes/03.png) no-repeat;
}
        input[type=radio]:not(old):checked + label{
   background   : url(/Resources/AmbionRes/03.png) no-repeat;
}
            input[type=radio]:not(old):hover + label {
                 background   : url(/Resources/AmbionRes/01.png) no-repeat;
            }
         #chooseDiv {
            padding-top:0px;
            position:relative;
            margin-left:50%;
            left:-487px;
        }
        .RadioDivClass {
            margin-left:4px;
            margin-top:10px;
        }
         .RadioDivClass >label{
            color: #D9AC29; 
            font-size: large;
            font-weight:bold;
            margin-right:60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="chooseDiv">
        <div align="center"  style="width:974px; height: 26px;" class="RadioDivClass">
             <input id="College" type="radio" name="field" value="College" checked="checked" data-bind="checked: SelectedAttributeValueId" />
             <label for="College" >&nbsp;College</label>
            <input id="Bachelor" type="radio" name="field" value="Bachelor" data-bind="checked: SelectedAttributeValueId"/>
             <label for="Bachelor">&nbsp;Bachelor</label>
            <input id="Magistr" type="radio" name="field" value="Magistr" data-bind="checked: SelectedAttributeValueId"/>
             <label for="Magistr">&nbsp;Magistr</label>
            <input id="Aspirant" type="radio" name="field" value="Aspirant" data-bind="checked: SelectedAttributeValueId"/>
             <label for="Aspirant"> &nbsp;Aspirant</label>
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
