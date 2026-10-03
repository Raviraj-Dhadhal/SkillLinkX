<%@ Page Title="Admin Dashboard - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Welcome back, Admin!</h1>
            <p>Monitor and manage the SkillLinkX platform from one central control hub.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/Admin/Analytics.aspx") %>" class="admin-btn-primary">
                <i class="fa-solid fa-download"></i> Export System Report
            </a>
        </div>
    </div>

    <!-- 4 Stats Cards Grid -->
    <div class="admin-stats-grid">
        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Total Students</span>
                <span class="stat-value">45,231</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> +12.5% this month</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-user-graduate"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Total Companies</span>
                <span class="stat-value">1,845</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> +8.2% this month</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-building"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Active Jobs & Internships</span>
                <span class="stat-value">8,402</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> 324 added today</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-briefcase"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Total Applications</span>
                <span class="stat-value">124,560</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> +15.4% activity</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-file-signature"></i></div>
        </div>
    </div>

    <!-- 2-Column Grid (Analytics Chart + System Health & Critical Alerts) -->
    <div class="admin-split-grid" style="margin-bottom: 24px;">
        <!-- Left: User Growth Analytics -->
        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>User & Platform Growth Analytics</h2>
                <span style="font-size: 13px; color: #64748B;">Last 6 Months</span>
            </div>
            <div class="chart-placeholder-box">
                <i class="fa-solid fa-chart-area" style="font-size: 32px; color: #94A3B8;"></i>
                <span style="font-weight: 600; color: #334155;">Monthly Registration &amp; Hiring Curve</span>
                <span style="font-size: 12.5px;">Interactive growth visualization chart blueprint</span>
            </div>
        </div>

        <!-- Right: System Health & Critical Alerts -->
        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>System Health</h2>
                <span class="badge badge-verified"><i class="fa-solid fa-circle-check"></i> Operational</span>
            </div>
            
            <div style="display: flex; flex-direction: column; gap: 12px; margin-bottom: 20px;">
                <div style="display: flex; justify-content: space-between; font-size: 13.5px;">
                    <span style="color: #475569;"><i class="fa-solid fa-server" style="color: #0052CC; margin-right: 8px;"></i> Platform Core</span>
                    <span class="badge badge-verified">Operational</span>
                </div>
                <div style="display: flex; justify-content: space-between; font-size: 13.5px;">
                    <span style="color: #475569;"><i class="fa-solid fa-database" style="color: #0052CC; margin-right: 8px;"></i> Database Cluster</span>
                    <span class="badge badge-verified">Operational</span>
                </div>
                <div style="display: flex; justify-content: space-between; font-size: 13.5px;">
                    <span style="color: #475569;"><i class="fa-solid fa-robot" style="color: #0052CC; margin-right: 8px;"></i> AI Matching Engine</span>
                    <span class="badge badge-verified">Operational</span>
                </div>
            </div>

            <!-- Critical Alerts Box -->
            <div style="background-color: #FEF2F2; border: 1px solid #FECACA; border-radius: 8px; padding: 14px;">
                <div style="display: flex; align-items: center; gap: 8px; font-weight: 600; color: #991B1B; font-size: 13px; margin-bottom: 4px;">
                    <i class="fa-solid fa-triangle-exclamation"></i> Critical Alerts (1)
                </div>
                <p style="font-size: 12.5px; color: #B91C1C; line-height: 1.4;">12 companies are waiting for document verification over 48 hours.</p>
                <div style="margin-top: 8px;">
                    <a href="<%= ResolveUrl("~/Admin/Companies.aspx") %>" style="font-size: 12.5px; color: #991B1B; font-weight: 600; text-decoration: underline;">Review Pending List &rarr;</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Pending Approvals & Recent Activity Table -->
    <div class="admin-card">
        <div class="admin-card-header">
            <h2>Pending Approvals &amp; Recent Platform Activity</h2>
            <a href="<%= ResolveUrl("~/Admin/Companies.aspx") %>" style="font-size: 13px; color: #0052CC; text-decoration: none; font-weight: 600;">View All</a>
        </div>
        <table class="admin-table">
            <thead>
                <tr>
                    <th>Entity</th>
                    <th>Type</th>
                    <th>Location</th>
                    <th>Submitted Date</th>
                    <th>Status</th>
                    <th style="text-align: right;">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">TechWave Solutions</div>
                        <div style="font-size: 12px; color: #64748B;">GST: 24AAACC1206K1Z1</div>
                    </td>
                    <td><span class="badge badge-info">Company</span></td>
                    <td>Bengaluru</td>
                    <td>Oct 24, 2026</td>
                    <td><span class="badge badge-pending">Pending Review</span></td>
                    <td style="text-align: right;">
                        <button type="button" class="btn-action-sm btn-approve"><i class="fa-solid fa-check"></i> Approve</button>
                        <button type="button" class="btn-action-sm btn-reject"><i class="fa-solid fa-xmark"></i> Reject</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Raviraj Dhadhal</div>
                        <div style="font-size: 12px; color: #64748B;">B.Tech CS &middot; IIT Bombay</div>
                    </td>
                    <td><span class="badge badge-info">Student</span></td>
                    <td>Mumbai</td>
                    <td>Oct 24, 2026</td>
                    <td><span class="badge badge-verified">Active</span></td>
                    <td style="text-align: right;">
                        <a href="<%= ResolveUrl("~/Admin/Students.aspx") %>" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> View Profile</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
