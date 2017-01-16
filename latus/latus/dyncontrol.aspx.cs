using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latus
{
    public partial class dyncontrol : System.Web.UI.Page
    {
        Label lbl = new Label();
        TextBox tb = new TextBox();
        Button btn = new Button();
        protected void Page_Init(object sender, EventArgs e)
        {
            // Add dynamic controls to the init portion of the web page
            Page.Controls.Add(lbl);

            // When adding a control, set the ID property

            dynControl.Controls.Add(tb);
            tb.ID = "dynTextBox";

            dynControl.Controls.Add(btn);
            btn.ID = "dynButton1";


            UserControl dq = new UserControl();

            while (true)
            {
                //dq = LoadControl(); // loading a Dynamic Data Field page *.ascx
                dq.ID = string.Concat("dq", "database data");
                dynControl.Controls.Add(dq);
                dynControl.Controls.Add(new LiteralControl("<br /><br />"));
            }

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

    }
}