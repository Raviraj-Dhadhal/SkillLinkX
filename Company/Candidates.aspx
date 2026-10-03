<%@ Page Title="Candidate Profile" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Candidate Banner -->
    <div class="profile-banner-card">
        <div class="profile-brand-box">
            <div class="user-avatar-chip" style="width: 60px; height: 60px; font-size: 20px;">RD</div>
            <div>
                <h2>Raviraj Dhadhal</h2>
                <p style="font-size: 13.5px; color: #434654; margin-top: 2px;">Senior Software Developer | Full-Stack</p>
                <div class="profile-meta-tags">
                    <span><i class="fa-solid fa-location-dot"></i> Bengaluru, India</span>
                    <span><i class="fa-solid fa-briefcase"></i> 3+ Years Exp</span>
                    <span><i class="fa-solid fa-check"></i> Open to Relocate</span>
                </div>
            </div>
        </div>
        <div class="form-actions" style="margin-top: 0; padding-top: 0; border: none; gap: 10px;">
            <a href="<%= ResolveUrl("~/Company/Messages.aspx") %>" class="header-btn header-btn-secondary"><i class="fa-regular fa-comments"></i> Message</a>
            <a href="<%= ResolveUrl("~/Company/Interviews.aspx") %>" class="header-btn"><i class="fa-regular fa-calendar-check"></i> Schedule Interview</a>
        </div>
    </div>

    <!-- 2-Column Candidate Details Grid -->
    <div class="dashboard-grid-2">
        <div>
            <!-- Professional Summary -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>Professional Summary</h3>
                <p style="color: #434654; line-height: 24px; font-size: 14px;">
                    Hands-on software engineer with 3+ years of experience architecting and deploying scalable web applications using .NET Core, C#, ASP.NET, and React. Passionate about clean architecture, high-performance database design, and cloud deployments.
                </p>
            </div>

            <!-- Skills Matrix -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>Skills Matrix</h3>
                <div style="display: flex; flex-wrap: wrap; gap: 8px;">
                    <span class="badge-ai-match">C# / .NET Core</span>
                    <span class="badge-ai-match">ASP.NET Web Forms / MVC</span>
                    <span class="badge-ai-match">SQL Server</span>
                    <span class="badge-ai-match">React.js</span>
                    <span class="badge-ai-match">REST APIs</span>
                    <span class="badge-ai-match">Azure Cloud</span>
                </div>
            </div>

            <!-- Experience & Education -->
            <div class="dashboard-card">
                <h3>Experience &amp; Education</h3>
                <div style="margin-bottom: 16px; padding-bottom: 12px; border-bottom: 1px solid #F1F5F9;">
                    <h4 style="font-size: 14.5px; color: #191B23;">Software Developer &middot; Infosys</h4>
                    <p style="font-size: 12.5px; color: #64748B;">2024 - Present &middot; Bengaluru, India</p>
                </div>
                <div>
                    <h4 style="font-size: 14.5px; color: #191B23;">B.Tech Computer Science &middot; IIT Bombay</h4>
                    <p style="font-size: 12.5px; color: #64748B;">2020 - 2024 &middot; CGPA: 9.1 / 10</p>
                </div>
            </div>
        </div>

        <div>
            <!-- AI Match Analysis Box -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>AI Match Analysis</h3>
                <div style="text-align: center; padding: 16px 0;">
                    <span style="font-size: 38px; font-weight: 800; color: #0052CC;">94%</span>
                    <p style="font-size: 13px; color: #64748B; margin-top: 4px;">Overall Role Alignment</p>
                </div>
                <div style="background-color: #DCFCE7; color: #15803D; padding: 10px; border-radius: 6px; font-size: 12.5px; font-weight: 600;">
                    <i class="fa-solid fa-circle-check"></i> High match on Core .NET &amp; C#
                </div>
            </div>

            <!-- Candidate Preferences -->
            <div class="dashboard-card">
                <h3>Candidate Preferences</h3>
                <div style="display: flex; flex-direction: column; gap: 10px; font-size: 13px; color: #434654;">
                    <div><strong>Expected Salary:</strong> &#8377;12 - 15 LPA</div>
                    <div><strong>Notice Period:</strong> 15 Days</div>
                    <div><strong>Work Mode:</strong> Hybrid / Remote</div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
