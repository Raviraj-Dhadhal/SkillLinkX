<%@ Page Title="Team Members - Settings" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Team Members &amp; Permissions</h1>
            <p>Manage recruiters, hiring managers, and collaborate on hiring pipelines.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-building"></i> Company Information</a>
            <a href="<%= ResolveUrl("~/Company/SettingsTeam.aspx") %>" class="settings-tab-link active"><i class="fa-solid fa-users"></i> Team Members</a>
            <a href="<%= ResolveUrl("~/Company/SettingsNotifications.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-bell"></i> Notifications</a>
            <a href="<%= ResolveUrl("~/Company/SettingsSecurity.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-shield-halved"></i> Privacy &amp; Security</a>
            <a href="<%= ResolveUrl("~/Company/SettingsBilling.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-credit-card"></i> Billing &amp; Plans</a>
        </div>

        <!-- Right Settings Panel -->
        <div>
            <!-- Active Team Members Table -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                    <h3>Active Team Members (4)</h3>
                    <span style="font-size: 12.5px; color: #64748B;">4 / 10 seats used in Pro Plan</span>
                </div>

                <div class="table-card" style="border: 1px solid #E7EAF0; border-radius: 8px;">
                    <table class="company-table">
                        <thead>
                            <tr>
                                <th>MEMBER</th>
                                <th>ROLE</th>
                                <th>DEPARTMENT</th>
                                <th>STATUS</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div style="display: flex; align-items: center; gap: 10px;">
                                        <div class="user-avatar-chip" style="width: 34px; height: 34px; font-size: 13px;">MG</div>
                                        <div>
                                            <div style="font-weight: 600; color: #191B23;">Mahek Godvani</div>
                                            <div style="font-size: 12px; color: #64748B;">mahek@technovasolutions.in</div>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-active">Admin</span></td>
                                <td>Talent Acquisition</td>
                                <td><span style="color: #15803D; font-size: 12px; font-weight: 600;">Active</span></td>
                                <td><span style="color: #64748B; font-size: 12px;">Owner</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="display: flex; align-items: center; gap: 10px;">
                                        <div class="user-avatar-chip" style="width: 34px; height: 34px; font-size: 13px;">RD</div>
                                        <div>
                                            <div style="font-weight: 600; color: #191B23;">Raviraj Dhadhal</div>
                                            <div style="font-size: 12px; color: #64748B;">raviraj@technovasolutions.in</div>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-ai-match">Recruiter</span></td>
                                <td>Engineering</td>
                                <td><span style="color: #15803D; font-size: 12px; font-weight: 600;">Active</span></td>
                                <td><a href="#" style="color: #0052CC; font-size: 12px; font-weight: 600;">Edit Role</a></td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="display: flex; align-items: center; gap: 10px;">
                                        <div class="user-avatar-chip" style="width: 34px; height: 34px; font-size: 13px;">PP</div>
                                        <div>
                                            <div style="font-weight: 600; color: #191B23;">Pooja Patel</div>
                                            <div style="font-size: 12px; color: #64748B;">pooja@technovasolutions.in</div>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-review">Interviewer</span></td>
                                <td>Design &amp; UX</td>
                                <td><span style="color: #15803D; font-size: 12px; font-weight: 600;">Active</span></td>
                                <td><a href="#" style="color: #0052CC; font-size: 12px; font-weight: 600;">Edit Role</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Invite New Team Member Form (with ASP.NET Validation) -->
            <div class="dashboard-card">
                <h3>Invite New Team Member</h3>
                <p style="font-size: 13px; color: #64748B; margin-bottom: 18px;">An invitation link will be sent to their email to join your recruitment workspace.</p>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtMemberName.ClientID %>">Full Name *</label>
                        <asp:TextBox ID="txtMemberName" runat="server" placeholder="e.g. Ananya Sharma" />
                        <asp:RequiredFieldValidator ID="rfvMemberName" runat="server"
                            ControlToValidate="txtMemberName"
                            ErrorMessage="Full name is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="InviteTeamGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtMemberEmail.ClientID %>">Work Email *</label>
                        <asp:TextBox ID="txtMemberEmail" runat="server" placeholder="e.g. ananya@technovasolutions.in" />
                        <asp:RequiredFieldValidator ID="rfvMemberEmail" runat="server"
                            ControlToValidate="txtMemberEmail"
                            ErrorMessage="Work email is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="InviteTeamGroup" />
                        <asp:RegularExpressionValidator ID="revMemberEmail" runat="server"
                            ControlToValidate="txtMemberEmail"
                            ValidationExpression="^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$"
                            ErrorMessage="Please enter a valid email address."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="InviteTeamGroup" />
                    </div>
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= ddlMemberRole.ClientID %>">Role &amp; Permissions *</label>
                        <asp:DropDownList ID="ddlMemberRole" runat="server">
                            <asp:ListItem Value="Recruiter" Text="Recruiter (Post jobs, screen candidates, message)" />
                            <asp:ListItem Value="HiringManager" Text="Hiring Manager (Review applicants, evaluate interviews)" />
                            <asp:ListItem Value="Admin" Text="Admin (Full access + manage team and billing)" />
                            <asp:ListItem Value="Viewer" Text="Viewer (Read-only access to job stats)" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="<%= txtDepartment.ClientID %>">Department *</label>
                        <asp:TextBox ID="txtDepartment" runat="server" placeholder="e.g. Talent Acquisition / Engineering" />
                        <asp:RequiredFieldValidator ID="rfvDept" runat="server"
                            ControlToValidate="txtDepartment"
                            ErrorMessage="Department is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="InviteTeamGroup" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnInvite" runat="server" Text="Send Team Invite" CssClass="header-btn" ValidationGroup="InviteTeamGroup" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
