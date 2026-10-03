<%@ Page Title="Terms of Service - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pub-container">
        
        <div class="info-content-card">
            <h1>Terms of Service</h1>
            <p>Last updated: <%= DateTime.Now.ToString("MMMM dd, yyyy") %></p>

            <h2>1. Acceptance of Terms</h2>
            <p>By accessing or using SkillLinkX, you agree to be bound by these Terms of Service and all applicable laws and regulations.</p>

            <h2>2. User Accounts & Responsibilities</h2>
            <p>Users must provide accurate, current, and complete information during registration. You are responsible for maintaining the confidentiality of your account credentials.</p>

            <h2>3. Permitted Usage</h2>
            <p>SkillLinkX is intended exclusively for legitimate recruitment, job searching, internship placement, and career development activities.</p>
        </div>

    </div>
</asp:Content>
