﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latus
{
    public partial class _default : System.Web.UI.Page
    {
        //List<OverwatchCharacter> ocs = new List<OverwatchCharacter>();
        string error = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ocs = db.loadCharacters();
                try
                {
                    //OverwatchData.DataSource = ocs;
                    //OverwatchData.DataBind();
                }
                catch (Exception Ex)
                {
                    //Do something!
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void customername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}