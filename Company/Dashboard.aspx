<%@ Page Title="Company Dashboard" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="company-page-header">
        <div>
            <h1>Good morning, TechNova!</h1>
            <p>Profile Completion: 85% &middot; Manage your talent pipeline and active listings.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/Company/Profile.aspx") %>" class="header-btn header-btn-secondary">
                <i class="fa-regular fa-building"></i> Company Profile
            </a>
        </div>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid-6">
        <div class="stat-card">
            <span class="stat-number">12</span>
            <span class="stat-label">Active Jobs</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">8</span>
            <span class="stat-label">Active Internships</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">458</span>
            <span class="stat-label">Total Applicants</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">42</span>
            <span class="stat-label">Shortlisted</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">15</span>
            <span class="stat-label">Interviews</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">6</span>
            <span class="stat-label">Hires</span>
        </div>
    </div>

    <!-- 2-Column Grid: Recruitment Pipeline & Quick Actions -->
    <div class="dashboard-grid-2">
        <!-- Recruitment Pipeline -->
        <div class="dashboard-card">
            <h3>Recruitment Pipeline</h3>
            <div class="pipeline-steps">
                <div class="pipeline-item">
                    <span class="count">458</span>
                    <span class="label">Applications</span>
                </div>
                <div class="pipeline-item">
                    <span class="count">112</span>
                    <span class="label">Review</span>
                </div>
                <div class="pipeline-item">
                    <span class="count">42</span>
                    <span class="label">Shortlisted</span>
                </div>
                <div class="pipeline-item">
                    <span class="count">15</span>
                    <span class="label">Interview</span>
                </div>
                <div class="pipeline-item">
                    <span class="count">6</span>
                    <span class="label">Selected</span>
                </div>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="dashboard-card">
            <h3>Quick Actions</h3>
            <div class="quick-action-grid">
                <a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" class="quick-action-btn">
                    <i class="fa-solid fa-briefcase"></i>
                    <span>Post a Job</span>
                </a>
                <a href="<%= ResolveUrl("~/Company/PostInternship.aspx") %>" class="quick-action-btn">
                    <i class="fa-solid fa-graduation-cap"></i>
                    <span>Post Internship</span>
                </a>
                <a href="<%= ResolveUrl("~/Company/Candidates.aspx") %>" class="quick-action-btn">
                    <i class="fa-solid fa-user-check"></i>
                    <span>Find Candidates</span>
                </a>
                <a href="<%= ResolveUrl("~/Company/Interviews.aspx") %>" class="quick-action-btn">
                    <i class="fa-regular fa-calendar-plus"></i>
                    <span>Schedule Interview</span>
                </a>
            </div>
        </div>
    </div>

    <!-- Recent Openings Table -->
    <div class="table-card">
        <div class="table-filter-bar">
            <h3>Active Openings</h3>
            <a href="<%= ResolveUrl("~/Company/ManageJobs.aspx") %>" class="header-btn header-btn-secondary">View All</a>
        </div>
        <table class="company-table">
            <thead>
                <tr>
                    <th>Job Title</th>
                    <th>Location</th>
                    <th>Type</th>
                    <th>Applications</th>
                    <th>Posted Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Software Engineer</strong></td>
                    <td>Bengaluru (Hybrid)</td>
                    <td>Full-time</td>
                    <td>124</td>
                    <td>Oct 12, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
                <tr>
                    <td><strong>Frontend Developer Intern</strong></td>
                    <td>Ahmedabad (On-site)</td>
                    <td>Internship</td>
                    <td>86</td>
                    <td>Oct 10, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
                <tr>
                    <td><strong>UX Designer</strong></td>
                    <td>Remote</td>
                    <td>Contract</td>
                    <td>31</td>
                    <td>Oct 05, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
