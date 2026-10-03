<%@ Page Title="Manage Jobs & Internships - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Manage Jobs &amp; Internships</h1>
            <p>Consolidated directory of all career postings across verified employers on SkillLinkX.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-plus"></i> Add Opportunity</button>
        </div>
    </div>

    <!-- Stats Bar -->
    <div class="admin-stats-grid" style="grid-template-columns: repeat(4, 1fr); margin-bottom: 24px;">
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Total Postings</span>
                <span class="stat-value" style="font-size: 22px;">8,402</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Active Jobs</span>
                <span class="stat-value" style="font-size: 22px; color: #059669;">5,120</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Active Internships</span>
                <span class="stat-value" style="font-size: 22px; color: #0052CC;">3,282</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Under Review</span>
                <span class="stat-value" style="font-size: 22px; color: #D97706;">64</span>
            </div>
        </div>
    </div>

    <!-- Filter Bar -->
    <div class="admin-card" style="padding: 16px 20px; margin-bottom: 20px;">
        <div style="display: flex; gap: 14px; align-items: center; flex-wrap: wrap;">
            <div style="flex: 1; min-width: 220px;">
                <input type="text" placeholder="Search by job title, company, or tech stack..." style="width: 100%; padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;" />
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>Type: All</option>
                    <option>Full-Time Job</option>
                    <option>Internship</option>
                    <option>Contract</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>Work Mode: All</option>
                    <option>On-Site</option>
                    <option>Hybrid</option>
                    <option>Remote</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>Status: Active</option>
                    <option>Pending</option>
                    <option>Expired</option>
                    <option>Closed</option>
                </select>
            </div>
        </div>
    </div>

    <!-- Opportunity Table -->
    <div class="admin-card">
        <table class="admin-table">
            <thead>
                <tr>
                    <th>Role &amp; Title</th>
                    <th>Company</th>
                    <th>Type</th>
                    <th>Location / Mode</th>
                    <th>Applicants</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Full Stack .NET Developer</div>
                        <div style="font-size: 12px; color: #64748B;">C# &middot; ASP.NET Core &middot; SQL Server</div>
                    </td>
                    <td>TechNova Solutions</td>
                    <td><span class="badge badge-info">Full-Time</span></td>
                    <td>Ahmedabad (Hybrid)</td>
                    <td><strong>124</strong> candidates</td>
                    <td><span class="badge badge-verified">Active</span></td>
                    <td>
                        <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> View</button>
                        <button type="button" class="btn-action-sm btn-reject"><i class="fa-solid fa-pause"></i> Pause</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Software Development Intern</div>
                        <div style="font-size: 12px; color: #64748B;">6 Months &middot; &#8377;15,000 / month</div>
                    </td>
                    <td>Apex Innovations</td>
                    <td><span class="badge badge-info">Internship</span></td>
                    <td>Remote</td>
                    <td><strong>86</strong> candidates</td>
                    <td><span class="badge badge-verified">Active</span></td>
                    <td>
                        <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> View</button>
                        <button type="button" class="btn-action-sm btn-reject"><i class="fa-solid fa-pause"></i> Pause</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Senior Cloud Security Architect</div>
                        <div style="font-size: 12px; color: #64748B;">AWS &middot; Kubernetes &middot; Zero Trust</div>
                    </td>
                    <td>CognitiveScale</td>
                    <td><span class="badge badge-info">Full-Time</span></td>
                    <td>Bengaluru</td>
                    <td><strong>38</strong> candidates</td>
                    <td><span class="badge badge-pending">Pending Review</span></td>
                    <td>
                        <button type="button" class="btn-action-sm btn-approve"><i class="fa-solid fa-check"></i> Approve</button>
                        <button type="button" class="btn-action-sm btn-reject"><i class="fa-solid fa-xmark"></i> Reject</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
