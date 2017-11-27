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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var dataset = Session["dataSource"];
                ConfirmationGridView.DataSource = dataset;
                ConfirmationGridView.DataBind();
                taxLabel.Text = APPLICABLE_TAX.ToString();
                shippingLabel.Text = SHIPPING_COST.ToString();

            }
            else
            {
                var dataset = Session["dataSource"];
                ConfirmationGridView.DataSource = dataset;
                ConfirmationGridView.DataBind();
                taxLabel.Text = APPLICABLE_TAX.ToString();
                shippingLabel.Text = SHIPPING_COST.ToString();
            }

        }

        protected void returnToShopCartButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx");
        }

        protected void confirmOrderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}