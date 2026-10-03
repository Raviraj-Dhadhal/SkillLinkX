<%@ Page Title="Manage Companies - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="admin-page-header">
        <div>
            <h1>Manage Companies</h1>
            <p>Review and manage employer accounts, verify corporate documents, and monitor hiring activity.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-plus"></i> Add Company</button>
        </div>
    </div>

    <!-- Stats Bar -->
    <div class="admin-stats-grid" style="grid-template-columns: repeat(4, 1fr); margin-bottom: 24px;">
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Total Companies</span>
                <span class="stat-value" style="font-size: 22px;">1,845</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Verified &amp; Active</span>
                <span class="stat-value" style="font-size: 22px; color: #059669;">1,620</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">Pending Verification</span>
                <span class="stat-value" style="font-size: 22px; color: #D97706;">42</span>
            </div>
        </div>
        <div class="admin-stat-card" style="padding: 16px;">
            <div class="stat-info">
                <span class="stat-label">New This Month</span>
                <span class="stat-value" style="font-size: 22px; color: #0052CC;">28</span>
            </div>
        </div>
    </div>

    <!-- Filters Row -->
    <div class="admin-card" style="padding: 16px 20px; margin-bottom: 20px;">
        <div style="display: flex; gap: 14px; align-items: center; flex-wrap: wrap;">
            <div style="flex: 1; min-width: 200px;">
                <input type="text" placeholder="Search by company name, GST, or recruiter..." style="width: 100%; padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;" />
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>All Industries</option>
                    <option>IT & Software</option>
                    <option>FinTech</option>
                    <option>Healthcare</option>
                    <option>E-Commerce</option>
                </select>
            </div>
            <div>
                <select style="padding: 8px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13.5px;">
                    <option>All Locations</option>
                    <option>Bengaluru</option>
                    <option>Mumbai</option>
                    <option>Ahmedabad</option>
                    <option>Hyderabad</option>
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

    <!-- 2-Column Split: Table + Verification Drawer -->
    <div class="admin-split-grid">
        <!-- Left: Company List Table -->
        <div class="admin-card" style="margin-bottom: 0;">
            <table class="admin-table">
                <thead>
                    <tr>
                        <th>Company</th>
                        <th>Industry</th>
                        <th>Location</th>
                        <th>Active Jobs</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">TechNova Solutions</div>
                            <div style="font-size: 12px; color: #64748B;">technova.com</div>
                        </td>
                        <td>IT &amp; Software</td>
                        <td>Bengaluru</td>
                        <td>12</td>
                        <td><span class="badge badge-verified"><i class="fa-solid fa-check"></i> Verified</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Details</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">RetailGenius Inc</div>
                            <div style="font-size: 12px; color: #64748B;">retailgenius.com</div>
                        </td>
                        <td>E-Commerce</td>
                        <td>Mumbai</td>
                        <td>5</td>
                        <td><span class="badge badge-pending">Pending Review</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Review</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600; color: #0F172A;">HealthFirst Labs</div>
                            <div style="font-size: 12px; color: #64748B;">healthfirst.in</div>
                        </td>
                        <td>Healthcare</td>
                        <td>Pune</td>
                        <td>8</td>
                        <td><span class="badge badge-verified"><i class="fa-solid fa-check"></i> Verified</span></td>
                        <td>
                            <button type="button" class="btn-action-sm btn-view"><i class="fa-solid fa-eye"></i> Details</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Right: Verification & Company Details Blueprint -->
        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>Company Verification</h2>
                <span class="badge badge-pending">Pending</span>
            </div>

            <div style="margin-bottom: 16px;">
                <h3 style="font-size: 16px; font-weight: 700; color: #0F172A;">RetailGenius Inc</h3>
                <p style="font-size: 13px; color: #64748B;">E-Commerce &middot; Mumbai HQ</p>
                <p style="font-size: 12.5px; color: #475569; margin-top: 4px;">hr@retailgenius.com &middot; +91 98765 43210</p>
            </div>

            <div style="font-size: 13px; color: #334155; border-top: 1px solid #F1F5F9; padding-top: 14px;">
                <span style="color: #64748B; font-weight: 600; display: block; font-size: 11px; text-transform: uppercase; margin-bottom: 8px;">Uploaded Documents</span>
                
                <div style="display: flex; flex-direction: column; gap: 8px; margin-bottom: 16px;">
                    <div style="display: flex; align-items: center; justify-content: space-between; background: #F8FAFC; padding: 8px 12px; border-radius: 6px; border: 1px solid #E2E8F0;">
                        <span><i class="fa-regular fa-file-pdf" style="color: #EF4444; margin-right: 6px;"></i> Registration_Cert.pdf</span>
                        <a href="#" style="font-size: 12px; color: #0052CC; font-weight: 600;">View</a>
                    </div>
                    <div style="display: flex; align-items: center; justify-content: space-between; background: #F8FAFC; padding: 8px 12px; border-radius: 6px; border: 1px solid #E2E8F0;">
                        <span><i class="fa-regular fa-file-pdf" style="color: #EF4444; margin-right: 6px;"></i> GST_Certificate.pdf</span>
                        <a href="#" style="font-size: 12px; color: #0052CC; font-weight: 600;">View</a>
                    </div>
                </div>

                <div style="display: flex; gap: 10px;">
                    <button type="button" class="btn-action-sm btn-approve" style="flex: 1; justify-content: center; padding: 9px;"><i class="fa-solid fa-check"></i> Approve</button>
                    <button type="button" class="btn-action-sm btn-reject" style="flex: 1; justify-content: center; padding: 9px;"><i class="fa-solid fa-xmark"></i> Reject</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
