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

            if (!Page.IsPostBack)
            {
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
                dGv.DataSource = _sampleData;
                dGv.DataBind();
                //dGv.GridLines = "Vertical";
                //dGv.AutoGenerateColumns = false;
                //dGv.Columns.Add((TextBox)

                // it is important to have a unique ID for each control, this can be pulled out of the database via the table's unique primary key field
            }

            btn.Click += new EventHandler(ButtonClickEventHandler);
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
    }
}