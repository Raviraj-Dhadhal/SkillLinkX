<%@ Page Title="Sign In - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<script runat="server">
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) {
            // Default redirect to User Dashboard
            Response.Redirect("~/User/Dashboard.aspx");
        }
    }
</script>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auth-wrapper">
        <div class="auth-box">

            <div class="auth-header">
                <h2>Sign In</h2>
                <p>Enter your credentials to access your account</p>
            </div>

            <!-- ASP.NET Validation Summary -->
            <asp:ValidationSummary ID="valSummary" runat="server" CssClass="val-summary"
                HeaderText="Please check the following:" />

            <!-- Email Field -->
            <div class="form-group">
                <label class="form-label" for="<%= txtEmail.ClientID %>">Write your mail</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Write your mail"
                    TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email address is required." CssClass="val-error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                    ErrorMessage="Please enter a valid email format." CssClass="val-error" Display="Dynamic" />
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label class="form-label" for="<%= txtPassword.ClientID %>">Write your pass</label>
                <div class="password-toggle-group">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"
                        placeholder="Write your pass"></asp:TextBox>
                    <button type="button" class="toggle-password-btn"
                        onclick="togglePasswordVisibility('<%= txtPassword.ClientID %>', this)"
                        aria-label="Toggle password visibility">
                        <i class="fa-regular fa-eye"></i>
                    </button>
                </div>
                
                <!-- Forgot Password Link Below Password Box -->
                <div style="text-align: right; margin-top: 6px;">
                    <a href="<%= ResolveUrl("~/Public/ForgotPassword.aspx") %>" class="forgot-pass-link">Forgot password?</a>
                </div>

                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password is required." CssClass="val-error" Display="Dynamic" />
            </div>

            <!-- Submit Button -->
            <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn-primary-block"
                OnClick="btnLogin_Click" />

            <!-- Footer Switch -->
            <div class="auth-footer">
                <p>Don't have an account? <a href="<%= ResolveUrl("~/Public/Register.aspx") %>">Register here</a></p>
            </div>

        </div>
    </div>

    <!-- Password visibility toggle script -->
    <script>
        function togglePasswordVisibility(inputId, btn) {
            const input = document.getElementById(inputId);
            const icon = btn.querySelector("i");
            if (input.type === "password") {
                input.type = "text";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            } else {
                input.type = "password";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            }
        }
    </script>
</asp:Content>