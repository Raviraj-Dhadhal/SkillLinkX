<%@ Page Title="Manage Jobs" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Manage Jobs</h1>
            <p>Create, manage and track all your job opportunities in one place.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" class="header-btn">
                <i class="fa-solid fa-plus"></i> Post New Job
            </a>
        </div>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid-6" style="grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));">
        <div class="stat-card">
            <span class="stat-number">24</span>
            <span class="stat-label">Total Jobs</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #15803D;">16</span>
            <span class="stat-label">Active Jobs</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">4</span>
            <span class="stat-label">Drafts</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">482</span>
            <span class="stat-label">Total Applications</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #B45309;">3</span>
            <span class="stat-label">Closing Soon</span>
        </div>
    </div>

    <!-- Jobs Table Card -->
    <div class="table-card">
        <div class="table-filter-bar">
            <div class="filter-inputs">
                <input type="text" class="filter-input" placeholder="Search job title, keywords..." />
                <select class="filter-select">
                    <option value="">Status: All</option>
                    <option value="Active">Active</option>
                    <option value="Draft">Draft</option>
                    <option value="Closed">Closed</option>
                </select>
                <select class="filter-select">
                    <option value="">Location: All</option>
                    <option value="Bengaluru">Bengaluru</option>
                    <option value="Ahmedabad">Ahmedabad</option>
                    <option value="Remote">Remote</option>
                </select>
                <select class="filter-select">
                    <option value="">Work Mode: All</option>
                    <option value="Hybrid">Hybrid</option>
                    <option value="OnSite">On-site</option>
                    <option value="Remote">Remote</option>
                </select>
            </div>
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
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Software Engineer</strong></td>
                    <td>Bengaluru (Hybrid)</td>
                    <td>Full-time</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">124</a></td>
                    <td>Oct 12, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td><a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" style="color: #64748B; text-decoration: none;"><i class="fa-solid fa-pen-to-square"></i></a></td>
                </tr>
                <tr>
                    <td><strong>Backend .NET Developer</strong></td>
                    <td>Ahmedabad (On-site)</td>
                    <td>Full-time</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">96</a></td>
                    <td>Oct 10, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td><a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" style="color: #64748B; text-decoration: none;"><i class="fa-solid fa-pen-to-square"></i></a></td>
                </tr>
                <tr>
                    <td><strong>UX Designer</strong></td>
                    <td>Remote</td>
                    <td>Contract</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">31</a></td>
                    <td>Oct 05, 2026</td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td><a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" style="color: #64748B; text-decoration: none;"><i class="fa-solid fa-pen-to-square"></i></a></td>
                </tr>
                <tr>
                    <td><strong>DevOps Engineer</strong></td>
                    <td>Bengaluru (Hybrid)</td>
                    <td>Full-time</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">0</a></td>
                    <td>Oct 01, 2026</td>
                    <td><span class="badge-status badge-draft">Draft</span></td>
                    <td><a href="<%= ResolveUrl("~/Company/PostJob.aspx") %>" style="color: #64748B; text-decoration: none;"><i class="fa-solid fa-pen-to-square"></i></a></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
