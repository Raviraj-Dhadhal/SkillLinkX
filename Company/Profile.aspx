<%@ Page Title="Company Profile" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Profile Banner Card -->
    <div class="profile-banner-card">
        <div class="profile-brand-box">
            <div class="company-avatar-box">TN</div>
            <div>
                <h2>TechNova Solutions</h2>
                <div class="profile-meta-tags">
                    <span><i class="fa-solid fa-briefcase"></i> IT Services &amp; Consulting</span>
                    <span><i class="fa-solid fa-location-dot"></i> Ahmedabad, GJ</span>
                    <span><i class="fa-solid fa-users"></i> 201-500 employees</span>
                </div>
            </div>
        </div>
        <div class="form-actions" style="margin-top: 0; padding-top: 0; border: none;">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="header-btn header-btn-secondary"><i class="fa-solid fa-pen"></i> Edit Profile</a>
            <button type="button" class="header-btn"><i class="fa-solid fa-share-nodes"></i> Share</button>
        </div>
    </div>

    <!-- 2-Column Profile Grid -->
    <div class="dashboard-grid-2">
        <div>
            <!-- About TechNova -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>About TechNova</h3>
                <p style="color: #434654; line-height: 24px; font-size: 14px;">
                    TechNova is a pioneer IT services and consulting firm specializing in end-to-end digital transformation. We partner with forward-thinking enterprises to design, build, and scale intelligent software solutions that drive operational excellence and unlock new revenue streams.
                </p>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 18px;">
                    <div style="background-color: #F8F9FB; padding: 14px; border-radius: 8px;">
                        <span style="font-size: 12px; color: #64748B; font-weight: 600;">WEBSITE</span>
                        <p style="font-size: 13.5px; font-weight: 600; color: #0052CC; margin-top: 4px;">technovasolutions.in</p>
                    </div>
                    <div style="background-color: #F8F9FB; padding: 14px; border-radius: 8px;">
                        <span style="font-size: 12px; color: #64748B; font-weight: 600;">VISION</span>
                        <p style="font-size: 13.5px; color: #191B23; margin-top: 4px;">To be the global catalyst in AI-driven modern enterprise platforms.</p>
                    </div>
                </div>
            </div>

            <!-- Open Positions -->
            <div class="dashboard-card">
                <h3>Open Positions</h3>
                <div class="applicant-card-item">
                    <div class="applicant-info">
                        <h4>Senior Software Engineer</h4>
                        <p>TechNova &middot; Full-Time &middot; Bengaluru &middot; 12 Applicants</p>
                    </div>
                    <a href="<%= ResolveUrl("~/Company/ManageJobs.aspx") %>" class="header-btn header-btn-secondary">Manage Job</a>
                </div>
                <div class="applicant-card-item">
                    <div class="applicant-info">
                        <h4>Frontend Developer Intern</h4>
                        <p>TechNova &middot; Internship &middot; Ahmedabad &middot; 45 Applicants</p>
                    </div>
                    <a href="<%= ResolveUrl("~/Company/ManageInternships.aspx") %>" class="header-btn header-btn-secondary">Manage Intern</a>
                </div>
            </div>
        </div>

        <div>
            <!-- Overview Stats Box -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; text-align: center;">
                    <div style="background-color: #F8F9FB; padding: 14px; border-radius: 8px;">
                        <span class="stat-number">12</span>
                        <span class="stat-label">Active Jobs</span>
                    </div>
                    <div style="background-color: #F8F9FB; padding: 14px; border-radius: 8px;">
                        <span class="stat-number">156</span>
                        <span class="stat-label">Total Hires</span>
                    </div>
                </div>
                <div style="text-align: center; margin-top: 14px; padding-top: 12px; border-top: 1px solid #E7EAF0;">
                    <span style="font-size: 12px; color: #64748B;">AVG RESPONSE TIME</span>
                    <p style="font-size: 16px; font-weight: 700; color: #191B23;">2 days</p>
                </div>
            </div>

            <!-- Primary Recruiter Box -->
            <div class="dashboard-card">
                <h3>Primary Recruiter</h3>
                <div style="display: flex; align-items: center; gap: 12px; margin-top: 12px;">
                    <div class="user-avatar-chip" style="width: 44px; height: 44px; font-size: 16px;">MG</div>
                    <div>
                        <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani</h4>
                        <p style="font-size: 12px; color: #64748B;">Senior Technical Talent Partner</p>
                    </div>
                </div>
                <a href="<%= ResolveUrl("~/Company/Messages.aspx") %>" class="header-btn" style="width: 100%; justify-content: center; margin-top: 16px;">
                    <i class="fa-regular fa-comments"></i> Message
                </a>
            </div>
        </div>
    </div>
</asp:Content>
