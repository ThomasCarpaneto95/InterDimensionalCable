﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace InterDimensionalCable
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void submitBTN_Click(object sender, EventArgs e)
		{
            Session["SearchString"] = SearchTxtBox.Text;
            Response.Redirect("SearchPage.aspx");
		}
	}
}