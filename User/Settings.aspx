<%@ Page Title="Account Settings" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Account Settings</h1>
            <p>Manage your profile details, contact preferences, and account security.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/User/Settings.aspx") %>" class="settings-tab-link active"><i class="fa-regular fa-user"></i> Personal Details</a>
            <a href="<%= ResolveUrl("~/User/Profile.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-id-badge"></i> Public Profile</a>
            <a href="<%= ResolveUrl("~/User/Notifications.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-bell"></i> Notifications</a>
        </div>

        <!-- Right Settings Panel -->
        <div>
            <!-- Personal Details Form with ASP.NET Validation -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <h3>Personal Information</h3>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtFullName.ClientID %>">Full Name *</label>
                        <asp:TextBox ID="txtFullName" runat="server" Text="Raviraj Dhadhal" />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server"
                            ControlToValidate="txtFullName"
                            ErrorMessage="Full name is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserSettingsGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtEmail.ClientID %>">Email Address *</label>
                        <asp:TextBox ID="txtEmail" runat="server" Text="raviraj@skilllinkx.com" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email address is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserSettingsGroup" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$"
                            ErrorMessage="Enter a valid email address."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserSettingsGroup" />
                    </div>
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtPhone.ClientID %>">Phone Number *</label>
                        <asp:TextBox ID="txtPhone" runat="server" Text="+91 9876543210" />
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                            ControlToValidate="txtPhone"
                            ErrorMessage="Phone number is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserSettingsGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtLocation.ClientID %>">Current City *</label>
                        <asp:TextBox ID="txtLocation" runat="server" Text="Ahmedabad, Gujarat" />
                        <asp:RequiredFieldValidator ID="rfvLoc" runat="server"
                            ControlToValidate="txtLocation"
                            ErrorMessage="Location is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserSettingsGroup" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnSaveProfile" runat="server" Text="Save Changes" CssClass="header-btn" ValidationGroup="UserSettingsGroup" />
                </div>
            </div>

            <!-- Password Change Card with ASP.NET Compare Validator -->
            <div class="dashboard-card">
                <h3>Change Password</h3>

                <div class="form-group">
                    <label for="<%= txtCurrentPass.ClientID %>">Current Password *</label>
                    <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" placeholder="Enter current password" />
                    <asp:RequiredFieldValidator ID="rfvCurrPass" runat="server"
                        ControlToValidate="txtCurrentPass"
                        ErrorMessage="Current password is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="UserPassGroup" />
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtNewPass.ClientID %>">New Password *</label>
                        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" placeholder="Minimum 8 characters" />
                        <asp:RequiredFieldValidator ID="rfvNewPass" runat="server"
                            ControlToValidate="txtNewPass"
                            ErrorMessage="New password is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserPassGroup" />
                        <asp:RegularExpressionValidator ID="revPassLength" runat="server"
                            ControlToValidate="txtNewPass"
                            ValidationExpression=".{8,}"
                            ErrorMessage="Password must be at least 8 characters long."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserPassGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtConfirmPass.ClientID %>">Confirm Password *</label>
                        <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" placeholder="Re-enter new password" />
                        <asp:RequiredFieldValidator ID="rfvConfPass" runat="server"
                            ControlToValidate="txtConfirmPass"
                            ErrorMessage="Please confirm new password."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserPassGroup" />
                        <asp:CompareValidator ID="cvPassMatch" runat="server"
                            ControlToValidate="txtConfirmPass"
                            ControlToCompare="txtNewPass"
                            ErrorMessage="Passwords do not match."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="UserPassGroup" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnUpdatePass" runat="server" Text="Update Password" CssClass="header-btn" ValidationGroup="UserPassGroup" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
