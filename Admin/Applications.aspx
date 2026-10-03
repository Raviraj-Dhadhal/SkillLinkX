<%@ Page Title="Applications Management - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Applications Management</h1>
            <p>Monitor platform-wide recruitment funnel performance, submission pipelines, and hiring conversion rates.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-file-export"></i> Export Funnel Data</button>
        </div>
    </div>

    <!-- 6-Stage Application Funnel Pipeline -->
    <div class="admin-card" style="margin-bottom: 24px;">
        <div class="admin-card-header">
            <h2>Platform Recruitment Pipeline Funnel</h2>
            <span style="font-size: 13px; color: #64748B;">Total: 124,560 Submissions</span>
        </div>

        <div style="display: grid; grid-template-columns: repeat(6, 1fr); gap: 16px; text-align: center;">
            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">1. Applied</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #0052CC; margin-top: 6px;">124,560</h3>
                <span style="font-size: 11.5px; color: #64748B;">100% Volume</span>
            </div>

            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">2. Under Review</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #D97706; margin-top: 6px;">48,210</h3>
                <span style="font-size: 11.5px; color: #64748B;">38.7% Filtered</span>
            </div>

            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">3. Shortlisted</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #2563EB; margin-top: 6px;">21,130</h3>
                <span style="font-size: 11.5px; color: #64748B;">17.0% Qualified</span>
            </div>

            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">4. Interview</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #7C3AED; margin-top: 6px;">7,450</h3>
                <span style="font-size: 11.5px; color: #64748B;">6.0% Evaluated</span>
            </div>

            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">5. Selected / Hired</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #059669; margin-top: 6px;">2,450</h3>
                <span style="font-size: 11.5px; color: #059669; font-weight: 600;">2.0% Conversion</span>
            </div>

            <div style="background-color: #F8FAFC; border: 1px solid #E2E8F0; padding: 16px; border-radius: 10px;">
                <span style="font-size: 12px; color: #64748B; font-weight: 600; text-transform: uppercase;">6. Rejected</span>
                <h3 style="font-size: 22px; font-weight: 700; color: #DC2626; margin-top: 6px;">45,320</h3>
                <span style="font-size: 11.5px; color: #64748B;">36.4% Closed</span>
            </div>
        </div>
    </div>

    <!-- Recent Platform Submissions Table -->
    <div class="admin-card">
        <div class="admin-card-header">
            <h2>Recent Candidate Applications</h2>
            <div style="display: flex; gap: 10px;">
                <input type="text" placeholder="Search applicant or role..." style="padding: 6px 12px; border: 1px solid #CBD5E1; border-radius: 6px; font-size: 13px;" />
            </div>
        </div>

        <table class="admin-table">
            <thead>
                <tr>
                    <th>Applicant</th>
                    <th>Applied Opportunity</th>
                    <th>Company</th>
                    <th>AI Match Score</th>
                    <th>Pipeline Status</th>
                    <th>Date Applied</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Raviraj Dhadhal</div>
                        <div style="font-size: 12px; color: #64748B;">raviraj@gmail.com</div>
                    </td>
                    <td>Software Development Intern</td>
                    <td>Apex Innovations</td>
                    <td><span class="badge badge-verified"><i class="fa-solid fa-sparkles"></i> 94% Match</span></td>
                    <td><span class="badge badge-info">Interview Scheduled</span></td>
                    <td>Oct 24, 2026</td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Priya Sharma</div>
                        <div style="font-size: 12px; color: #64748B;">priya.s@nit.ac.in</div>
                    </td>
                    <td>Frontend React Engineer</td>
                    <td>Nexus Interactive</td>
                    <td><span class="badge badge-verified"><i class="fa-solid fa-sparkles"></i> 88% Match</span></td>
                    <td><span class="badge badge-pending">Under Review</span></td>
                    <td>Oct 23, 2026</td>
                </tr>
                <tr>
                    <td>
                        <div style="font-weight: 600; color: #0F172A;">Rahul Mehta</div>
                        <div style="font-size: 12px; color: #64748B;">rahul.mehta@yahoo.com</div>
                    </td>
                    <td>Full Stack .NET Developer</td>
                    <td>TechNova Solutions</td>
                    <td><span class="badge badge-verified"><i class="fa-solid fa-sparkles"></i> 91% Match</span></td>
                    <td><span class="badge badge-verified">Shortlisted</span></td>
                    <td>Oct 22, 2026</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
