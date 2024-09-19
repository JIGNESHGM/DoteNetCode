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

        protected void Unnamed_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string a = args.Value.Trim();

            if(a.Length >= 10)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}