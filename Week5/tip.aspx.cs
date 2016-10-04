using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week5
{
    public partial class tip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try { 
            /* Get the amount from the text box
             * and save in a decimal-type variable 
             */
            Double amount = Convert.ToDouble(txtAmount.Text);

            // get tip percent
            Double tipPercent = Convert.ToDouble(ddlPercent.SelectedValue);

            // calculate tip and total
            Double tipAmount = amount * tipPercent;
            Double total = amount + tipAmount;

            // display the results in the labels
            lblTip.Text = tipAmount.ToString("c");
            lblTotal.Text = total.ToString("c");
            }
            catch (Exception)
            {
                Response.Redirect("/error.aspx");
            }

        }
    }
}