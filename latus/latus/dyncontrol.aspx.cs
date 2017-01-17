using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace latus
{
    public partial class dyncontrol : System.Web.UI.Page
    {
        Label lbl = new Label();
        TextBox tb = new TextBox();
        Button btn = new Button();
        GridView gv = new GridView();

        private const int _firstEditCellIndex = 2;

        //Page.EnableEventValidation = false;

        protected void Page_Init(object sender, EventArgs e)
        {
            // Add dynamic controls to the init portion of the web page
            Page.Controls.Add(lbl);

            // When adding a control, set the ID property

            dynControl.Controls.Add(tb);
            tb.ID = "dynTextBox";

            dynControl.Controls.Add(btn);
            btn.ID = "dynButton1";

            dynControl.Controls.Add(gv);
            gv.ID = "dynGridView";

            //UserControl dq = new UserControl();

            //while (true)
            //{
            //    //dq = LoadControl(); // loading a Dynamic Data Field page *.ascx
            //    dq.ID = string.Concat("dq", "database data");
            //    dynControl.Controls.Add(dq);
            //    dynControl.Controls.Add(new LiteralControl("<br /><br />"));
            //}

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Make sure you add the controls outside of the PostBack below, otherwise any values set 
            // will not be persisted in the viewstate and lost during postback

            /* If inititialize dynamic controls here the controls will disappear during postbacks */
            // Now you can find and set the controls here

            lbl.Text = DateTime.Now.ToString();

            // At some point later in the page lifecycle reference the dynamic TextBox
            TextBox dTB = (TextBox)dynControl.FindControl("dynTextBox");
            dTB.Text = "FoundYou";
            dTB.BackColor = System.Drawing.Color.Red; // Initial BackColor

            Button dBtn1 = (Button)dynControl.FindControl("dynButton1");
            dBtn1.Text = "Click Me";

            GridView dGv = (GridView)dynControl.FindControl("dynGridView");
            dGv.RowDataBound += new GridViewRowEventHandler(dGv_RowDataBound);
            dGv.RowCommand += new GridViewCommandEventHandler(dGv_RowCommand);
            dGv.RowUpdating += new GridViewUpdateEventHandler(dGv_RowUpdating);
            dGv.ShowFooter = true;
            dGv.BackColor = System.Drawing.Color.White;
            dGv.BorderColor = System.Drawing.Color.FromArgb(Convert.ToInt32("E9ECEF", 16));
            dGv.AutoGenerateColumns = false;
            dGv.BorderStyle = BorderStyle.None;

            //dGv.BorderWidth = ??
            dGv.GridLines = GridLines.Vertical;

            ButtonField bf = new ButtonField();
            bf.Text = "SingleClick";
            bf.CommandName = "SingleClick";
            bf.Visible = false;
            //dGv.Columns.Insert(0, bf);
            dGv.Columns.Add(bf);


            TemplateField tf = new TemplateField();
            //tf.HeaderText = "Id";
            //Label tflbl = new Label();
            //tflbl.ID = "idLabel";
            //tflbl.Text =
            //tf.ItemTemplate =
            //dGv.Columns.Insert(1, AddTemplateField("Id", "Id", "Int32"));
            //dGv.Columns.Insert(2, AddTemplateField("Task", "Description", "String"));
            //dGv.Columns.Insert(3, AddDDLTemplateField("Assigned To", "AssignedTo", "String", People));
            //dGv.Columns.Insert(4, AddTemplateField("Status", "Status", "String"));
            //dGv.Columns.Insert(5, AddTemplateField("Tick", "Tick", "String"));

            dGv.Columns.Add(AddTemplateField("Id", "Id", "Int32"));
            dGv.Columns.Add(AddTemplateField("Task", "Description", "String"));
            dGv.Columns.Add(AddDDLTemplateField("Assigned To", "AssignedTo", "String", People));
            dGv.Columns.Add(AddTemplateField("Status", "Status", "String"));
            dGv.Columns.Add(AddTemplateField("Tick", "Tick", "String"));


            // you can also place it in a selected location by indicating the insert index
            // dGv.Columns.Insert(2, tf); // 0 index will insert these two at the third column

            dGv.DataSource = _sampleData;
            dGv.DataBind();

            if (dGv.SelectedIndex > -1)
            {
                // Call UpdateRow on every postback
                dGv.UpdateRow(dGv.SelectedIndex, false);
            }

            //dGv.GridLines = "Vertical";
            //dGv.AutoGenerateColumns = false;
            //dGv.Columns.Add((TextBox)

            // it is important to have a unique ID for each control, this can be pulled out of the database via the table's unique primary key field

            btn.Click += new EventHandler(ButtonClickEventHandler);


        }

        public TemplateField AddTemplateField(string header, string data, string type)
        {
            TemplateField tf = new TemplateField();
            tf.HeaderTemplate = new GridViewLabelTemplate(DataControlRowType.Header, header, type);
            tf.ItemTemplate = new GridViewLabelTemplate(DataControlRowType.DataRow, data, type);

            return tf;
        }

        public TemplateField AddDDLTemplateField(string header, string data, string type, List<string> Options)
        {
            TemplateField tf = new TemplateField();
            tf.HeaderTemplate = new GridViewLabelTemplate(DataControlRowType.Header, header, type);
            tf.ItemTemplate = new GridViewDDLTemplate(DataControlRowType.DataRow, data, Options);

            return tf;
        }

        public static void ButtonClickEventHandler(Object sender, EventArgs e)
        {
            //TextBox clkTB = (TextBox)placeHolder1.FindControl("dynTextBox");
            // Do something
        }
        public static void RecurseThroughControlHierarchy(Control c)
        {
            // Do whatever you want with this control
            // Recurse through c's children controls
            // This works when you have a number of similar controls

            foreach (Control child in c.Controls)
            {
                RecurseThroughControlHierarchy(child);
            }
        }

        protected void dGv_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get the LinkButton control in the first cell
                LinkButton _singleClickButton = (LinkButton)e.Row.Cells[0].Controls[0];

                // Get the javascript which is assigned to this LinkButton
                string _jsSingle = ClientScript.GetPostBackClientHyperlink(_singleClickButton, "");

                // If the page contains validator controls then call 
                // Page_ClientValidate before allowing a cell to be edited
                if (Page.Validators.Count > 0)
                    _jsSingle = _jsSingle.Insert(11, "if(Page_ClientValidate())");

                // Add events to each editable cell
                for (int columnIndex = _firstEditCellIndex; columnIndex < e.Row.Cells.Count; columnIndex++)
                {
                    // Add the column index as the event argument parameter
                    string js = _jsSingle.Insert(_jsSingle.Length - 2, columnIndex.ToString());
                    // Add this javascript to the onclick Attribute of the cell
                    e.Row.Cells[columnIndex].Attributes["onclick"] = js;
                    // Add a cursor style to the cells
                    e.Row.Cells[columnIndex].Attributes["style"] += "cursor:pointer;cursor:hand;";
                }
            }
        }

        protected void dGv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView _gridView = (GridView)sender;

            switch (e.CommandName)
            {
                case ("SingleClick"):
                    // Get the row index
                    int _rowIndex = int.Parse(e.CommandArgument.ToString());
                    // Parse the event argument (added in RowDataBound) to get the selected column index
                    int _columnIndex = int.Parse(Request.Form["__EVENTARGUMENT"]);
                    // Set the Gridview selected index
                    _gridView.SelectedIndex = _rowIndex;
                    // Bind the Gridview
                    _gridView.DataSource = _sampleData;
                    _gridView.DataBind();

                    // Write out a history if the event
                    this.Message.Text += "Single clicked GridView row at index " + _rowIndex.ToString() + " on column index " + _columnIndex + "<br />";

                    //// Get the display control for the selected cell and make it invisible
                    //Control _displayControl = _gridView.Rows[_rowIndex].Cells[_columnIndex].Controls[0]; // .Controls[1]
                    //_displayControl.Visible = false;
                    //// Get the edit control for the selected cell and make it visible
                    //Control _editControl = _gridView.Rows[_rowIndex].Cells[_columnIndex].Controls[1]; // .Controls[3]
                    //_editControl.Visible = true;
                    //// Clear the attributes from the selected cell to remove the click event
                    //_gridView.Rows[_rowIndex].Cells[_columnIndex].Attributes.Clear();

                    //// Set focus on the selected edit control
                    //ScriptManager.RegisterStartupScript(this, GetType(), "SetFocus", "document.getElementById('" + _editControl.ClientID + "').focus();", true);
                    //// If the edit control is a dropdownlist set the
                    //// SelectedValue to the value of the display control
                    //if (_editControl is DropDownList && _displayControl is Label)
                    //{
                    //    ((DropDownList)_editControl).SelectedValue = ((Label)_displayControl).Text;
                    //}
                    //// If the edit control is a textbox then select the text
                    //if (_editControl is TextBox)
                    //{
                    //    ((TextBox)_editControl).Attributes.Add("onfocus", "this.select()");
                    //}
                    //// If the edit control is a checkbox set the
                    //// Checked value to the value of the display control
                    //if (_editControl is CheckBox && _displayControl is Label)
                    //{
                    //    ((CheckBox)_editControl).Checked = bool.Parse(((Label)_displayControl).Text);
                    //}

                    break;
            }
        }

        protected void dGv_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView _gridView = (GridView)sender;

            if (e.RowIndex > -1)
            {
                // Loop though the columns to find a cell in edit mode
                for (int i = _firstEditCellIndex; i < _gridView.Columns.Count; i++)
                {
                    // Get the editing control for the cell
                    Control _editControl = _gridView.Rows[e.RowIndex].Cells[i].Controls[3];
                    if (_editControl.Visible)
                    {
                        int _dataTableColumnIndex = i - 1;

                        try
                        {
                            // Get the id of the row
                            Label idLabel = (Label)_gridView.Rows[e.RowIndex].FindControl("Id");
                            int id = int.Parse(idLabel.Text);
                            // Get the value of the edit control and update the DataTable
                            DataTable dt = _sampleData;
                            DataRow dr = dt.Rows.Find(id);
                            dr.BeginEdit();
                            if (_editControl is TextBox)
                            {
                                dr[_dataTableColumnIndex] = ((TextBox)_editControl).Text;
                            }
                            else if (_editControl is DropDownList)
                            {
                                dr[_dataTableColumnIndex] = ((DropDownList)_editControl).SelectedValue;
                            }
                            else if (_editControl is CheckBox)
                            {
                                dr[_dataTableColumnIndex] = ((CheckBox)_editControl).Checked;
                            }
                            dr.EndEdit();

                            // Save the updated DataTable
                            _sampleData = dt;

                            // Clear the selected index to prevent 
                            // another update on the next postback
                            _gridView.SelectedIndex = -1;

                            // Repopulate the GridView
                            _gridView.DataSource = dt;
                            _gridView.DataBind();
                        }
                        catch (ArgumentException)
                        {
                            this.Message.Text += "Error updating GridView row at index "
                                + e.RowIndex + "<br />";

                            // Repopulate the GridView
                            _gridView.DataSource = _sampleData;
                            _gridView.DataBind();
                        }
                    }
                }
            }
        }

        protected void AddRow_Click(object sender, EventArgs e)
        {
            // Add a new empty row
            DataTable dt = _sampleData;
            int newid = dt.Rows.Count + 1;
            dt.Rows.Add(new object[] { newid, "", "", "", false });
            _sampleData = dt;

            // Repopulate the GridView
            //dGv.DataSource = _sampleData;
            //dGv.DataBind();
        }

        private DataTable _sampleData
        {
            get
            {
                DataTable dt = (DataTable)Session["TestData"];

                if (dt == null)
                {
                    // Create a DataTable and save it to session
                    dt = new DataTable();

                    dt.Columns.Add(new DataColumn("Id", typeof(int)));
                    dt.Columns.Add(new DataColumn("Description", typeof(string)));
                    dt.Columns.Add(new DataColumn("AssignedTo", typeof(string)));
                    dt.Columns.Add(new DataColumn("Status", typeof(string)));
                    dt.Columns.Add(new DataColumn("Tick", typeof(string)));

                    dt.Rows.Add(new object[] { 1, "Create a new project", "Declan", "Complete", true });
                    dt.Rows.Add(new object[] { 2, "Build a demo applcation", "Olive", "In Progress", false });
                    dt.Rows.Add(new object[] { 3, "Test the demo applcation", "Peter", "Pending", true });
                    dt.Rows.Add(new object[] { 4, "Deploy the demo applcation", "Andy", "Pending", false });
                    dt.Rows.Add(new object[] { 5, "Support the demo applcation", "", "Pending", true });

                    // Add the id column as a primary key
                    DataColumn[] keys = new DataColumn[1];
                    keys[0] = dt.Columns["id"];
                    dt.PrimaryKey = keys;

                    _sampleData = dt;
                }

                return dt;
            }
            set
            {
                Session["TestData"] = value;
            }
        }

        private List<string> People
        {
            get
            {
                List<string> ppl = new List<string>();

                //ppl = new List<string>();
                ppl.Add("Andy");
                ppl.Add("Betty");
                ppl.Add("Conor");
                ppl.Add("Declan");
                ppl.Add("Eamon");
                ppl.Add("Fergal");
                ppl.Add("Gordon");
                ppl.Add("Helen");
                ppl.Add("Iris");
                ppl.Add("John");
                ppl.Add("Kevin");
                ppl.Add("Lorna");
                ppl.Add("Matt");
                ppl.Add("Nora");
                ppl.Add("Olive");
                ppl.Add("Peter");

                People = ppl;
                return ppl;

            }
            set
            {
                // add more if required
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            // The client events for GridView1 were created in GridView1_RowDataBound
            foreach (GridViewRow r in gv.Rows)
            {
                if (r.RowType == DataControlRowType.DataRow)
                {
                    for (int columnIndex = _firstEditCellIndex; columnIndex < r.Cells.Count; columnIndex++)
                    {
                        Page.ClientScript.RegisterForEventValidation(r.UniqueID + "$ctl00", columnIndex.ToString());
                    }
                }
            }

            base.Render(writer);
        }

        public class GridViewLabelTemplate : ITemplate
        {

            private DataControlRowType templateType;
            private string columnName;
            private string dataType;

            public GridViewLabelTemplate(DataControlRowType type,
                string colname, string DataType)
            {
                templateType = type;
                columnName = colname;
                dataType = DataType;
            }

            // dynamically added label column

            public void InstantiateIn(System.Web.UI.Control container)
            {
                DataControlFieldCell hc = null;

                switch (templateType)
                {
                    case DataControlRowType.Header:
                        // build the header for this column
                        Literal lc = new Literal();
                        lc.Text = "<b>" + BreakCamelCase(columnName) + "</b>";
                        container.Controls.Add(lc);
                        break;
                    case DataControlRowType.DataRow:
                        // build one row in this column
                        Label l = new Label();
                        switch (dataType)
                        {
                            case "DateTime":
                                l.CssClass = "ReportNoWrap";
                                break;
                            case "Double":
                                hc = (DataControlFieldCell)container;
                                hc.CssClass = l.CssClass = "ReportNoWrapRightJustify";
                                break;
                            case "Int16":
                            case "Int32":
                                hc = (DataControlFieldCell)container;
                                hc.CssClass = l.CssClass = "ReportNoWrapRightJustify";
                                break;
                            case "String":
                                l.CssClass = "ReportNoWrap";
                                break;
                        }
                        // register an event handler to perform the data binding
                        l.DataBinding += new EventHandler(this.l_DataBinding);
                        container.Controls.Add(l);
                        break;
                    default:
                        break;
                }
            }

            // helper method to convert CamelCaseString to Camel Case String
            // by inserting spaces
            private string BreakCamelCase(string CamelString)
            {
                string output = string.Empty;
                bool SpaceAdded = true;

                for (int i = 0; i < CamelString.Length; i++)
                {
                    if (CamelString.Substring(i, 1) ==
                        CamelString.Substring(i, 1).ToLower())
                    {
                        output += CamelString.Substring(i, 1);
                        SpaceAdded = false;
                    }
                    else
                    {
                        if (!SpaceAdded)
                        {
                            output += " ";
                            output += CamelString.Substring(i, 1);
                            SpaceAdded = true;
                        }
                        else
                            output += CamelString.Substring(i, 1);
                    }
                }

                return output;
            }

            private void l_DataBinding(Object sender, EventArgs e)
            {
                // get the control that raised this event
                Label l = (Label)sender;
                // get the containing row
                GridViewRow row = (GridViewRow)l.NamingContainer;
                // get the raw data value and make it pretty
                string RawValue = DataBinder.Eval(row.DataItem, columnName).ToString();
                switch (dataType)
                {
                    case "DateTime":
                        l.Text = String.Format("{0:d}", DateTime.Parse(RawValue));
                        break;
                    case "Double":
                        l.Text = String.Format("{0:###,###,##0.00}",
                            Double.Parse(RawValue));
                        break;
                    case "Int16":
                    case "Int32":
                        l.Text = RawValue;
                        break;
                    case "String":
                        l.Text = RawValue;
                        break;
                }
            }
        }

        public class GridViewDDLTemplate : ITemplate
        {

            private DataControlRowType templateType;
            private string columnName;
            private string dataType;
            private List<string> options;

            public GridViewDDLTemplate(DataControlRowType type, string colname, List<string> Options)
            {
                templateType = type;
                columnName = colname;
                options = Options;
            }

            // dynamically added label column

            public void InstantiateIn(System.Web.UI.Control container)
            {
                // DataControlFieldCell hc = null; // CSS Control

                // build the header for this column
                Label lc = new Label();
                lc.Visible = false;
                lc.DataBinding += new EventHandler(this.l_DataBinding);
                container.Controls.Add(lc);

                // build one row in this column
                DropDownList ddl = new DropDownList();
                ddl.DataSource = options;
                ddl.DataBind();
                // register an event handler to perform the data binding
                //l.DataBinding += new EventHandler(this.l_DataBinding);
                ddl.Visible = true;
                container.Controls.Add(ddl);
            }

            // helper method to convert CamelCaseString to Camel Case String
            // by inserting spaces
            private string BreakCamelCase(string CamelString)
            {
                string output = string.Empty;
                bool SpaceAdded = true;

                for (int i = 0; i < CamelString.Length; i++)
                {
                    if (CamelString.Substring(i, 1) ==
                        CamelString.Substring(i, 1).ToLower())
                    {
                        output += CamelString.Substring(i, 1);
                        SpaceAdded = false;
                    }
                    else
                    {
                        if (!SpaceAdded)
                        {
                            output += " ";
                            output += CamelString.Substring(i, 1);
                            SpaceAdded = true;
                        }
                        else
                            output += CamelString.Substring(i, 1);
                    }
                }

                return output;
            }

            private void l_DataBinding(Object sender, EventArgs e)
            {
                // get the control that raised this event
                Label l = (Label)sender;
                // get the containing row
                GridViewRow row = (GridViewRow)l.NamingContainer;
                // get the raw data value and make it pretty
                string RawValue = DataBinder.Eval(row.DataItem, columnName).ToString();
                switch (dataType)
                {
                    case "DateTime":
                        l.Text = String.Format("{0:d}", DateTime.Parse(RawValue));
                        break;
                    case "Double":
                        l.Text = String.Format("{0:###,###,##0.00}",
                            Double.Parse(RawValue));
                        break;
                    case "Int16":
                    case "Int32":
                        l.Text = RawValue;
                        break;
                    case "String":
                        l.Text = RawValue;
                        break;
                }
            }
        }
    }
}