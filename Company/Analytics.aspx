<%@ Page Title="Company Analytics" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Company Analytics</h1>
            <p>Track recruitment performance, pipeline activity, and average AI match scores.</p>
        </div>
        <div>
            <button type="button" class="header-btn header-btn-secondary"><i class="fa-solid fa-download"></i> Export Report</button>
        </div>
    </div>

    <!-- 5-Metrics Stats -->
    <div class="stats-grid-6" style="grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));">
        <div class="stat-card">
            <span class="stat-number">18,420</span>
            <span class="stat-label">Job Views</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">1,284</span>
            <span class="stat-label">Applications</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">286</span>
            <span class="stat-label">Shortlisted</span>
        </div>
        <div class="stat-card">
            <span class="stat-number">142</span>
            <span class="stat-label">Interviews</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #15803D;">48</span>
            <span class="stat-label">Hires</span>
        </div>
        <div class="stat-card">
            <span class="stat-number" style="color: #0052CC;">89%</span>
            <span class="stat-label">Avg AI Match</span>
        </div>
    </div>

    <!-- 2-Column: Applications Overview Chart (Left) & Recruitment Funnel (Right) -->
    <div class="dashboard-grid-2">
        <div class="dashboard-card">
            <h3>Applications Overview</h3>
            <div style="display: flex; align-items: flex-end; justify-content: space-between; height: 200px; padding: 20px 10px 0; border-bottom: 1px solid #E2E8F0; gap: 8px;">
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 110px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">May</span></div>
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 140px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">Jun</span></div>
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 120px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">Jul</span></div>
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 170px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">Aug</span></div>
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 190px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">Sep</span></div>
                <div style="text-align: center; flex: 1;"><div style="background-color: #0052CC; height: 180px; border-radius: 4px 4px 0 0;"></div><span style="font-size: 11px; color: #64748B;">Oct</span></div>
            </div>
        </div>

        <div class="dashboard-card">
            <h3>Recruitment Funnel</h3>
            <div style="display: flex; flex-direction: column; gap: 10px; margin-top: 14px;">
                <div style="background-color: #F8F9FB; padding: 10px 14px; border-radius: 6px; display: flex; justify-content: space-between; font-size: 13px;">
                    <span>Views</span><strong>18,420</strong>
                </div>
                <div style="background-color: #F8F9FB; padding: 10px 14px; border-radius: 6px; display: flex; justify-content: space-between; font-size: 13px;">
                    <span>Applications</span><strong>1,284</strong>
                </div>
                <div style="background-color: #F8F9FB; padding: 10px 14px; border-radius: 6px; display: flex; justify-content: space-between; font-size: 13px;">
                    <span>Shortlisted</span><strong>286</strong>
                </div>
                <div style="background-color: #F8F9FB; padding: 10px 14px; border-radius: 6px; display: flex; justify-content: space-between; font-size: 13px;">
                    <span>Interviews</span><strong>142</strong>
                </div>
                <div style="background-color: #DCFCE7; color: #15803D; padding: 10px 14px; border-radius: 6px; display: flex; justify-content: space-between; font-size: 13px;">
                    <span>Hires</span><strong>48</strong>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
