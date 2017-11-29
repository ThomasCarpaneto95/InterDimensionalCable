using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterDimensionalCable
{
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        const double APPLICABLE_TAX = .0675;
        const double SHIPPING_COST = .01;
        double totalTax;
        double totalShipping;
        double grandTotal;

        protected void Page_Load(object sender, EventArgs e)
        {

			// Math used to calculate total

            double bookcost = (double)Session["bookcost"];
            if (!IsPostBack)
            {
                var dataset = Session["dataSource"];
                ConfirmationGridView.DataSource = dataset;
                ConfirmationGridView.DataBind();
                subTotalLabel.Text = bookcost.ToString();
                taxLabel.Text = APPLICABLE_TAX.ToString();
                shippingLabel.Text = SHIPPING_COST.ToString();
                totalTax = (bookcost * APPLICABLE_TAX);
                totalShipping = (bookcost * SHIPPING_COST);
                grandTotal = bookcost + totalShipping + totalTax;
                totalLabel.Text = grandTotal.ToString();
            }
            else
            {
                var dataset = Session["dataSource"];
                ConfirmationGridView.DataSource = dataset;
                ConfirmationGridView.DataBind();
                subTotalLabel.Text = bookcost.ToString();
                taxLabel.Text = APPLICABLE_TAX.ToString();
                shippingLabel.Text = SHIPPING_COST.ToString();
                totalTax = (bookcost * APPLICABLE_TAX);
                totalShipping = (bookcost * SHIPPING_COST);
                grandTotal = bookcost + totalShipping + totalTax;
                totalLabel.Text = grandTotal.ToString();
            }

        }

		// Button_onClick event for navigation

        protected void returnToShopCartButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx");
        }

        protected void confirmOrderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
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