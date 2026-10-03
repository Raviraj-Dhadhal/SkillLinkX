using System;
using System.Web.UI;

namespace SkillLinkX.Public
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                pnlSuccess.Visible = true;
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtSubject.Text = string.Empty;
                txtMessage.Text = string.Empty;
            }
        }
    }
}
