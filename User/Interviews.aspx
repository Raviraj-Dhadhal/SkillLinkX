<%@ Page Title="My Interviews" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>My Interviews</h1>
            <p>View confirmed interview dates, rounds, and join video meeting links.</p>
        </div>
    </div>

    <!-- 2-Column: Upcoming Interviews & Preparation Tips -->
    <div class="dashboard-grid-2">
        <div>
            <!-- Upcoming Interview Cards -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <h3>Upcoming Rounds (2)</h3>

                <!-- Interview 1 -->
                <div style="background-color: #F8F9FB; border: 1px solid #E2E8F0; border-radius: 10px; padding: 18px; margin-top: 14px;">
                    <div style="display: flex; justify-content: space-between; align-items: flex-start; flex-wrap: wrap; gap: 10px;">
                        <div>
                            <span class="badge-status badge-active">Confirmed</span>
                            <h4 style="font-size: 15px; color: #191B23; margin-top: 6px;">Technical Interview - Round 1</h4>
                            <p style="font-size: 13px; color: #0052CC; font-weight: 600;">TechNova Solutions &middot; Senior .NET Developer</p>
                        </div>
                        <div style="text-align: right;">
                            <div style="font-size: 13px; font-weight: 700; color: #191B23;"><i class="fa-regular fa-calendar"></i> Today, Oct 14</div>
                            <div style="font-size: 12px; color: #64748B;">11:30 AM - 12:30 PM IST</div>
                        </div>
                    </div>

                    <div style="margin-top: 14px; padding-top: 12px; border-top: 1px solid #E7EAF0; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 10px;">
                        <div style="font-size: 12.5px; color: #434654;">
                            <i class="fa-regular fa-user"></i> Interviewer: Mahek Godvani (Technical Talent Partner)
                        </div>
                        <a href="https://meet.google.com" target="_blank" class="header-btn" style="padding: 8px 16px; font-size: 12.5px;">
                            <i class="fa-solid fa-video"></i> Join Video Call
                        </a>
                    </div>
                </div>

                <!-- Interview 2 -->
                <div style="background-color: #F8F9FB; border: 1px solid #E2E8F0; border-radius: 10px; padding: 18px; margin-top: 14px;">
                    <div style="display: flex; justify-content: space-between; align-items: flex-start; flex-wrap: wrap; gap: 10px;">
                        <div>
                            <span class="badge-status badge-review">Upcoming</span>
                            <h4 style="font-size: 15px; color: #191B23; margin-top: 6px;">System Design &amp; Problem Solving</h4>
                            <p style="font-size: 13px; color: #0052CC; font-weight: 600;">InnovateLabs &middot; Backend Developer</p>
                        </div>
                        <div style="text-align: right;">
                            <div style="font-size: 13px; font-weight: 700; color: #191B23;"><i class="fa-regular fa-calendar"></i> Friday, Oct 17</div>
                            <div style="font-size: 12px; color: #64748B;">3:00 PM - 4:00 PM IST</div>
                        </div>
                    </div>

                    <div style="margin-top: 14px; padding-top: 12px; border-top: 1px solid #E7EAF0; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 10px;">
                        <div style="font-size: 12.5px; color: #434654;">
                            <i class="fa-regular fa-user"></i> Interviewer: Pooja Patel (Lead Architect)
                        </div>
                        <a href="https://meet.google.com" target="_blank" class="header-btn header-btn-secondary" style="padding: 8px 16px; font-size: 12.5px;">
                            <i class="fa-solid fa-video"></i> Link Pending
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <!-- Interview Prep Checklist -->
            <div class="dashboard-card">
                <h3>Interview Preparation</h3>
                <div style="display: flex; flex-direction: column; gap: 12px; margin-top: 12px;">
                    <div style="display: flex; gap: 10px; align-items: flex-start; font-size: 13px; color: #434654;">
                        <i class="fa-solid fa-circle-check" style="color: #15803D; margin-top: 3px;"></i>
                        <span>Review ASP.NET Web Forms lifecycle and C# OOP fundamentals.</span>
                    </div>
                    <div style="display: flex; gap: 10px; align-items: flex-start; font-size: 13px; color: #434654;">
                        <i class="fa-solid fa-circle-check" style="color: #15803D; margin-top: 3px;"></i>
                        <span>Prepare key highlights from your SkillLinkX portfolio project.</span>
                    </div>
                    <div style="display: flex; gap: 10px; align-items: flex-start; font-size: 13px; color: #434654;">
                        <i class="fa-solid fa-circle-check" style="color: #15803D; margin-top: 3px;"></i>
                        <span>Test your microphone and webcam at least 15 minutes prior.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
