using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterDimensionalCable
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SearchDataBase(object sender, EventArgs e)
        {
            session["SearchTerm"] = SearchBar.text;
        }
    }
}