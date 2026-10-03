<%@ Page Title="Explore Internships - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pub-container">
        
        <div class="section-heading" style="text-align: left; margin-bottom: 24px;">
            <h2>Explore Internships</h2>
            <p>Kickstart your career journey with industry-leading internship programs</p>
        </div>

        <!-- Search Bar -->
        <div class="list-filter-bar">
            <div class="search-input-box">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Search internships by domain, technology, or role..." />
            </div>
            <div class="search-input-box" style="max-width: 280px;">
                <i class="fa-solid fa-location-dot"></i>
                <input type="text" placeholder="Location or Remote" />
            </div>
        </div>

        <!-- Internship Cards List -->
        <div class="job-list-card">
            <div class="job-info-block">
                <h3>Software Development Intern (C# & ASP.NET)</h3>
                <span class="job-company-tag">Apex Innovations &middot; Hybrid (Ahmedabad)</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">6 Months Internship</span>
                    <span class="meta-badge">C# / WebForms / MVC</span>
                    <span class="meta-badge badge-green">&#8377; 15,000 / month</span>
                    <span class="meta-badge">PPO Available</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

        <div class="job-list-card">
            <div class="job-info-block">
                <h3>UI/UX Design Intern</h3>
                <span class="job-company-tag">DesignSphere &middot; Remote</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">3 Months Internship</span>
                    <span class="meta-badge">Figma</span>
                    <span class="meta-badge">Design Systems</span>
                    <span class="meta-badge badge-green">&#8377; 12,000 / month</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

        <div class="job-list-card">
            <div class="job-info-block">
                <h3>Data Science & AI Intern</h3>
                <span class="job-company-tag">NeuralMatrix Labs &middot; Bengaluru, India</span>
                <div class="job-meta-badges">
                    <span class="meta-badge badge-blue">6 Months Internship</span>
                    <span class="meta-badge">Python</span>
                    <span class="meta-badge">Machine Learning</span>
                    <span class="meta-badge badge-green">&#8377; 25,000 / month</span>
                </div>
            </div>
            <div>
                <a href="<%= ResolveUrl("~/Public/Login.aspx") %>" class="btn-hero-primary" style="padding: 10px 20px; font-size: 14px;">Apply Now</a>
            </div>
        </div>

    </div>
</asp:Content>
