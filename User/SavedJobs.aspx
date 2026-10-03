<%@ Page Title="Saved Jobs & Internships" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Saved Listings</h1>
            <p>Review and apply to opportunities you bookmarked for later.</p>
        </div>
        <div>
            <a href="<%= ResolveUrl("~/User/Jobs.aspx") %>" class="header-btn header-btn-secondary">
                <i class="fa-solid fa-magnifying-glass"></i> Find More Roles
            </a>
        </div>
    </div>

    <!-- Saved Listings Cards -->
    <div class="job-card-list">
        <!-- Saved 1 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon">TN</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <h4>Senior Full Stack .NET Engineer</h4>
                        <span class="badge-ai-match">96% AI Match</span>
                    </div>
                    <div class="company-name">TechNova Solutions &middot; Bengaluru (Hybrid)</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-briefcase"></i> Full-Time</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;12 - &#8377;18 LPA</span>
                        <span><i class="fa-regular fa-clock"></i> Saved on Oct 11</span>
                    </div>
                    <div class="skill-tags">
                        <span class="skill-tag">C#</span>
                        <span class="skill-tag">ASP.NET</span>
                        <span class="skill-tag">SQL Server</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApplySaved1" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="#" style="color: #DC2626; font-size: 12px; text-decoration: none;"><i class="fa-solid fa-trash-can"></i> Remove</a>
            </div>
        </div>

        <!-- Saved 2 -->
        <div class="job-item-card">
            <div class="job-main-info">
                <div class="company-badge-icon" style="background-color: #EEF2FF; color: #4338CA;">CS</div>
                <div class="job-details">
                    <div style="display: flex; align-items: center; gap: 8px;">
                        <h4>Frontend UI/UX Engineer</h4>
                        <span class="badge-ai-match">91% AI Match</span>
                    </div>
                    <div class="company-name">CloudScale Systems &middot; Remote</div>
                    <div class="job-meta-row">
                        <span><i class="fa-solid fa-briefcase"></i> Full-Time</span>
                        <span><i class="fa-solid fa-indian-rupee-sign"></i> &#8377;9 - &#8377;14 LPA</span>
                        <span><i class="fa-regular fa-clock"></i> Saved on Oct 09</span>
                    </div>
                    <div class="skill-tags">
                        <span class="skill-tag">JavaScript</span>
                        <span class="skill-tag">CSS3</span>
                        <span class="skill-tag">React</span>
                    </div>
                </div>
            </div>
            <div style="display: flex; flex-direction: column; gap: 8px; align-items: flex-end;">
                <asp:Button ID="btnApplySaved2" runat="server" Text="Apply Now" CssClass="header-btn" PostBackUrl="~/User/Applications.aspx" />
                <a href="#" style="color: #DC2626; font-size: 12px; text-decoration: none;"><i class="fa-solid fa-trash-can"></i> Remove</a>
            </div>
        </div>
    </div>
</asp:Content>
