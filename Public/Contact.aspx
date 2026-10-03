<%@ Page Title="Contact Us - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<script runat="server">
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
</script>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auth-wrapper">
        <div class="auth-box auth-box-lg">
            
            <div class="auth-header">
                <h2>Contact Us</h2>
                <p>Have questions, feedback, or support inquiries? Get in touch with our team.</p>
            </div>

            <!-- Success Panel -->
            <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="val-summary" style="background-color: #ECFDF5; border-color: #6EE7B7; color: #065F46;">
                Thank you! Your message has been received. We will get back to you shortly.
            </asp:Panel>

            <!-- ASP.NET Validation Summary -->
            <asp:ValidationSummary ID="valSummary" runat="server" CssClass="val-summary" HeaderText="Please correct the following:" />

            <!-- Name -->
            <div class="form-group">
                <label class="form-label" for="<%= txtName.ClientID %>">Your Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                    ControlToValidate="txtName" 
                    ErrorMessage="Your name is required." 
                    CssClass="val-error" 
                    Display="Dynamic" />
            </div>

            <!-- Email -->
            <div class="form-group">
                <label class="form-label" for="<%= txtEmail.ClientID %>">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="name@example.com" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Email address is required." 
                    CssClass="val-error" 
                    Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                    ErrorMessage="Please enter a valid email format." 
                    CssClass="val-error" 
                    Display="Dynamic" />
            </div>

            <!-- Subject -->
            <div class="form-group">
                <label class="form-label" for="<%= txtSubject.ClientID %>">Subject</label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="How can we help?"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                    ControlToValidate="txtSubject" 
                    ErrorMessage="Subject is required." 
                    CssClass="val-error" 
                    Display="Dynamic" />
            </div>

            <!-- Message -->
            <div class="form-group">
                <label class="form-label" for="<%= txtMessage.ClientID %>">Message</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Write your message here..."></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                    ControlToValidate="txtMessage" 
                    ErrorMessage="Message text is required." 
                    CssClass="val-error" 
                    Display="Dynamic" />
            </div>

            <!-- Submit Button -->
            <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="btn-primary-block" OnClick="btnSendMessage_Click" />

        </div>
    </div>
</asp:Content>
