using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationCantroleDemo
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblOutput.Text = string.Empty;
            if (Page.IsValid)
            {
                lblOutput.Text = txtName.Text.Trim().ToUpper();
            }
        }
    }
}