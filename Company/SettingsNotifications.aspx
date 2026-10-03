<%@ Page Title="Notification Preferences - Settings" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Notification Preferences</h1>
            <p>Choose when and how you receive candidate alerts, interview reminders, and system updates.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-building"></i> Company Information</a>
            <a href="<%= ResolveUrl("~/Company/SettingsTeam.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-users"></i> Team Members</a>
            <a href="<%= ResolveUrl("~/Company/SettingsNotifications.aspx") %>" class="settings-tab-link active"><i class="fa-regular fa-bell"></i> Notifications</a>
            <a href="<%= ResolveUrl("~/Company/SettingsSecurity.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-shield-halved"></i> Privacy &amp; Security</a>
            <a href="<%= ResolveUrl("~/Company/SettingsBilling.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-credit-card"></i> Billing &amp; Plans</a>
        </div>

        <!-- Right Settings Panel -->
        <div class="dashboard-card">
            <h3>Email Alerts &amp; Notifications</h3>

            <div style="display: flex; flex-direction: column; gap: 16px; margin-top: 18px;">
                <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                    <div>
                        <div style="font-weight: 600; color: #191B23; font-size: 13.5px;">New Candidate Applications</div>
                        <div style="font-size: 12px; color: #64748B;">Receive an email instant notification when a talent applies to any active listing.</div>
                    </div>
                    <asp:CheckBox ID="chkNewApps" runat="server" Checked="true" />
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                    <div>
                        <div style="font-weight: 600; color: #191B23; font-size: 13.5px;">Daily Application Digest</div>
                        <div style="font-size: 12px; color: #64748B;">Receive a summary report of daily applicants every morning at 9:00 AM.</div>
                    </div>
                    <asp:CheckBox ID="chkDailyDigest" runat="server" Checked="true" />
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                    <div>
                        <div style="font-weight: 600; color: #191B23; font-size: 13.5px;">Interview Reminders</div>
                        <div style="font-size: 12px; color: #64748B;">Get calendar alerts 1 hour before scheduled technical interviews.</div>
                    </div>
                    <asp:CheckBox ID="chkInterviewReminders" runat="server" Checked="true" />
                </div>

                <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                    <div>
                        <div style="font-weight: 600; color: #191B23; font-size: 13.5px;">AI Match Alerts</div>
                        <div style="font-size: 12px; color: #64748B;">Notify when a candidate with &gt;90% skill match registers on SkillLinkX.</div>
                    </div>
                    <asp:CheckBox ID="chkAiAlerts" runat="server" Checked="true" />
                </div>
            </div>

            <div class="form-actions">
                <asp:Button ID="btnSaveNotif" runat="server" Text="Save Notification Preferences" CssClass="header-btn" />
            </div>
        </div>
    </div>
</asp:Content>
