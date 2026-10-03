<%@ Page Title="Messages" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Messages</h1>
            <p>Communicate directly with candidates, share resumes, and coordinate rounds.</p>
        </div>
        <div>
            <button type="button" class="header-btn"><i class="fa-solid fa-pen-to-square"></i> New Message</button>
        </div>
    </div>

    <!-- 3-Column Chat Layout -->
    <div class="chat-layout-grid">
        <!-- Conversations List (Left) -->
        <div class="conversations-column">
            <div class="conversation-card active">
                <h4 style="font-size: 13.5px; color: #191B23;">Mahek Godvani</h4>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Yes, I am available tomorrow for...</p>
            </div>
            <div class="conversation-card">
                <h4 style="font-size: 13.5px; color: #191B23;">Raviraj Dhadhal</h4>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Thank you for reaching out!</p>
            </div>
            <div class="conversation-card">
                <h4 style="font-size: 13.5px; color: #191B23;">Rahul Mehta</h4>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Here is my updated portfolio link...</p>
            </div>
        </div>

        <!-- Chat Thread (Center) -->
        <div class="chat-thread-column">
            <div style="padding: 14px 20px; border-bottom: 1px solid #E7EAF0; display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani</h4>
                    <span style="font-size: 11.5px; color: #15803D;">● Online</span>
                </div>
            </div>

            <div class="chat-history-box">
                <div class="chat-bubble incoming">
                    Hello! I saw your application for the Senior Frontend Developer position. Your profile matches our requirements perfectly. Are you available for a quick call tomorrow?
                </div>
                <div class="chat-bubble outgoing">
                    Hi! Thank you for reaching out. Yes, I'm definitely available tomorrow afternoon.
                </div>
            </div>

            <div class="chat-input-row">
                <input type="text" placeholder="Write a message..." />
                <button type="button" class="header-btn"><i class="fa-solid fa-paper-plane"></i></button>
            </div>
        </div>

        <!-- Candidate Profile Sidebar (Right Column) -->
        <div class="chat-profile-column">
            <div style="text-align: center; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                <div class="user-avatar-chip" style="width: 48px; height: 48px; font-size: 16px; margin: 0 auto 8px;">MG</div>
                <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani</h4>
                <p style="font-size: 12px; color: #64748B;">Senior Frontend Candidate</p>
                <a href="<%= ResolveUrl("~/Company/Candidates.aspx") %>" class="header-btn header-btn-secondary" style="margin-top: 8px; font-size: 12px; padding: 6px 12px;">View Profile</a>
            </div>

            <div style="margin-top: 14px;">
                <h5 style="font-size: 12px; color: #64748B; margin-bottom: 8px;">QUICK ACTIONS</h5>
                <div style="display: flex; flex-direction: column; gap: 8px;">
                    <button type="button" class="header-btn header-btn-secondary" style="font-size: 12px; padding: 8px 12px; text-align: left; justify-content: flex-start;"><i class="fa-solid fa-file"></i> View Resume</button>
                    <a href="<%= ResolveUrl("~/Company/Interviews.aspx") %>" class="header-btn header-btn-secondary" style="font-size: 12px; padding: 8px 12px; text-align: left; justify-content: flex-start;"><i class="fa-regular fa-calendar-check"></i> Schedule Round</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
