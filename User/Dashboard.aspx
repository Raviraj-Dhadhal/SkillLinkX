<%@ Page Title="Candidate Dashboard" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="user-page-header">
        <div>
            <h1>Welcome back, Raviraj!</h1>
            <p>Profile Completeness: 90% &middot; 4 new jobs match your skill profile today.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" class="header-btn">
                <i class="fa-solid fa-magnifying-glass"></i> Explore Roles
            </a>
        </div>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid-4">
        <div class="stat-card">
            <span class="stat-number">18</span>
            <span class="stat-label">Applied Jobs</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">6</span>
            <span class="stat-label">In Review</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">3</span>
            <span class="stat-label">Interviews</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">12</span>
            <span class="stat-label">Saved Listings</span>
        </div>
    </div>

    <!-- 2-Column Dashboard Grid -->
    <div class="dashboard-grid-2">
        <div>
            <!-- Recommended For You -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 16px;">
                    <h3>Recommended For You</h3>
                    <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" style="color: #0052CC; font-size: 13px; font-weight: 600; text-decoration: none;">View All</a>
                </div>

                <div class="job-card-list">
                    <!-- Job Item 1 -->
                    <div class="job-item-card">
                        <div class="job-main-info">
                            <div class="company-badge-icon">TN</div>
                            <div class="job-details">
                                <div style="display: flex; align-items: center; gap: 8px;">
                                    <h4>Senior .NET Full Stack Engineer</h4>
                                    <span class="badge-ai-match">96% AI Match</span>
                                </div>
                                <div class="company-name">TechNova Solutions &middot; Bengaluru (Hybrid)</div>
                                <div class="job-meta-row">
                                    <span><i class="fa-solid fa-briefcase"></i> Full-time</span>
                                    <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;12 - &#8377;18 LPA</span>
                                    <span><i class="fa-regular fa-clock"></i> 2 days ago</span>
                                </div>
                                <div class="skill-tags">
                                    <span class="skill-tag">C#</span>
                                    <span class="skill-tag">ASP.NET</span>
                                    <span class="skill-tag">SQL Server</span>
                                    <span class="skill-tag">React</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                            <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" class="header-btn" style="padding: 8px 16px; font-size: 12.5px;">Quick Apply</a>
                            <a href="#" style="color: #64748B; font-size: 12px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save</a>
                        </div>
                    </div>

                    <!-- Job Item 2 -->
                    <div class="job-item-card">
                        <div class="job-main-info">
                            <div class="company-badge-icon" style="background-color: #ECFDF5; color: #059669;">IL</div>
                            <div class="job-details">
                                <div style="display: flex; align-items: center; gap: 8px;">
                                    <h4>Backend Developer Intern</h4>
                                    <span class="badge-ai-match">92% AI Match</span>
                                </div>
                                <div class="company-name">InnovateLabs &middot; Ahmedabad (On-site)</div>
                                <div class="job-meta-row">
                                    <span><i class="fa-solid fa-graduation-cap"></i> Internship (6 Mos)</span>
                                    <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;25,000 / mo</span>
                                    <span><i class="fa-regular fa-clock"></i> 1 day ago</span>
                                </div>
                                <div class="skill-tags">
                                    <span class="skill-tag">C#</span>
                                    <span class="skill-tag">Entity Framework</span>
                                    <span class="skill-tag">REST API</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                            <a href="<%= ResolveUrl("~/User/Internships.aspx") %>" class="header-btn" style="padding: 8px 16px; font-size: 12.5px;">Quick Apply</a>
                            <a href="#" style="color: #64748B; font-size: 12px; text-decoration: none;"><i class="fa-regular fa-bookmark"></i> Save</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Applications -->
            <div class="table-card">
                <div class="table-filter-bar">
                    <h3>Recent Applications</h3>
                    <a href="<%= ResolveUrl("~/User/Applications.aspx") %>" class="header-btn header-btn-secondary">View All</a>
                </div>
                <table class="user-table">
                    <thead>
                        <tr>
                            <th>COMPANY &amp; ROLE</th>
                            <th>DATE</th>
                            <th>STATUS</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div style="font-weight: 600; color: #191B23;">TechNova Solutions</div>
                                <div style="font-size: 12px; color: #64748B;">Senior .NET Developer</div>
                            </td>
                            <td>Oct 12, 2026</td>
                            <td><span class="badge-status badge-shortlisted">Interview Scheduled</span></td>
                            <td><a href="<%= ResolveUrl("~/User/Interviews.aspx") %>" style="color: #0052CC; font-weight: 600; font-size: 12px;">View Round</a></td>
                        </tr>
                        <tr>
                            <td>
                                <div style="font-weight: 600; color: #191B23;">Apex Global Media</div>
                                <div style="font-size: 12px; color: #64748B;">Full Stack Web Developer</div>
                            </td>
                            <td>Oct 08, 2026</td>
                            <td><span class="badge-status badge-review">In Review</span></td>
                            <td><a href="<%= ResolveUrl("~/User/Applications.aspx") %>" style="color: #0052CC; font-weight: 600; font-size: 12px;">Track Status</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <!-- Quick Actions -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <h3>Quick Actions</h3>
                <div class="quick-action-grid">
                    <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" class="quick-action-btn">
                        <i class="fa-solid fa-briefcase"></i>
                        <span>Search Jobs</span>
                    </a>
                    <a href="<%= ResolveUrl("~/User/Internships.aspx") %>" class="quick-action-btn">
                        <i class="fa-solid fa-graduation-cap"></i>
                        <span>Internships</span>
                    </a>
                    <a href="<%= ResolveUrl("~/User/ResumeBuilder.aspx") %>" class="quick-action-btn">
                        <i class="fa-regular fa-file-lines"></i>
                        <span>Resume Builder</span>
                    </a>
                    <a href="<%= ResolveUrl("~/User/Interviews.aspx") %>" class="quick-action-btn">
                        <i class="fa-regular fa-calendar-check"></i>
                        <span>Interviews</span>
                    </a>
                </div>
            </div>

            <!-- Profile Summary Card -->
            <div class="dashboard-card">
                <h3>Profile Completeness</h3>
                <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 12px;">
                    <span style="font-size: 13.5px; font-weight: 600; color: #191B23;">90% Complete</span>
                    <span style="font-size: 12px; color: #15803D;">Almost Ready!</span>
                </div>
                <div style="width: 100%; height: 8px; background-color: #E2E8F0; border-radius: 4px; overflow: hidden; margin: 10px 0 16px;">
                    <div style="width: 90%; height: 100%; background-color: #0052CC; border-radius: 4px;"></div>
                </div>
                <div style="font-size: 12.5px; color: #64748B; line-height: 1.5;">
                    Add 1 more verified project to reach 100% and get 2x recruiter visibility.
                </div>
                <a href="<%= ResolveUrl("~/User/Profile.aspx") %>" class="header-btn header-btn-secondary" style="width: 100%; justify-content: center; margin-top: 16px;">
                    Update Profile
                </a>
            </div>
        </div>
    </div>
</asp:Content>
