using System;
using System.Web.UI;

namespace SkillLinkX.Public
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Default redirect to User Dashboard
                Response.Redirect("~/User/Dashboard.aspx");
            }
        }
    }
}
