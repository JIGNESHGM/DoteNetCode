using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ValidationCantroleDemo.BAL;
using System.Numerics;

namespace ValidationCantroleDemo
{
    public partial class NumberPageOperation : System.Web.UI.Page
    {
        protected void btnSingleDigitOperation_Click(object sender, EventArgs e)
        {
            try
            {
                long number = long.Parse(txtSingleDigitNumber.Text);
                int operation = int.Parse(ddlSingleDigitOperation.SelectedValue);

                var bal = new SingleDigitOperationBAL();
                string result = bal.PerformOperation(number, operation);
                txtSingleDigitAnswer.Text = result;
            }
            catch (Exception ex)
            {
                txtSingleDigitAnswer.Text = "Error: " + ex.Message;
            }
        }

        protected void btnDoubleDigitOperation_Click(object sender, EventArgs e)
        {
            try
            {
                double firstNumber = double.Parse(txtFirstNumber.Text);
                double secondNumber = double.Parse(txtSecondNumber.Text);
                int operation = int.Parse(ddlDoubleDigitOperation.SelectedValue);

                var bal = new DoubleDigitOperationBAL();
                string result = bal.PerformOperation(firstNumber, secondNumber, operation);
                txtDoubleDigitAnswer.Text = result;
            }
            catch (Exception ex)
            {
                txtDoubleDigitAnswer.Text = "Error: " + ex.Message;
            }
        }
    }
}