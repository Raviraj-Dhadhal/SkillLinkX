using System;
using System.Web.UI;

namespace SkillLinkX.Public
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string role = Request.Form["ctl00$ContentPlaceHolder1$hfRole"] ?? "Student";
                if (role == "Company")
                {
                    Response.Redirect("~/Company/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("~/User/Dashboard.aspx");
                }
            }
        }
    }
}
