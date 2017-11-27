using System;
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
            if (!IsPostBack)
            {
                try
                {
                    if (Request.UrlReferrer.AbsolutePath == "/ConfirmationPage")
                    {
                        Response.Write("<script language=javascript>alert('Order Processed, Happy Studies!');</script>");
                    }
                }
                catch
                {

                }
            
            }
            else
            {
                try
                {
                    if (Request.UrlReferrer.AbsolutePath == "/ConfirmationPage")
                    {
                        Response.Write("<script language=javascript>alert('Order Processed, Happy Studies!');</script>");
                    }
                }
                catch
                {

                }
            }
   
        }

		protected void submitBTN_Click(object sender, EventArgs e)
		{
            Session["SearchString"] = SearchTxtBox.Text;
            Response.Redirect("SearchPage.aspx");
		}

		protected void HomeBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("Home.aspx");
		}

		protected void SearchBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchPage.aspx");
		}

		protected void ShoppingCartBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("ShoppingCart.aspx");
		}

		protected void ConfirmationBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("ConfirmationPage.aspx");
		}
	}
}