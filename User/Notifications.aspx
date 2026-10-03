<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Notifications</h1>
            <p>Stay updated on interview invitations, application reviews, and AI match alerts.</p>
        </div>
        <div>
            <button type="button" class="header-btn header-btn-secondary"><i class="fa-solid fa-check-double"></i> Mark All as Read</button>
        </div>
    </div>

    <!-- Notifications List Card -->
    <div class="dashboard-card" style="padding: 0; overflow: hidden;">
        <div style="padding: 16px 20px; border-bottom: 1px solid #E7EAF0; background-color: #F8F9FB; display: flex; justify-content: space-between; align-items: center;">
            <span style="font-size: 13.5px; font-weight: 600; color: #191B23;">Recent Alerts</span>
            <span class="badge-status badge-active">3 Unread</span>
        </div>

        <div style="display: flex; flex-direction: column;">
            <!-- Notification 1 -->
            <div style="padding: 18px 20px; border-bottom: 1px solid #E7EAF0; display: flex; gap: 14px; background-color: #F3F3FD;">
                <div class="company-badge-icon" style="background-color: #EEF2FF; color: #0052CC;"><i class="fa-regular fa-calendar-check"></i></div>
                <div style="flex-grow: 1;">
                    <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                        <h4 style="font-size: 14px; color: #191B23;">Interview Invitation Received</h4>
                        <span style="font-size: 12px; color: #64748B;">10 mins ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 4px;">
                        TechNova Solutions invited you to <strong>Technical Round 1</strong> for Senior Full Stack .NET Engineer on Today, 11:30 AM IST.
                    </p>
                    <a href="<%= ResolveUrl("~/User/Interviews.aspx") %>" style="color: #0052CC; font-size: 12.5px; font-weight: 600; text-decoration: none; display: inline-block; margin-top: 6px;">View Interview Details &rarr;</a>
                </div>
            </div>

            <!-- Notification 2 -->
            <div style="padding: 18px 20px; border-bottom: 1px solid #E7EAF0; display: flex; gap: 14px; background-color: #F3F3FD;">
                <div class="company-badge-icon" style="background-color: #ECFDF5; color: #059669;"><i class="fa-solid fa-sparkles"></i></div>
                <div style="flex-grow: 1;">
                    <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                        <h4 style="font-size: 14px; color: #191B23;">High AI Match Role: 96% Match</h4>
                        <span style="font-size: 12px; color: #64748B;">2 hours ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 4px;">
                        A new opening <strong>Senior .NET Engineer</strong> at TechNova Solutions matches 96% of your skills.
                    </p>
                    <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" style="color: #0052CC; font-size: 12.5px; font-weight: 600; text-decoration: none; display: inline-block; margin-top: 6px;">Explore Job &rarr;</a>
                </div>
            </div>

            <!-- Notification 3 -->
            <div style="padding: 18px 20px; display: flex; gap: 14px;">
                <div class="company-badge-icon" style="background-color: #FEF3C7; color: #B45309;"><i class="fa-regular fa-file-lines"></i></div>
                <div style="flex-grow: 1;">
                    <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                        <h4 style="font-size: 14px; color: #191B23;">Application Viewed</h4>
                        <span style="font-size: 12px; color: #64748B;">1 day ago</span>
                    </div>
                    <p style="font-size: 13px; color: #434654; margin-top: 4px;">
                        InnovateLabs viewed your application for <strong>Frontend Developer Intern</strong>.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
