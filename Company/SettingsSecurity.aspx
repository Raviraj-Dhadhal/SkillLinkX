<%@ Page Title="Privacy & Security - Settings" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Privacy &amp; Security</h1>
            <p>Manage account security credentials, password, and two-factor authentication.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-building"></i> Company Information</a>
            <a href="<%= ResolveUrl("~/Company/SettingsTeam.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-users"></i> Team Members</a>
            <a href="<%= ResolveUrl("~/Company/SettingsNotifications.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-bell"></i> Notifications</a>
            <a href="<%= ResolveUrl("~/Company/SettingsSecurity.aspx") %>" class="settings-tab-link active"><i class="fa-solid fa-shield-halved"></i> Privacy &amp; Security</a>
            <a href="<%= ResolveUrl("~/Company/SettingsBilling.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-credit-card"></i> Billing &amp; Plans</a>
        </div>

        <!-- Right Settings Panel -->
        <div>
            <!-- Change Password Card with ASP.NET Validation -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <h3>Change Password</h3>
                <p style="font-size: 13px; color: #64748B; margin-bottom: 18px;">Ensure your account is protected by using a strong, unique password.</p>

                <div class="form-group">
                    <label for="<%= txtCurrentPassword.ClientID %>">Current Password *</label>
                    <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" placeholder="Enter current password" />
                    <asp:RequiredFieldValidator ID="rfvCurrPass" runat="server"
                        ControlToValidate="txtCurrentPassword"
                        ErrorMessage="Current password is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="SecurityGroup" />
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtNewPassword.ClientID %>">New Password *</label>
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" placeholder="Minimum 8 characters" />
                        <asp:RequiredFieldValidator ID="rfvNewPass" runat="server"
                            ControlToValidate="txtNewPassword"
                            ErrorMessage="New password is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SecurityGroup" />
                        <asp:RegularExpressionValidator ID="revPassLength" runat="server"
                            ControlToValidate="txtNewPassword"
                            ValidationExpression=".{8,}"
                            ErrorMessage="Password must be at least 8 characters long."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SecurityGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtConfirmPassword.ClientID %>">Confirm New Password *</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Re-enter new password" />
                        <asp:RequiredFieldValidator ID="rfvConfirmPass" runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Please confirm your new password."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SecurityGroup" />
                        <asp:CompareValidator ID="cvPassMatch" runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ControlToCompare="txtNewPassword"
                            ErrorMessage="Passwords do not match."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SecurityGroup" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="header-btn" ValidationGroup="SecurityGroup" />
                </div>
            </div>

            <!-- Two-Factor Authentication Box -->
            <div class="dashboard-card">
                <h3>Two-Factor Authentication (2FA)</h3>
                <p style="font-size: 13px; color: #64748B; margin-bottom: 16px;">Add an extra layer of security to your company recruiter account.</p>
                <div style="display: flex; justify-content: space-between; align-items: center; background-color: #F8F9FB; border: 1px solid #E2E8F0; padding: 14px 18px; border-radius: 8px;">
                    <div>
                        <div style="font-weight: 600; color: #191B23; font-size: 13.5px;">Authenticator App (TOTP)</div>
                        <div style="font-size: 12px; color: #15803D; margin-top: 2px;">● Currently Enabled</div>
                    </div>
                    <asp:Button ID="btnManage2FA" runat="server" Text="Configure" CssClass="header-btn header-btn-secondary" CausesValidation="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
