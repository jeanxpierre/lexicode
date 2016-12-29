using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latus
{
    public partial class testpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label lbl = new Label();
            Button btn = new Button();
            DropDownList ddl = new DropDownList();
            RadioButton rb = new RadioButton();



            ddl.Text = "Option 1";

            //Page.Controls.Add(ddl);

            Page.Controls.Add(btn);

            if (!Page.IsPostBack)
            {
                btn.Text = "Click Me";
            }

            btn.Click += new EventHandler(this.OnBtn_Click);

            lbl.Text = DateTime.Now.ToString();
        }

        void OnBtn_Click(Object sender, EventArgs e)
        {
            Button clickedButton = (Button) sender;
            clickedButton.Text = "...button clicked...";
            clickedButton.Enabled = false;
        }
    }
}