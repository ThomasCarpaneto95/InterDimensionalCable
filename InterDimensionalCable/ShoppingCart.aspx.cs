using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterDimensionalCable
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            double bookcost;
            string searchString = (string)Session["SearchString"];
            if (!IsPostBack)
            {
                if (Request.UrlReferrer.AbsolutePath == "/ConfirmationPage")
                {

                    Response.Write("<script language=javascript>alert('ORDER CANCELED: emptying shopping cart.');</script>");
                    var datareset = Session["EmptySetForCart"];
                    CartList.DataBind();
                }
                else
                {
                    if (searchString == "Linda Prince")
                    {
                        var dataset = Session["dataSource"];
                        CartList.DataSource = dataset;
                        CartList.DataBind();
                        totalBooksInCart.Text = totalBooksInCart.Text + " " + CartList.Rows.Count.ToString();
                        bookcost = 22;
                        Session["bookcost"] = bookcost;
                        subTotal.Text = subTotal.Text + " " + $"{bookcost}";
                    }
                    else
                    {
                        var dataset = Session["dataSource"];
                        CartList.DataSource = dataset;
                        CartList.DataBind();
                        totalBooksInCart.Text = totalBooksInCart.Text + " " + CartList.Rows.Count.ToString();
                        bookcost = 78.73;
                        Session["bookcost"] = bookcost;
                        subTotal.Text = subTotal.Text + " " + $"{bookcost}";
                    }


                }
      
            }
            else
            {
                if(Request.UrlReferrer.AbsolutePath == "/ConfirmationPage")
                {
                    var datareset = Session["EmptySetForCart"];
                    CartList.DataBind();
                }
                else
                {
                    var dataset = Session["dataSource"];
                    CartList.DataSource = dataset;
                    CartList.DataBind();
                    totalBooksInCart.Text = totalBooksInCart.Text + " " + CartList.Rows.Count.ToString();
                    subTotal.Text = subTotal.Text + " " + "500";

                }
            }
            
        }


        protected void returnToSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }

        protected void proceedToCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmationPage.aspx");
        }
    }
}