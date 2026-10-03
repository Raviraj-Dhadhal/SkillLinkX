<%@ Page Title="Platform Settings - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Platform Settings</h1>
            <p>Configure platform-wide parameters, feature toggles, security thresholds, and system governance.</p>
        </div>
        <div>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-floppy-disk"></i> Save Changes</button>
        </div>
    </div>

    <!-- General Platform Info -->
    <div class="admin-card">
        <div class="admin-card-header">
            <h2>General Platform Configuration</h2>
        </div>
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; font-size: 13.5px;">
            <div>
                <label style="display: block; font-weight: 600; color: #334155; margin-bottom: 6px;">Platform Name</label>
                <input type="text" value="SkillLinkX - Professional Hub" style="width: 100%; padding: 10px 14px; border: 1px solid #CBD5E1; border-radius: 8px;" />
            </div>
            <div>
                <label style="display: block; font-weight: 600; color: #334155; margin-bottom: 6px;">Support Email Address</label>
                <input type="text" value="support@skilllinkx.com" style="width: 100%; padding: 10px 14px; border: 1px solid #CBD5E1; border-radius: 8px;" />
            </div>
        </div>
    </div>

    <!-- Feature Toggles & System Control -->
    <div class="admin-card">
        <div class="admin-card-header">
            <h2>Platform Feature Toggles</h2>
        </div>
        <div style="display: flex; flex-direction: column; gap: 16px; font-size: 13.5px;">
            <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 12px; border-bottom: 1px solid #F1F5F9;">
                <div>
                    <div style="font-weight: 600; color: #0F172A;">Public Student Registrations</div>
                    <p style="font-size: 12.5px; color: #64748B;">Allow new students and job seekers to create accounts directly.</p>
                </div>
                <span class="badge badge-verified"><i class="fa-solid fa-toggle-on"></i> Enabled</span>
            </div>

            <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 12px; border-bottom: 1px solid #F1F5F9;">
                <div>
                    <div style="font-weight: 600; color: #0F172A;">Employer Instant Posting</div>
                    <p style="font-size: 12.5px; color: #64748B;">Allow verified companies to publish jobs without manual admin approval.</p>
                </div>
                <span class="badge badge-verified"><i class="fa-solid fa-toggle-on"></i> Enabled</span>
            </div>

            <div style="display: flex; justify-content: space-between; align-items: center; padding-bottom: 12px; border-bottom: 1px solid #F1F5F9;">
                <div>
                    <div style="font-weight: 600; color: #0F172A;">AI Career Matcher &amp; ATS Assistant</div>
                    <p style="font-size: 12.5px; color: #64748B;">Enable intelligent candidate-job matchmaking engine across portals.</p>
                </div>
                <span class="badge badge-verified"><i class="fa-solid fa-toggle-on"></i> Enabled</span>
            </div>

            <div style="display: flex; justify-content: space-between; align-items: center;">
                <div>
                    <div style="font-weight: 600; color: #0F172A;">Maintenance Mode</div>
                    <p style="font-size: 12.5px; color: #64748B;">Temporarily disable candidate access for scheduled database maintenance.</p>
                </div>
                <span class="badge badge-pending"><i class="fa-solid fa-toggle-off"></i> Disabled</span>
            </div>
        </div>
    </div>

    <!-- Security & Danger Zone Actions -->
    <div class="admin-card" style="border-color: #FECACA;">
        <div class="admin-card-header" style="border-bottom-color: #FEE2E2;">
            <h2 style="color: #991B1B;"><i class="fa-solid fa-triangle-exclamation"></i> Danger Zone &amp; Cache Management</h2>
        </div>
        <div style="display: flex; justify-content: space-between; align-items: center;">
            <div>
                <div style="font-weight: 600; color: #7F1D1D;">Flush Application Cache &amp; Re-index Telemetry</div>
                <p style="font-size: 12.5px; color: #991B1B;">Clears Redis / memory buffers across all student and company clusters.</p>
            </div>
            <button type="button" class="btn-action-sm btn-reject" style="padding: 9px 16px;"><i class="fa-solid fa-arrows-rotate"></i> Flush System Cache</button>
        </div>
    </div>
</asp:Content>
