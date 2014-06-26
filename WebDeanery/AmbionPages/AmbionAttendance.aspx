<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendance.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendance" %>

<%@ Import Namespace="System.Web.Services" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="../Scripts/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="../Scripts/knockout-3.1.0.debug.js"></script>
    <script type="text/javascript" src="../Scripts/Module/AmbionModule.js"></script>
    <script type="text/javascript">
        $(function () {
            ko.applyBindings(new AmbionModel(), document.getElementById("chooseDiv"));
            $(window).load(function () {
                $($("input:radio")[0]).click();
                $($(".facultetName")[0]).click();
            });

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

        .left {
            float: left;
            width: 33%;
        }

        .imageStyle {
            display: block;
        }

        .facultetName {
            cursor: pointer;
        }

            .facultetName > img {
                width: 20px;
                height: 20px;
            }

        .kursActive {
            content:url(/Resources/AmbionRes/kurs2.png)
            /*color: red;*/
        }

        .kursPassive {
            content: url(/Resources/AmbionRes/kurs.png);
            display: none;
        }

         .masnagitutyunName > img {
                width: 20px;
                height: 20px;
            }

        .masnagitutyunName {
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="left">
            <img src="../Resources/AmbionRes/fakult.png" />
            <ul data-bind="foreach: Facultets">
                <li>
                    <div class="facultetName" data-bind="text: FacultetName, click: $root.OpenFakultet">
                    </div>

                </li>
            </ul>
        </div>
        <div class="left">
            <p data-bind="text: FakultetText"></p>
            <ul data-bind="foreach: Masnagitutyun">
                <li>
                    <div class="masnagitutyunName" data-bind="text: Masnagitutyun, click: $root.OpenMasnagitutyun">
                    </div>

                </li>
            </ul>
        </div>
        <div class="left">

            <p data-bind="text: MasnagitutyunText"></p>

            <div>
                <div class="kursDiv">
                <img class="kursPassive"/>
                    <img class="kursPassive"/>
                    <img class="kursPassive"/>
                    <img class="kursPassive"/>
                    <img class="kursPassive"/>
                </div>
               <ul data-bind="foreach: Kurs">
                   <li data-bind="text: Kurs"></li>
               </ul>
            </div>
        </div>
    </div>
</asp:Content>
