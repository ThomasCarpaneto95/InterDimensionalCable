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
        double salesTax = .0675;
        double sh = .01;
        double subtotal = 0.0;
        double orderTotal = 0.0; 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private double calculateOrderTotal(double subtotal)
        {

            orderTotal = subtotal + (subtotal * salesTax) + (subtotal * sh);
            return orderTotal;
        }
    }
}