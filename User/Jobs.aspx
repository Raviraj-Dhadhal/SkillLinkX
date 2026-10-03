<%@ Page Title="Explore Jobs" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Explore Jobs</h1>
            <p>Discover handpicked software and technology roles matched to your skillset.</p>
        </div>
    </div>

    <!-- Filter & Search Card -->
    <div class="dashboard-card" style="margin-bottom: 24px; padding: 16px 20px;">
        <div style="display: flex; gap: 12px; flex-wrap: wrap; align-items: center;">
            <div style="flex-grow: 1; min-width: 220px;">
                <input type="text" placeholder="Search by title, skill, or company..." style="width: 100%; padding: 10px 14px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13.5px;" />
            </div>
            <div style="min-width: 140px;">
                <select style="width: 100%; padding: 10px 12px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13px;">
                    <option value="">All Job Modes</option>
                    <option value="Hybrid">Hybrid</option>
                    <option value="Remote">Remote</option>
                    <option value="OnSite">On-site</option>
                </select>
            </div>
            <div style="min-width: 140px;">
                <select style="width: 100%; padding: 10px 12px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13px;">
                    <option value="">Experience Level</option>
                    <option value="Entry">Entry Level (0-2 yrs)</option>
                    <option value="Mid">Mid-Senior (2-5 yrs)</option>
                    <option value="Senior">Senior (5+ yrs)</option>
                </select>
            </div>
            <button type="button" class="header-btn" style="padding: 10px 20px;">
                <i class="fa-solid fa-magnifying-glass"></i> Filter
            </button>
        </div>
    </div>

    <!-- Job Listings -->
    <div class="job-card-list">
        <!-- Job 1 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon">TN</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px; flex-wrap: wrap;">
                        <h4>Senior Full Stack .NET Engineer</h4>
                        <span class="badge-ai-match">96% AI Match</span>
                        <span class="badge-status badge-active">Actively Hiring</span>
                    </div>
                    <div class="company-name">TechNova Solutions &middot; Ahmedabad / Bengaluru (Hybrid)</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-briefcase"></i> Full-Time</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;12,00,000 - &#8377;18,00,000 / year</span>
                        <span><i class="fa-regular fa-clock"></i> Posted 2 days ago</span>
                        <span><i class="fa-solid fa-users"></i> 12 applicants</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 8px; line-height: 20px;">
                        Looking for a high-performing .NET Engineer to lead enterprise architecture and cloud migration. Strong background in C#, ASP.NET, SQL Server, and React required.
                    </p>
                    <div class="skill-tags">
                        <span class="skill-tag">C#</span>
                        <span class="skill-tag">ASP.NET Web Forms</span>
                        <span class="skill-tag">SQL Server</span>
                        <span class="skill-tag">REST APIs</span>
                        <span class="skill-tag">React</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApply1" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="<%= ResolveUrl("~/User/SavedJobs.aspx") %>" style="color: #64748B; font-size: 12.5px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save Job</a>
            </div>
        </div>

        <!-- Job 2 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon" style="background-color: #ECFDF5; color: #059669;">CS</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px; flex-wrap: wrap;">
                        <h4>Frontend UI/UX Engineer</h4>
                        <span class="badge-ai-match">91% AI Match</span>
                    </div>
                    <div class="company-name">CloudScale Systems &middot; Pune (Remote)</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-briefcase"></i> Full-Time</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;9,00,000 - &#8377;14,00,000 / year</span>
                        <span><i class="fa-regular fa-clock"></i> Posted 3 days ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 8px; line-height: 20px;">
                        Design and implement pixel-perfect user experiences for high-traffic SaaS dashboards using Vanilla CSS and modern JavaScript.
                    </p>
                    <div class="skill-tags">
                        <span class="skill-tag">JavaScript</span>
                        <span class="skill-tag">CSS3</span>
                        <span class="skill-tag">HTML5</span>
                        <span class="skill-tag">UI/UX</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApply2" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="<%= ResolveUrl("~/User/SavedJobs.aspx") %>" style="color: #64748B; font-size: 12.5px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save Job</a>
            </div>
        </div>
    </div>
</asp:Content>
