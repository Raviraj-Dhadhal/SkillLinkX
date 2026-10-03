<%@ Page Title="Explore Jobs - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pub-container">
        
        <div class="section-heading" style="text-align: left; margin-bottom: 24px;">
            <h2>Explore Open Jobs</h2>
            <p>Discover opportunities tailored for your experience level and career path</p>
        </div>

        <!-- Search Bar -->
        <div class="list-filter-bar">
            <div class="search-input-box">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Search by job title, skill, or keyword..." />
            </div>
            <div class="search-input-box" style="max-width: 280px;">
                <i class="fa-solid fa-location-dot"></i>
                <input type="text" placeholder="Location or Remote" />
            </div>
        </div>

        <!-- Job Cards List -->
        <div class="job-list-card">
            <div class="job-info-block">
                <h3>Full Stack .NET Developer</h3>
                <span class="job-company-tag">TechNova Solutions &middot; Ahmedabad / Remote</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">Full-time</span>
                    <span class="meta-badge">C# / ASP.NET</span>
                    <span class="meta-badge">SQL Server</span>
                    <span class="meta-badge badge-green">&#8377; 8 - 14 LPA</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

        <div class="job-list-card">
            <div class="job-info-block">
                <h3>Frontend React & UI Engineer</h3>
                <span class="job-company-tag">Nexus Interactive &middot; Bengaluru, India</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">Full-time</span>
                    <span class="meta-badge">React</span>
                    <span class="meta-badge">TypeScript</span>
                    <span class="meta-badge badge-green">&#8377; 10 - 18 LPA</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

        <div class="job-list-card">
            <div class="job-info-block">
                <h3>Backend Python & AI Engineer</h3>
                <span class="job-company-tag">CognitiveScale &middot; Remote</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">Full-time</span>
                    <span class="meta-badge">FastAPI</span>
                    <span class="meta-badge">PyTorch / LLMs</span>
                    <span class="meta-badge badge-green">&#8377; 15 - 24 LPA</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

    </div>
</asp:Content>
