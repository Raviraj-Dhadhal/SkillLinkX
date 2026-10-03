<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Notifications</h1>
            <p>Stay updated with applications, interviews, and company hiring pipeline alerts.</p>
        </div>
        <div>
            <button type="button" class="header-btn header-btn-secondary"><i class="fa-solid fa-check-double"></i> Mark All as Read</button>
        </div>
    </div>

    <!-- Category Stats -->
    <div class="stats-grid-6" style="grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));">
        <div class="stat-card">
            <span class="stat-number">3</span>
            <span class="stat-label">Unread</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">1</span>
            <span class="stat-label">Applications</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">1</span>
            <span class="stat-label">Interviews</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">2</span>
            <span class="stat-label">Networking</span>
        </div>
    </div>

    <!-- Notifications List -->
    <div class="table-card">
        <div style="padding: 18px 20px; border-bottom: 1px solid #F1F5F9; display: flex; gap: 14px; align-items: flex-start;">
            <div style="width: 36px; height: 36px; border-radius: 50%; background-color: #EAF1FF; color: #0052CC; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <i class="fa-solid fa-file-signature"></i>
            </div>
            <div style="flex-grow: 1;">
                <h4 style="font-size: 14px; color: #191B23;">New application for Software Developer from Raviraj Dhadhal</h4>
                <p style="font-size: 12.5px; color: #64748B; margin-top: 2px;">94% AI Match score &middot; 2 hours ago</p>
            </div>
            <a href="<%= ResolveUrl("~/Company/Applicants.aspx") %>" class="header-btn header-btn-secondary" style="font-size: 12px; padding: 6px 12px;">Review</a>
        </div>

        <div style="padding: 18px 20px; border-bottom: 1px solid #F1F5F9; display: flex; gap: 14px; align-items: flex-start;">
            <div style="width: 36px; height: 36px; border-radius: 50%; background-color: #DCFCE7; color: #15803D; display: flex; align-items: center; justify-content: center; flex-shrink: 0;">
                <i class="fa-regular fa-calendar-check"></i>
            </div>
            <div style="flex-grow: 1;">
                <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani confirmed interview slot for today at 11:30 AM</h4>
                <p style="font-size: 12.5px; color: #64748B; margin-top: 2px;">Technical &amp; Culture Round &middot; 4 hours ago</p>
            </div>
            <a href="<%= ResolveUrl("~/Company/Interviews.aspx") %>" class="header-btn header-btn-secondary" style="font-size: 12px; padding: 6px 12px;">View Calendar</a>
        </div>
    </div>
</asp:Content>
