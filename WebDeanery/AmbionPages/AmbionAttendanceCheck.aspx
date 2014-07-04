<%@ Page Title="" Language="C#" MasterPageFile="~/AmbionPages/Ambion.Master" AutoEventWireup="true" CodeBehind="AmbionAttendanceCheck.aspx.cs" Inherits="WebDeanery.AmbionPages.AmbionAttendanceCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="/Scripts/Module/absent.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" language="javascript">
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
        
        function DBUpdate(TableName) {
        //    var t = document.getElementsByClassName("All");
        //    var table = document.getElementById(TableName);
        //    alert(table.rows[2].cells[4].innerHTML)

        var table = document.getElementById(TableName),
    rows = table.getElementsByTagName('tr'), i, j, cells;

            for (i = 0, j = rows.length; i < j; ++i) {
                cells = rows[i].getElementsByTagName('td');
                if (!cells.length) {
                    continue;
                }
                customerId = cells[0].innerHTML;
            }
        }
</script>
    <br/>
    <div id="CheckTable">
        <div id="TableHead">
            <div id ="HeadLeft">
&nbsp;&nbsp;&nbsp;
                Учебный год:&nbsp;<asp:Label ID="UchGod" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                Семестр:&nbsp;<asp:Label ID="Semestr" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
                Неделя:&nbsp;<asp:Label ID="Week" runat="server"></asp:Label>               
&nbsp;&nbsp;&nbsp;
                Курс:&nbsp;<asp:Label ID="Kurs" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;           
            <asp:Label ID="Cource" runat="server"></asp:Label>
            <br/>
            <br/>
&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Predmet" runat="server" Text="Предмет:">
                <asp:DropDownList ID="Subjects" runat="server" Width="200px"></asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Group" runat="server" Text="Группа:"></asp:Label>
                <asp:DropDownList ID="Groups" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Groups_SelectedIndexChanged"></asp:DropDownList>
            </asp:Label>
            </div>
            <div id="HeadRight">
            </div>
        </div>
        <br />
        <div id="Table">
            <table id ="CheckinTable" runat ="server" border="1" cellpadding="1" cellspacing="1" class="TableClass" style="width: 500px;" visible="False">
	        <thead>
		<tr>
			<th colspan="1" rowspan="2" scope="col">Հ.Հ.</th>
			<th colspan="1" rowspan="2" scope="col">Ազգանուն</th>
			<th colspan="1" rowspan="2" scope="col">Անուն</th>
			<th colspan="1" rowspan="2" scope="col">Հայրանուն</th>
            <th colspan="1" rowspan="2" scope="col">Ընդհամենը</th>
			<th colspan="2" rowspan="1" scope="col">Երկ.</th>
			<th colspan="2" rowspan="1" scope="col">Երք.</th>
			<th colspan="2" rowspan="1" scope="col">Չրք.</th>
			<th colspan="2" rowspan="1" scope="col">Հնգ.</th>
			<th colspan="2" rowspan="1" scope="col">Ուրբ.</th>
			<th colspan="2" rowspan="1" scope="col">Շբթ.</th>
			<th colspan="2" rowspan="1" scope="col">Կրկ.</th>
			
		</tr>
	</thead>
	<tbody>
		<tr style="text-align:center">
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
			<td>Դ</td>
			<td>Գ,Լ</td>
		</tr>
	</tbody>
</table>
        </div>
    </div>  
    <p>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />

            </p>  
       <input type="button" onclick="DBUpdate('Table')" value="Save" />
    <input type="button" onclick="printDiv('CheckTable')" value="Print" />

</asp:Content>
