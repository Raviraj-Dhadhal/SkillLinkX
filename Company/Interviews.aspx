<%@ Page Title="Interviews" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Interview Scheduling</h1>
            <p>Schedule, track and manage candidate interviews with video links.</p>
        </div>
        <div>
            <button type="button" class="header-btn" onclick="document.getElementById('scheduleSection').scrollIntoView({behavior: 'smooth'});">
                <i class="fa-solid fa-plus"></i> Schedule Interview
            </button>
        </div>
    </div>

    <!-- Stats Grid -->
    <div class="stats-grid-6" style="grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));">
        <div class="stat-card">
            <span class="stat-number" style="color: #0052CC;">4</span>
            <span class="stat-label">Today</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">12</span>
            <span class="stat-label">Upcoming</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">28</span>
            <span class="stat-label">Completed</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">5</span>
            <span class="stat-label">Pending</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #DC2626;">2</span>
            <span class="stat-label">Cancelled</span>
        </div>
    </div>

    <!-- 2-Column: Calendar View (Left) & Upcoming List (Right) -->
    <div class="dashboard-grid-2" style="margin-bottom: 24px;">
        <!-- Interactive Calendar Card -->
        <div class="calendar-card">
            <div style="display: flex; justify-content: space-between; align-items: center;">
                <h3>October 2026</h3>
                <div style="display: flex; gap: 6px;">
                    <button type="button" class="header-btn header-btn-secondary" style="padding: 6px 12px;"><i class="fa-solid fa-angle-left"></i></button>
                    <button type="button" class="header-btn header-btn-secondary" style="padding: 6px 12px;"><i class="fa-solid fa-angle-right"></i></button>
                </div>
            </div>

            <div class="calendar-days-grid">
                <div class="calendar-day-header">MON</div>
                <div class="calendar-day-header">TUE</div>
                <div class="calendar-day-header">WED</div>
                <div class="calendar-day-header">THU</div>
                <div class="calendar-day-header">FRI</div>
                <div class="calendar-day-header">SAT</div>
                <div class="calendar-day-header">SUN</div>

                <div class="calendar-day-cell">1</div>
                <div class="calendar-day-cell">2</div>
                <div class="calendar-day-cell active">3</div>
                <div class="calendar-day-cell has-event">4</div>
                <div class="calendar-day-cell">5</div>
                <div class="calendar-day-cell">6</div>
                <div class="calendar-day-cell">7</div>
                <div class="calendar-day-cell">8</div>
                <div class="calendar-day-cell has-event">9</div>
                <div class="calendar-day-cell">10</div>
                <div class="calendar-day-cell">11</div>
                <div class="calendar-day-cell has-event">12</div>
                <div class="calendar-day-cell">13</div>
                <div class="calendar-day-cell">14</div>
            </div>
        </div>

        <!-- Upcoming Interviews List -->
        <div class="dashboard-card">
            <h3>Upcoming List</h3>
            
            <div style="background-color: #F8F9FB; border: 1px solid #E2E8F0; border-radius: 8px; padding: 14px; margin-bottom: 12px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <h4 style="font-size: 14px; color: #191B23;">Mahek Godvani</h4>
                    <span class="badge-status badge-active">Confirmed</span>
                </div>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Senior Frontend Developer</p>
                <div style="font-size: 12.5px; color: #0052CC; font-weight: 600; margin-top: 6px;">
                    <i class="fa-regular fa-clock"></i> Today, 11:30 AM - 12:30 PM
                </div>
                <div style="margin-top: 8px;">
                    <a href="#" class="header-btn header-btn-secondary" style="font-size: 12px; padding: 6px 12px;"><i class="fa-solid fa-video"></i> Google Meet</a>
                </div>
            </div>

            <div style="background-color: #F8F9FB; border: 1px solid #E2E8F0; border-radius: 8px; padding: 14px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <h4 style="font-size: 14px; color: #191B23;">Rahul Mehta</h4>
                    <span class="badge-status badge-review">Pending</span>
                </div>
                <p style="font-size: 12px; color: #64748B; margin-top: 2px;">Product Manager</p>
                <div style="font-size: 12.5px; color: #0052CC; font-weight: 600; margin-top: 6px;">
                    <i class="fa-regular fa-clock"></i> Today, 3:00 PM - 4:00 PM
                </div>
            </div>
        </div>
    </div>

    <!-- Schedule Interview Section with ASP.NET Validation -->
    <div class="dashboard-card" id="scheduleSection">
        <h3>Schedule New Interview</h3>
        <p style="font-size: 13px; color: #64748B; margin-bottom: 18px;">Send calendar invite and video link directly to the shortlisted candidate.</p>

        <div class="form-grid-2">
            <div class="form-group">
                <label for="<%= txtCandidateName.ClientID %>">Candidate Name *</label>
                <asp:TextBox ID="txtCandidateName" runat="server" placeholder="e.g. Raviraj Dhadhal" />
                <asp:RequiredFieldValidator ID="rfvCandName" runat="server"
                    ControlToValidate="txtCandidateName"
                    ErrorMessage="Candidate name is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ScheduleGroup" />
            </div>
            <div class="form-group">
                <label for="<%= txtCandidateEmail.ClientID %>">Candidate Email *</label>
                <asp:TextBox ID="txtCandidateEmail" runat="server" placeholder="e.g. candidate@domain.com" />
                <asp:RequiredFieldValidator ID="rfvCandEmail" runat="server"
                    ControlToValidate="txtCandidateEmail"
                    ErrorMessage="Candidate email is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ScheduleGroup" />
                <asp:RegularExpressionValidator ID="revCandEmail" runat="server"
                    ControlToValidate="txtCandidateEmail"
                    ValidationExpression="^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$"
                    ErrorMessage="Enter a valid email address."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ScheduleGroup" />
            </div>
        </div>

        <div class="form-grid-2">
            <div class="form-group">
                <label for="<%= ddlInterviewType.ClientID %>">Interview Round *</label>
                <asp:DropDownList ID="ddlInterviewType" runat="server">
                    <asp:ListItem Value="Tech1" Text="Technical Round 1" />
                    <asp:ListItem Value="Tech2" Text="System Design Round" />
                    <asp:ListItem Value="HR" Text="HR &amp; Culture Fit" />
                    <asp:ListItem Value="Final" Text="Final Executive Round" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="<%= txtMeetingLink.ClientID %>">Meeting / Video URL *</label>
                <asp:TextBox ID="txtMeetingLink" runat="server" placeholder="e.g. https://meet.google.com/xyz-abc-123" />
                <asp:RequiredFieldValidator ID="rfvMeetLink" runat="server"
                    ControlToValidate="txtMeetingLink"
                    ErrorMessage="Meeting URL is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ScheduleGroup" />
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnSchedule" runat="server" Text="Confirm &amp; Send Invite" CssClass="header-btn" ValidationGroup="ScheduleGroup" />
        </div>
    </div>
</asp:Content>
