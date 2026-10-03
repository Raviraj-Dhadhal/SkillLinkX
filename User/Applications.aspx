<%@ Page Title="My Applications" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>My Applications</h1>
            <p>Track your active applications, review stages, and interview schedules in real time.</p>
        </div>
    </div>

    <!-- Metrics Cards -->
    <div class="stats-grid-4">
        <div class="stat-card">
            <span class="stat-number">18</span>
            <span class="stat-label">Total Applied</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #B45309;">6</span>
            <span class="stat-label">In Review</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #4338CA;">3</span>
            <span class="stat-label">Shortlisted</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #15803D;">2</span>
            <span class="stat-label">Offers Received</span>
        </div>
    </div>

    <!-- Applications Table Card -->
    <div class="table-card">
        <div class="table-filter-bar">
            <div class="filter-inputs">
                <input type="text" placeholder="Search applications..." class="filter-input" style="min-width: 220px;" />
                <select class="filter-select">
                    <option value="">All Statuses</option>
                    <option value="Review">In Review</option>
                    <option value="Shortlisted">Interview Scheduled</option>
                    <option value="Offer">Offer</option>
                </select>
            </div>
        </div>

        <table class="user-table">
            <thead>
                <tr>
                    <th>ROLE &amp; COMPANY</th>
                    <th>APPLIED ON</th>
                    <th>TYPE</th>
                    <th>STATUS</th>
                    <th>STAGE</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #191B23;">Senior Full Stack .NET Engineer</div>
                        <div style="font-size: 12px; color: #64748B;">TechNova Solutions &middot; Ahmedabad</div>
                    </td>
                    <td>Oct 12, 2026</td>
                    <td><span class="badge-status" style="background-color: #F1F5F9; color: #475569;">Job</span></td>
                    <td><span class="badge-status badge-shortlisted">Interview Scheduled</span></td>
                    <td>Technical Round 1</td>
                    <td>
                        <a href="<%= ResolveUrl("~/User/Interviews.aspx") %>" class="header-btn" style="padding: 6px 12px; font-size: 12px;">View Details</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #191B23;">Frontend Developer Intern</div>
                        <div style="font-size: 12px; color: #64748B;">InnovateLabs &middot; Ahmedabad</div>
                    </td>
                    <td>Oct 10, 2026</td>
                    <td><span class="badge-status" style="background-color: #FEF3C7; color: #B45309;">Internship</span></td>
                    <td><span class="badge-status badge-review">Under Review</span></td>
                    <td>Resume Screening</td>
                    <td>
                        <a href="<%= ResolveUrl("~/User/Messages.aspx") %>" class="header-btn header-btn-secondary" style="padding: 6px 12px; font-size: 12px;">Message</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #191B23;">Cloud Backend Engineer</div>
                        <div style="font-size: 12px; color: #64748B;">Apex Global Systems &middot; Bengaluru</div>
                    </td>
                    <td>Oct 05, 2026</td>
                    <td><span class="badge-status" style="background-color: #F1F5F9; color: #475569;">Job</span></td>
                    <td><span class="badge-status badge-active">Offer Extended</span></td>
                    <td>Offer Discussion</td>
                    <td>
                        <a href="<%= ResolveUrl("~/User/Messages.aspx") %>" class="header-btn" style="padding: 6px 12px; font-size: 12px;">View Offer</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
