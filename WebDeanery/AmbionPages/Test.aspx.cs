﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebDeanery.AmbionPages
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 // Create a new HtmlTable object.
        HtmlTable table1 = new HtmlTable();
 
        // Set the table's formatting-related properties.
        table1.Border = 1;
        table1.CellPadding = 3;
        table1.CellSpacing = 3;
        table1.BorderColor = "red";
 
        // Start adding content to the table.
        HtmlTableRow row;
        HtmlTableCell cell;
        for (int i=1; i<5; i++)
        {
                // Create a new row and set its background color.
                row = new HtmlTableRow();
                for (int j=1; j<=4; j++)
                {

                        // Create a cell and set its text.
                        cell = new HtmlTableCell();
                    cell.InnerHtml = "<input>"; 
                        //cell.InnerHtml = "Row: " + i.ToString()+ "Cell: " + j.ToString();
                        // Add the cell to the current row.
                        row.Cells.Add(cell);
                }
 
                // Add the row to the table.
                table1.Rows.Add(row);
        }
 
        // Add the table to the page.
        this.Controls.Add(table1);
        }
    }
}