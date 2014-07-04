<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendance.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/smart_tab_vertical.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/knockout-3.1.0.debug.js"></script>
    <script type="text/javascript" src="../Scripts/Module/AmbionModule.js"></script>
    <script type="text/javascript" src="../Scripts/Plugin/jquery.smartTab.js"></script>
    <script type="text/javascript">
        $(function () {
            ko.applyBindings(new AmbionModel(), document.getElementById("chooseDiv"));

            $($("input:radio")[0]).click();
           
        })
    </script>
    <style type="text/css">
        input[type=radio]:not(old) {
            width: 15px;
            opacity: 0;
        }

            input[type=radio]:not(old) + label {
                display: inline-block;
                margin-left: -15px;
                padding-left: 15px;
                background: url(/Resources/AmbionRes/02.png) no-repeat 0 0;
                line-height: 15px;
            }

            input[type=radio]:not(old):checked:hover + label {
                background: url(/Resources/AmbionRes/03.png) no-repeat;
            }

            input[type=radio]:not(old):checked + label {
                background: url(/Resources/AmbionRes/03.png) no-repeat;
            }

            input[type=radio]:not(old):hover + label {
                background: url(/Resources/AmbionRes/01.png) no-repeat;
            }

        #chooseDiv {
            padding-top: 0px;
            position: relative;
            margin-left: 50%;
            left: -487px;
        }

        .RadioDivClass {
            margin-left: 4px;
            margin-top: 10px;
        }

        .RadioDivClass > label {
            color: #D9AC29;
            font-size: large;
            font-weight: bold;
            margin-right: 60px;

        }

        .imageStyle {
            display: block;
        }

        .facultetName {
            cursor: pointer;
            font-size: 8px;
        }

        .facultetName > img {
             width: 20px;
             height: 20px;
        }


        .kursDiv, .masnagitutyunName {
            display: inline;
        }

        .kursActive {
            content: url(/Resources/AmbionRes/kurs2.png);
            width: 10px;
            height: 10px;
            cursor: pointer;
        }

        .kursPassive {
            content: url(/Resources/AmbionRes/kurs.png);
            display: inline;
            width: 10px;
            height: 10px;
            pointer-events: none;
            cursor: default;    
        }

        .masnagitutyunName > img {
            width: 20px;
            height: 20px;
        }

        .masnagitutyunName {
            cursor: pointer;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="chooseDiv">
        <div align="center" style="width: 974px; height: 26px;" class="RadioDivClass">
            <input id="College" type="radio" name="field" value="College" data-bind="click: selectRadio" />
            <label for="College">&nbsp;College</label>
            <input id="Bachelor" type="radio" name="field" value="Bachelor" data-bind="click: selectRadio" />
            <label for="Bachelor">&nbsp;Bachelor</label>
            <input id="Magistr" type="radio" name="field" value="Magistr" data-bind="click: selectRadio" />
            <label for="Magistr">&nbsp;Magistr</label>
            <input id="Aspirant" type="radio" name="field" value="Aspirant" data-bind="click: selectRadio" />
            <label for="Aspirant">&nbsp;Aspirant</label>
        </div>
        <div id="tabs">
            <ul data-bind="foreach: Facultets">
                <li>
                    <a class="facultetName" data-bind="text: FacultetName, attr: { href: '#tabs-' + FacultetId }, click: $root.OpenFakultet"></a>
                </li>
            </ul>
            <div data-bind="foreach: Facultets">
                <div data-bind="attr: { id: 'tabs-' + FacultetId }">
                    <h2 data-bind="text: FacultetName"></h2>
                    <ul class="list" data-bind="foreach: $parent.Masnagitutyun">
                        <li>
                            <div class="kursDiv">
                                <div class="masnagitutyunName" data-bind="text: Masnagitutyun"></div>
                                <img class="kursPassive" alt="1" data-bind="click: $root.GoToAnotherPage" />
                                <img class="kursPassive" alt="2" data-bind="click: $root.GoToAnotherPage" />
                                <img class="kursPassive" alt="3" data-bind="click: $root.GoToAnotherPage" />
                                <img class="kursPassive" alt="4" data-bind="click: $root.GoToAnotherPage" />
                                <img class="kursPassive" alt="5" data-bind="click: $root.GoToAnotherPage" />
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
