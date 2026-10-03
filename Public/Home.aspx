<%@ Page Title="SkillLinkX - Professional Hub" Language="C#" MasterPageFile="~/MasterPages/Public.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SkillLinkX.Public.Home" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pub-container">
        
        <!-- Hero Section -->
        <section class="hero-banner">
            <span class="hero-tag"><i class="fa-solid fa-sparkles"></i> Connect. Build. Succeed.</span>
            <h1>Connecting Talent with <span>Opportunity</span></h1>
            <p>Discover top internships, career opportunities, and network with leading companies all across the globe.</p>
            <div class="hero-actions">
                <a href="<%= ResolveUrl("~/Public/Jobs.aspx") %>" class="btn-hero-primary">Find Opportunities</a>
                <a href="<%= ResolveUrl("~/Public/Register.aspx") %>" class="btn-hero-secondary">Join SkillLinkX</a>
            </div>
        </section>

        <!-- Feature Cards -->
        <div class="section-heading">
            <h2>Why Choose SkillLinkX?</h2>
            <p>Everything you need to kickstart your professional career or hire verified talent</p>
        </div>

        <div class="grid-3-col">
            <div class="feature-card">
                <div class="feature-icon"><i class="fa-solid fa-briefcase"></i></div>
                <h3>Verified Opportunities</h3>
                <p>Browse curated job and internship listings from verified employers and top tech companies.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fa-solid fa-file-lines"></i></div>
                <h3>Smart Career Tools</h3>
                <p>Build ATS-friendly resumes and leverage intelligent career assistant tools to prepare for interviews.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon"><i class="fa-solid fa-building"></i></div>
                <h3>Direct Employer Reach</h3>
                <p>Apply directly with transparent status tracking, real-time feedback, and direct hiring manager messaging.</p>
            </div>
        </div>

    </div>
</asp:Content>
