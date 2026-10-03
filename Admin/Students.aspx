<%@ Page Title="Manage Students - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="admin-page-header">
        <div>
            <h1>Manage Students</h1>
            <p>View and manage all students registered on the platform with verified credentials.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-plus"></i> Add Student</button>
        </div>
    </div>

    <!-- Stats Bar -->
    <div class="admin-stats-grid" style="grid-template-columns: repeat(5, 1fr); margin-bottom: 24px;">
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Total Students</span>
                <span class="stat-value" style="font-size: 22px;">45,231</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Active Job Seekers</span>
                <span class="stat-value" style="font-size: 22px;">38,102</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Placed This Month</span>
                <span class="stat-value" style="font-size: 22px;">2,450</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Verified Profiles</span>
                <span class="stat-value" style="font-size: 22px;">42,100</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Pending Verification</span>
                <span class="stat-value" style="font-size: 22px; color: #D97706;">681</span>
            </div>
        </div>
    </div>

    <!-- Filters Row -->
    <div class="admin-card" style="padding: 16px 20px; margin-bottom: 20px;">
        <div style="display: flex; gap: 14px; align-items: center; flex-wrap: wrap;">
            <div style="flex: 1; min-width: 200px;">
                <input type="text" placeholder="Search by name, email, or skill..." style="width: 100%; padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;" />
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>All Colleges</option>
                    <option>IIT Bombay</option>
                    <option>NIT Trichy</option>
                    <option>Delhi University</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>All Locations</option>
                    <option>Mumbai</option>
                    <option>Bengaluru</option>
                    <option>Ahmedabad</option>
                    <option>Delhi NCR</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>Graduation Year</option>
                    <option>2026</option>
                    <option>2025</option>
                    <option>2024</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>Status: All</option>
                    <option>Verified</option>
                    <option>Pending</option>
                    <option>Suspended</option>
                </select>
            </div>
        </div>
    </div>

    <!-- 2-Column Split: Table + Student Profile Drawer -->
    <div class="admin-split-grid">
        <!-- Left: Student Records Table -->
        <div class="admin-card" style="margin-bottom: 0;">
            <table class="admin-table">
                <thead>
                    <tr>
                        <th>Student</th>
                        <th>College / Degree</th>
                        <th>Graduation</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">Raviraj Dhadhal</div>
                            <div style="font-size: 12px; color: #64748B;">raviraj@gmail.com</div>
                        </td>
                        <td>
                            <div style="font-weight: 500;">IIT Bombay</div>
                            <div style="font-size: 12px; color: #64748B;">B.Tech Computer Science</div>
                        </td>
                        <td>2026</td>
                        <td><span class="badge badge-verified"><i class="fa-solid fa-check"></i> Verified</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Details</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">Priya Sharma</div>
                            <div style="font-size: 12px; color: #64748B;">priya.s@nit.ac.in</div>
                        </td>
                        <td>
                            <div style="font-weight: 500;">NIT Trichy</div>
                            <div style="font-size: 12px; color: #64748B;">MCA</div>
                        </td>
                        <td>2025</td>
                        <td><span class="badge badge-verified"><i class="fa-solid fa-check"></i> Verified</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Details</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">Radhika Gupta</div>
                            <div style="font-size: 12px; color: #64748B;">radhika@outlook.com</div>
                        </td>
                        <td>
                            <div style="font-weight: 500;">NITS Pune</div>
                            <div style="font-size: 12px; color: #64748B;">B.E. Electronics</div>
                        </td>
                        <td>2026</td>
                        <td><span class="badge badge-pending">Pending Review</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Details</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Right: Selected Student Details Blueprint Card -->
        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>Student Details</h2>
                <span class="badge badge-verified">Verified</span>
            </div>
            
            <div style="text-align: center; margin-bottom: 16px;">
                <div class="admin-avatar" style="width: 64px; height: 64px; font-size: 22px; margin: 0 auto 10px auto;">RD</div>
                <h3 style="font-size: 16px; font-weight: 700; color: #0F172A;">Raviraj Dhadhal</h3>
                <p style="font-size: 13px; color: #64748B;">raviraj@gmail.com</p>
            </div>

            <div style="font-size: 13px; line-height: 1.6; color: #334155; border-top: 1px solid #F1F5F9; padding-top: 14px;">
                <div style="margin-bottom: 10px;">
                    <span style="color: #64748B; font-weight: 600; display: block; font-size: 11px; text-transform: uppercase;">Education</span>
                    IIT Bombay &middot; B.Tech Computer Science (2026)<br />
                    <strong>CGPA:</strong> 9.2 / 10.0
                </div>

                <div style="margin-bottom: 14px;">
                    <span style="color: #64748B; font-weight: 600; display: block; font-size: 11px; text-transform: uppercase;">Top Skills</span>
                    <div style="display: flex; gap: 6px; flex-wrap: wrap; margin-top: 4px;">
                        <span class="badge badge-info">Python</span>
                        <span class="badge badge-info">C# .NET</span>
                        <span class="badge badge-info">Machine Learning</span>
                        <span class="badge badge-info">React</span>
                    </div>
                </div>

                <div style="display: flex; flex-direction: column; gap: 8px; margin-top: 16px;">
                    <button type="button" class="btn-action-sm btn-approve" style="justify-content: center; padding: 9px;"><i class="fa-solid fa-circle-check"></i> Verify Account</button>
                    <button type="button" class="btn-action-sm btn-reject" style="justify-content: center; padding: 9px;"><i class="fa-solid fa-ban"></i> Suspend Student</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
