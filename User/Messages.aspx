<%@ Page Title="Messages" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Messages</h1>
            <p>Direct communication with company recruiters and hiring managers.</p>
        </div>
    </div>

    <!-- 3-Column Chat Layout -->
    <div class="chat-layout-grid">
        <!-- Conversations List (Left) -->
        <div class="conversations-column">
            <div class="conversation-card active">
                <h4 style="font-size: 13.5px; color: #191B23;">TechNova Solutions</h4>
                <p style="font-size: 12px; color: #0052CC; font-weight: 600;">Mahek Godvani &middot; Recruiter</p>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Are you available for a quick call tomorrow?</p>
            </div>
            <div class="conversation-card">
                <h4 style="font-size: 13.5px; color: #191B23;">InnovateLabs</h4>
                <p style="font-size: 12px; color: #64748B;">Pooja Patel &middot; Hiring Manager</p>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Thank you for your application!</p>
            </div>
        </div>

        <!-- Chat Thread (Center) -->
        <div class="chat-thread-column">
            <div style="padding: 14px 20px; border-bottom: 1px solid #E7EAF0; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani (TechNova Solutions)</h4>
                    <span style="font-size: 11.5px; color: #15803D;">● Active Now</span>
                </div>
            </div>

            <div class="chat-history-box">
                <div class="chat-bubble incoming">
                    Hello Raviraj! We reviewed your profile for the Senior Full Stack .NET Engineer role and were very impressed with your portfolio projects. Are you available for a technical round tomorrow?
                </div>
                <div class="chat-bubble outgoing">
                    Hi Mahek! Thank you for the opportunity. Yes, I'm available anytime after 11:00 AM IST. Looking forward to discussing the role!
                </div>
            </div>

            <div class="chat-input-row">
                <input type="text" placeholder="Write a reply..." />
                <button type="button" class="header-btn"><i class="fa-solid fa-paper-plane"></i></button>
            </div>
        </div>

        <!-- Recruiter / Company Sidebar (Right) -->
        <div class="chat-profile-column" style="padding: 20px;">
            <div style="text-align: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                <div class="user-avatar-chip" style="width: 48px; height: 48px; font-size: 16px; margin: 0 auto 8px;">TN</div>
                <h4 style="font-size: 14px; color: #191B23;">TechNova Solutions</h4>
                <p style="font-size: 12px; color: #64748B;">IT Services &amp; Consulting</p>
                <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" class="header-btn header-btn-secondary" style="margin-top: 10px; font-size: 12px; padding: 6px 12px;">View All Jobs</a>
            </div>

            <div style="margin-top: 14px;">
                <h5 style="font-size: 12px; color: #64748B; margin-bottom: 8px;">POSITION DISCUSSED</h5>
                <p style="font-size: 13px; font-weight: 600; color: #191B23;">Senior Full Stack .NET Engineer</p>
                <span class="badge-status badge-shortlisted" style="margin-top: 6px;">Interview Round 1</span>
            </div>
        </div>
    </div>
</asp:Content>
