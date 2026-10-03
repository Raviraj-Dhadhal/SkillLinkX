<%@ Page Title="Manage Internships" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Manage Internships</h1>
            <p>Track internship opportunities, AI matching insights, and application stages.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/Company/PostInternship.aspx") %>" class="header-btn">
                <i class="fa-solid fa-plus"></i> Post Internship
            </a>
        </div>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid-6" style="grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));">
        <div class="stat-card">
            <span class="stat-number">18</span>
            <span class="stat-label">Total Internships</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #15803D;">12</span>
            <span class="stat-label">Active</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">3</span>
            <span class="stat-label">Drafts</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">326</span>
            <span class="stat-label">Total Applications</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #B45309;">2</span>
            <span class="stat-label">Closing Soon</span>
        </div>
    </div>

    <!-- Internships Table Card -->
    <div class="table-card">
        <div class="table-filter-bar">
            <div class="filter-inputs">
                <input type="text" class="filter-input" placeholder="Search internship role..." />
                <select class="filter-select">
                    <option value="">Status: All</option>
                    <option value="Active">Active</option>
                    <option value="Draft">Draft</option>
                </select>
                <select class="filter-select">
                    <option value="">Duration: All</option>
                    <option value="3 Months">3 Months</option>
                    <option value="6 Months">6 Months</option>
                </select>
            </div>
        </div>

        <table class="company-table">
            <thead>
                <tr>
                    <th>Internship Role</th>
                    <th>Location &amp; Mode</th>
                    <th>Duration</th>
                    <th>Stipend</th>
                    <th>Applicants</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Frontend Developer Intern</strong></td>
                    <td>Ahmedabad (On-site)</td>
                    <td>6 Months</td>
                    <td>&#8377;25,000 / mo</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">86</a></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
                <tr>
                    <td><strong>UI/UX Design Intern</strong></td>
                    <td>Remote</td>
                    <td>3 Months</td>
                    <td>&#8377;20,000 / mo</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">54</a></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
                <tr>
                    <td><strong>Data Science Intern</strong></td>
                    <td>Bengaluru (Hybrid)</td>
                    <td>6 Months</td>
                    <td>&#8377;30,000 / mo</td>
                    <td><a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" style="color: #0052CC; font-weight: 600; text-decoration: none;">72</a></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
