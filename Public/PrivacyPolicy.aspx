<%@ Page Title="Privacy Policy - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pub-container">
        
        <div class="info-content-card">
            <h1>Privacy Policy</h1>
            <p>Last updated: <%= DateTime.Now.ToString("MMMM dd, yyyy") %></p>

            <h2>1. Information We Collect</h2>
            <p>SkillLinkX collects information you provide directly to us when creating an account, updating your profile, applying for jobs, or communicating with hiring organizations.</p>

            <h2>2. How We Use Information</h2>
            <p>We use the information we collect to operate, improve, and secure our services, match candidates with relevant job opportunities, and facilitate communication between applicants and employers.</p>

            <h2>3. Data Protection</h2>
            <p>We implement industry-standard security protocols to ensure your personal data, credentials, and uploaded resumes remain safe and confidential.</p>
        </div>

    </div>
</asp:Content>
