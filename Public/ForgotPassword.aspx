<%@ Page Title="Forgot Password - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<script runat="server">
    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            pnlSuccess.Visible = true;
            pnlForm.Visible = false;
        }
    }
</script>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auth-wrapper">
        <div class="auth-box">
            
            <div class="auth-header">
                <h2>Forgot Password</h2>
                <p>Enter your email to receive a password reset link</p>
            </div>

            <!-- Success Panel -->
            <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="val-summary" style="background-color: #ECFDF5; border-color: #6EE7B7; color: #065F46;">
                Password reset instructions have been sent to your email address. Please check your inbox.
                <div style="margin-top: 14px; text-align: center;">
                    <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 8px 18px; font-size: 13.5px;">Return to Sign In</a>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlForm" runat="server">
                <!-- ASP.NET Validation Summary -->
                <asp:ValidationSummary ID="valSummary" runat="server" CssClass="val-summary" HeaderText="Please check the following:" />

                <!-- Email Field -->
                <div class="form-group">
                    <label class="form-label" for="<%= txtResetEmail.ClientID %>">Write your mail</label>
                    <asp:TextBox ID="txtResetEmail" runat="server" CssClass="form-control" placeholder="write your mail" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvResetEmail" runat="server" 
                        ControlToValidate="txtResetEmail" 
                        ErrorMessage="Email address is required." 
                    CssClass="val-error" 
                    Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revResetEmail" runat="server" 
                    ControlToValidate="txtResetEmail" 
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                    ErrorMessage="Please enter a valid email format." 
                    CssClass="val-error" 
                    Display="Dynamic" />
            </div>

                <!-- Submit Button -->
                <asp:Button ID="btnReset" runat="server" Text="Send Reset Link" CssClass="btn-primary-block" OnClick="btnReset_Click" />
            </asp:Panel>

            <!-- Footer Link -->
            <div class="auth-footer">
                <p>Remember your password? <a href="<%= ResolveUrl("~/Public/Login.aspx") %>">Sign in here</a></p>
            </div>

        </div>
    </div>
</asp:Content>
