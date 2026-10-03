<%@ Page Title="Admin Profile - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Admin Profile</h1>
            <p>Manage your platform administrator account, access keys, and security preferences.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-pen"></i> Edit Profile</button>
        </div>
    </div>

    <!-- Admin Profile Banner Card -->
    <div class="admin-card" style="display: flex; align-items: center; gap: 20px; padding: 24px; margin-bottom: 24px;">
        <div class="admin-avatar" style="width: 72px; height: 72px; font-size: 26px;">RD</div>
        <div style="flex: 1;">
            <div style="display: flex; align-items: center; gap: 10px;">
                <h2 style="font-size: 20px; font-weight: 700; color: #0F172A;">Raviraj Dhadhal</h2>
                <span class="badge badge-info"><i class="fa-solid fa-shield-check"></i> Super Administrator</span>
            </div>
            <p style="font-size: 13.5px; color: #64748B; margin-top: 4px;">admin@skilllinkx.com &middot; Platform Operations Lead</p>
        </div>
        <div>
            <span class="badge badge-verified" style="padding: 6px 14px; font-size: 13px;"><i class="fa-solid fa-circle-check"></i> Account Verified</span>
        </div>
    </div>

    <!-- 2-Column Split: Personal & Professional Info + Security Details -->
    <div class="admin-split-grid">
        <!-- Left: Account Details -->
        <div>
            <div class="admin-card">
                <div class="admin-card-header">
                    <h2>Personal &amp; Contact Information</h2>
                </div>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; font-size: 13.5px;">
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">FULL NAME</span>
                        <div style="font-weight: 600;">Raviraj Dhadhal</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">PRIMARY EMAIL</span>
                        <div style="font-weight: 600;">admin@skilllinkx.com</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">PHONE NUMBER</span>
                        <div style="font-weight: 600;">+91 98765 43210</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">OFFICE LOCATION</span>
                        <div style="font-weight: 600;">Ahmedabad, Gujarat, India</div>
                    </div>
                </div>
            </div>

            <div class="admin-card">
                <div class="admin-card-header">
                    <h2>Professional Info &amp; Access Roles</h2>
                </div>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; font-size: 13.5px;">
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">PLATFORM ROLE</span>
                        <div style="font-weight: 600;">Super Administrator</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">ADMIN ID</span>
                        <div style="font-weight: 600;">SLX-ADM-001</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">ROLE TIMING</span>
                        <div style="font-weight: 600;">Full-Time Platform Ops</div>
                    </div>
                    <div>
                        <span style="color: #64748B; font-weight: 500; display: block; font-size: 12px; margin-bottom: 4px;">PERMISSIONS</span>
                        <div style="font-weight: 600; color: #059669;"><i class="fa-solid fa-lock-open"></i> Full Root Access</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right: Security & 2FA -->
        <div>
            <div class="admin-card">
                <div class="admin-card-header">
                    <h2>Security &amp; Authentication</h2>
                </div>
                
                <div style="margin-bottom: 18px; padding-bottom: 14px; border-bottom: 1px solid #F1F5F9;">
                    <div style="font-size: 13.5px; font-weight: 600; color: #0F172A; margin-bottom: 4px;">Password</div>
                    <p style="font-size: 12.5px; color: #64748B;">Last updated 30 days ago</p>
                    <button type="button" class="btn-action-sm btn-view" style="margin-top: 8px;"><i class="fa-solid fa-key"></i> Change Password</button>
                </div>

                <div style="margin-bottom: 18px; padding-bottom: 14px; border-bottom: 1px solid #F1F5F9;">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <div>
                            <div style="font-size: 13.5px; font-weight: 600; color: #0F172A;">Two-Factor Authentication (2FA)</div>
                            <p style="font-size: 12.5px; color: #059669; font-weight: 500;">Enabled (Authenticator App)</p>
                        </div>
                        <span class="badge badge-verified">Active</span>
                    </div>
                </div>

                <div>
                    <div style="font-size: 13.5px; font-weight: 600; color: #0F172A; margin-bottom: 4px;">Session Security</div>
                    <p style="font-size: 12.5px; color: #64748B;">Auto-logout after 30 minutes of inactivity</p>
                </div>
            </div>

            <!-- Danger Zone -->
            <div class="admin-card" style="border-color: #FECACA; background-color: #FFFBFB;">
                <div class="admin-card-header" style="border-bottom-color: #FEE2E2;">
                    <h2 style="color: #991B1B;"><i class="fa-solid fa-triangle-exclamation"></i> Danger Zone</h2>
                </div>
                <p style="font-size: 12.5px; color: #7F1D1D; line-height: 1.4; margin-bottom: 12px;">Admin account actions cannot be undone and affect system-wide telemetry access.</p>
                <button type="button" class="btn-action-sm btn-reject" style="padding: 8px 14px;"><i class="fa-solid fa-user-lock"></i> Deactivate Admin Access</button>
            </div>
        </div>
    </div>
</asp:Content>
