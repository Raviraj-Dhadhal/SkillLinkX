<%@ Page Title="Admin Sign In - SkillLinkX" Language="C#" %>

<script runat="server">
    protected void btnAdminLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Admin/Dashboard.aspx");
        }
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Admin Portal - Sign In | SkillLinkX</title>

    <!-- Font-Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Admin CSS -->
    <link rel="stylesheet" href="<%= ResolveUrl("~/assets/CSS/admin-pages.css") %>" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-auth-wrapper">
            <div class="admin-auth-box">
                
                <div class="admin-auth-header">
                    <div class="admin-shield-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <h2>Admin Portal</h2>
                    <p>Enter your administrative credentials to continue</p>
                </div>

                <!-- ASP.NET Validation Summary -->
                <asp:ValidationSummary ID="valSummary" runat="server" CssClass="badge badge-rejected" style="display: block; margin-bottom: 18px; padding: 10px 14px; border-radius: 8px; font-size: 13px;" HeaderText="Please check the following:" />

                <!-- Admin Email / Username -->
                <div style="margin-bottom: 18px;">
                    <label style="display: block; font-size: 13.5px; font-weight: 600; color: #334155; margin-bottom: 6px;" for="<%= txtAdminUser.ClientID %>">Admin Username / Email</label>
                    <asp:TextBox ID="txtAdminUser" runat="server" style="width: 100%; padding: 11px 14px; border: 1px solid #CBD5E1; border-radius: 8px; font-size: 14px; outline: none;" placeholder="admin@skilllinkx.com"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAdminUser" runat="server" 
                        ControlToValidate="txtAdminUser" 
                        ErrorMessage="Username or email is required." 
                        style="color: #DC2626; font-size: 12.5px; margin-top: 4px; display: block; font-weight: 500;" 
                        Display="Dynamic" />
                </div>

                <!-- Admin Password -->
                <div style="margin-bottom: 22px;">
                    <label style="display: block; font-size: 13.5px; font-weight: 600; color: #334155; margin-bottom: 6px;" for="<%= txtAdminPass.ClientID %>">Password</label>
                    <div style="position: relative; display: flex; align-items: center;">
                        <asp:TextBox ID="txtAdminPass" runat="server" TextMode="Password" style="width: 100%; padding: 11px 40px 11px 14px; border: 1px solid #CBD5E1; border-radius: 8px; font-size: 14px; outline: none;" placeholder="Password"></asp:TextBox>
                        <button type="button" onclick="toggleAdminPass('<%= txtAdminPass.ClientID %>', this)" style="position: absolute; right: 12px; background: none; border: none; color: #64748B; font-size: 16px; cursor: pointer;" aria-label="Toggle password">
                            <i class="fa-regular fa-eye"></i>
                        </button>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvAdminPass" runat="server" 
                        ControlToValidate="txtAdminPass" 
                        ErrorMessage="Password is required." 
                        style="color: #DC2626; font-size: 12.5px; margin-top: 4px; display: block; font-weight: 500;" 
                        Display="Dynamic" />
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnAdminLogin" runat="server" Text="Sign In to Admin Portal" style="width: 100%; background-color: #0052CC; color: #FFFFFF; border: none; padding: 12px; border-radius: 8px; font-size: 14.5px; font-weight: 600; cursor: pointer;" OnClick="btnAdminLogin_Click" />

                <!-- Security Notice Footer -->
                <div class="admin-auth-footer">
                    <i class="fa-solid fa-lock"></i> Restricted Platform Access &middot; Authorized Personnel Only
                </div>

            </div>
        </div>
    </form>

    <script>
        function toggleAdminPass(inputId, btn) {
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
</body>
</html>
