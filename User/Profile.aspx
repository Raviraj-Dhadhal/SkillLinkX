<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Candidate Profile Banner -->
    <div class="profile-banner-card">
        <div class="profile-brand-box">
            <div class="profile-avatar-box">RD</div>
            <div>
                <h2>Raviraj Dhadhal</h2>
                <p style="font-size: 14px; color: #434654; font-weight: 500; margin-top: 2px;">Software Developer &amp; .NET Specialist</p>
                <div class="profile-meta-tags">
                    <span><i class="fa-solid fa-location-dot"></i> Ahmedabad, Gujarat</span>
                    <span><i class="fa-solid fa-graduation-cap"></i> B.Tech CSE (2026)</span>
                    <span><i class="fa-solid fa-briefcase"></i> Open to Work</span>
                </div>
            </div>
        </div>
        <div class="form-actions" style="margin-top: 0; padding-top: 0; border: none;">
            <a href="<%= ResolveUrl("~/User/Settings.aspx") %>" class="header-btn header-btn-secondary"><i class="fa-solid fa-pen"></i> Edit Profile</a>
            <a href="<%= ResolveUrl("~/User/ResumeBuilder.aspx") %>" class="header-btn"><i class="fa-solid fa-file-arrow-down"></i> Resume</a>
        </div>
    </div>

    <!-- 2-Column Profile Grid -->
    <div class="dashboard-grid-2">
        <div>
            <!-- About / Summary -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>About Me</h3>
                <p style="color: #434654; line-height: 24px; font-size: 14px;">
                    Passionate software engineering student with expertise in ASP.NET Web Forms, C#, React, and SQL Server. Experienced in architecting secure, scalable enterprise web applications, building RESTful APIs, and implementing clean modern UI design systems.
                </p>
            </div>

            <!-- Work Experience -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>Experience</h3>
                <div style="display: flex; gap: 14px; margin-top: 14px; padding-bottom: 14px; border-bottom: 1px solid #E7EAF0;">
                    <div class="company-badge-icon">SL</div>
                    <div>
                        <h4 style="font-size: 14.5px; color: #191B23;">Full Stack .NET Developer Intern</h4>
                        <p style="font-size: 13px; color: #0052CC; font-weight: 600;">SkillLinkX &middot; Ahmedabad</p>
                        <span style="font-size: 12px; color: #64748B;">Jun 2025 - Present (10 mos)</span>
                        <p style="font-size: 13.5px; color: #434654; margin-top: 6px; line-height: 20px;">
                            Engineered core recruitment and candidate portal modules, implemented multi-role master layouts, and optimized database queries.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Education -->
            <div class="dashboard-card">
                <h3>Education</h3>
                <div style="display: flex; gap: 14px; margin-top: 14px;">
                    <div class="company-badge-icon" style="background-color: #FEF3C7; color: #B45309;"><i class="fa-solid fa-building-columns"></i></div>
                    <div>
                        <h4 style="font-size: 14.5px; color: #191B23;">Bachelor of Technology in Computer Science</h4>
                        <p style="font-size: 13px; color: #434654;">Gujarat Technological University &middot; CGPA: 8.8 / 10</p>
                        <span style="font-size: 12px; color: #64748B;">2022 - 2026</span>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <!-- Key Skills -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>Verified Skills</h3>
                <div class="skill-tags" style="margin-top: 10px;">
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">C# (Expert)</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">ASP.NET Web Forms</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">SQL Server</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">JavaScript / ES6</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">HTML5 &amp; CSS3</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">Git &amp; GitHub</span>
                    <span class="skill-tag" style="padding: 6px 12px; font-size: 12.5px;">Entity Framework</span>
                </div>
            </div>

            <!-- Contact & Social Profiles -->
            <div class="dashboard-card">
                <h3>Connect &amp; Links</h3>
                <div style="display: flex; flex-direction: column; gap: 12px; margin-top: 14px;">
                    <div style="display: flex; align-items: center; gap: 10px; font-size: 13.5px; color: #434654;">
                        <i class="fa-regular fa-envelope" style="color: #0052CC; width: 18px;"></i>
                        <span>raviraj@skilllinkx.com</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px; font-size: 13.5px; color: #434654;">
                        <i class="fa-brands fa-github" style="color: #191B23; width: 18px;"></i>
                        <span>github.com/Raviraj-Dhadhal</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px; font-size: 13.5px; color: #434654;">
                        <i class="fa-brands fa-linkedin" style="color: #0052CC; width: 18px;"></i>
                        <span>linkedin.com/in/raviraj-dhadhal</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
