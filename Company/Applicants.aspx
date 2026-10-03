<%@ Page Title="Applicants" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Applicants</h1>
            <p>Review and manage candidates who applied to your opportunities with AI matching insights.</p>
        </div>
    </div>

    <!-- Status Filters -->
    <div class="stats-grid-6">
        <div class="stat-card">
            <span class="stat-number">1,248</span>
            <span class="stat-label">Total</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #0052CC;">84</span>
            <span class="stat-label">New</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">312</span>
            <span class="stat-label">Under Review</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">156</span>
            <span class="stat-label">Shortlisted</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">42</span>
            <span class="stat-label">Interview</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #15803D;">18</span>
            <span class="stat-label">Selected</span>
        </div>
    </div>

    <!-- Split View: Applicants List (Left) & Preview Pane (Right) -->
    <div class="applicants-split-layout">
        <!-- List Column -->
        <div>
            <div class="applicant-card-item">
                <div class="applicant-info">
                    <h4>Raviraj Dhadhal</h4>
                    <p>Applied for <strong>Software Engineer</strong> &middot; 2 days ago</p>
                </div>
                <div style="display: flex; align-items: center; gap: 10px;">
                    <span class="badge-ai-match">94% Match</span>
                    <span class="badge-status badge-active">Shortlisted</span>
                </div>
            </div>

            <div class="applicant-card-item">
                <div class="applicant-info">
                    <h4>Mahek Godvani</h4>
                    <p>Applied for <strong>Frontend Developer Intern</strong> &middot; 3 days ago</p>
                </div>
                <div style="display: flex; align-items: center; gap: 10px;">
                    <span class="badge-ai-match">91% Match</span>
                    <span class="badge-status badge-review">Review</span>
                </div>
            </div>

            <div class="applicant-card-item">
                <div class="applicant-info">
                    <h4>Rahul Mehta</h4>
                    <p>Applied for <strong>UX Designer</strong> &middot; 4 days ago</p>
                </div>
                <div style="display: flex; align-items: center; gap: 10px;">
                    <span class="badge-ai-match">88% Match</span>
                    <span class="badge-status badge-draft">New</span>
                </div>
            </div>
        </div>

        <!-- Preview Pane (Right Column) -->
        <div class="applicant-detail-pane">
            <div style="text-align: center; padding-bottom: 16px; border-bottom: 1px solid #E7EAF0;">
                <div class="user-avatar-chip" style="width: 52px; height: 52px; font-size: 18px; margin: 0 auto 10px;">RD</div>
                <h3 style="font-size: 17px; color: #191B23;">Raviraj Dhadhal</h3>
                <p style="font-size: 13px; color: #64748B;">Senior Software Developer | Full-Stack</p>
                <a href="<%= ResolveUrl("~/Company/Candidates.aspx") %>" class="header-btn header-btn-secondary" style="margin-top: 10px; font-size: 12.5px;">View Full Profile</a>
            </div>

            <div style="margin-top: 16px;">
                <h4 style="font-size: 13px; color: #64748B; margin-bottom: 8px;">AI MATCH INSIGHTS</h4>
                <div style="background-color: #EAF1FF; padding: 12px; border-radius: 8px; color: #0052CC; font-size: 13px; font-weight: 600;">
                    <i class="fa-solid fa-wand-magic-sparkles"></i> 94% Match: Strong in .NET, C#, SQL Server, Azure
                </div>
            </div>

            <div style="margin-top: 16px;">
                <h4 style="font-size: 13px; color: #64748B; margin-bottom: 6px;">EDUCATION</h4>
                <p style="font-size: 13.5px; color: #191B23; font-weight: 600;">B.Tech Computer Science</p>
                <p style="font-size: 12.5px; color: #64748B;">IIT Bombay &middot; 2024</p>
            </div>

            <div class="form-actions" style="margin-top: 20px; justify-content: space-between;">
                <button type="button" class="header-btn header-btn-secondary" style="color: #DC2626; border-color: #FCA5A5;">Reject</button>
                <a href="<%= ResolveUrl("~/Company/Interviews.aspx") %>" class="header-btn"><i class="fa-regular fa-calendar-check"></i> Schedule Interview</a>
            </div>
        </div>
    </div>
</asp:Content>
