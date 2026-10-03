<%@ Page Title="Explore Internships" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Explore Internships</h1>
            <p>Kickstart your career with high-impact internship opportunities across premier companies.</p>
        </div>
    </div>

    <!-- Filter Card -->
    <div class="dashboard-card" style="margin-bottom: 24px; padding: 16px 20px;">
        <div style="display: flex; gap: 12px; flex-wrap: wrap; align-items: center;">
            <div style="flex-grow: 1; min-width: 220px;">
                <input type="text" placeholder="Search internships by domain, technology, or company..." style="width: 100%; padding: 10px 14px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13.5px;" />
            </div>
            <div style="min-width: 140px;">
                <select style="width: 100%; padding: 10px 12px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13px;">
                    <option value="">All Domains</option>
                    <option value="Web">Web Development</option>
                    <option value="AI">AI &amp; Data Science</option>
                    <option value="Mobile">Mobile Apps</option>
                    <option value="Design">UI/UX Design</option>
                </select>
            </div>
            <div style="min-width: 140px;">
                <select style="width: 100%; padding: 10px 12px; border: 1px solid #C3C6D6; border-radius: 8px; font-size: 13px;">
                    <option value="">Duration</option>
                    <option value="3">3 Months</option>
                    <option value="6">6 Months</option>
                </select>
            </div>
            <button type="button" class="header-btn" style="padding: 10px 20px;">
                <i class="fa-solid fa-filter"></i> Filter
            </button>
        </div>
    </div>

    <!-- Internship Listings -->
    <div class="job-card-list">
        <!-- Internship 1 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon">TN</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px; flex-wrap: wrap;">
                        <h4>Software Engineering Intern</h4>
                        <span class="badge-ai-match">94% AI Match</span>
                        <span class="badge-status badge-active">Active Opening</span>
                    </div>
                    <div class="company-name">TechNova Solutions &middot; Ahmedabad (On-site)</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-graduation-cap"></i> 6 Months Duration</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;25,000 / month</span>
                        <span><i class="fa-regular fa-clock"></i> Posted 1 day ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 8px; line-height: 20px;">
                        Join our engineering squad to build scalable backends, design relational database schemas in SQL Server, and learn modern full-stack workflows.
                    </p>
                    <div class="skill-tags">
                        <span class="skill-tag">C#</span>
                        <span class="skill-tag">ASP.NET</span>
                        <span class="skill-tag">SQL Server</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApplyIntern1" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="<%= ResolveUrl("~/User/SavedJobs.aspx") %>" style="color: #64748B; font-size: 12.5px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save</a>
            </div>
        </div>

        <!-- Internship 2 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon" style="background-color: #FEF3C7; color: #B45309;">QD</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px; flex-wrap: wrap;">
                        <h4>UI/UX Design Intern</h4>
                        <span class="badge-ai-match">89% AI Match</span>
                    </div>
                    <div class="company-name">Quantum Digital &middot; Remote</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-graduation-cap"></i> 3 Months Duration</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;20,000 / month</span>
                        <span><i class="fa-regular fa-clock"></i> Posted 3 days ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 8px; line-height: 20px;">
                        Design intuitive user interfaces, design systems, and wireframes for mobile and web apps.
                    </p>
                    <div class="skill-tags">
                        <span class="skill-tag">UI/UX</span>
                        <span class="skill-tag">Figma</span>
                        <span class="skill-tag">Prototyping</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApplyIntern2" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="<%= ResolveUrl("~/User/SavedJobs.aspx") %>" style="color: #64748B; font-size: 12.5px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save</a>
            </div>
        </div>
    </div>
</asp:Content>
