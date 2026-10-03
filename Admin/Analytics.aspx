<%@ Page Title="Reports & Analytics - Admin Portal" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="admin-page-header">
        <div>
            <h1>Reports &amp; Analytics</h1>
            <p>Track platform-wide recruitment metrics, placement conversion curves, and user acquisition insights.</p>
        </div>
        <div style="display: flex; gap: 10px;">
            <select style="padding: 9px 14px; border: 1px solid #CBD5E1; border-radius: 8px; font-size: 13.5px; background: #fff;">
                <option>Last 30 Days</option>
                <option>Last Quarter (Q3 2026)</option>
                <option>Year to Date (2026)</option>
            </select>
            <button type="button" class="admin-btn-primary"><i class="fa-solid fa-file-pdf"></i> Export PDF Report</button>
        </div>
    </div>

    <!-- 4 High-Level KPI Stat Cards -->
    <div class="admin-stats-grid">
        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Active Student Base</span>
                <span class="stat-value">25,480</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> +12.4% vs last month</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-users"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Monthly Placements</span>
                <span class="stat-value">1,420</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-arrow-up"></i> +18.7% vs last month</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-award"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">Avg. Time to Hire</span>
                <span class="stat-value">14 Days</span>
                <div><span class="stat-badge-trend trend-up" style="background-color: #EBF3FF; color: #0052CC;"><i class="fa-solid fa-bolt"></i> 4 days faster</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-stopwatch"></i></div>
        </div>

        <div class="admin-stat-card">
            <div class="stat-info">
                <span class="stat-label">AI Match Accuracy</span>
                <span class="stat-value">91.8%</span>
                <div><span class="stat-badge-trend trend-up"><i class="fa-solid fa-sparkles"></i> 94% interview pass rate</span></div>
            </div>
            <div class="stat-icon-circle"><i class="fa-solid fa-robot"></i></div>
        </div>
    </div>

    <!-- 2 Analytics Chart Blueprints -->
    <div class="admin-split-grid" style="margin-bottom: 24px;">
        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>Recruitment &amp; Placement Trend (2026)</h2>
                <span class="badge badge-info">Monthly Breakdown</span>
            </div>
            <div class="chart-placeholder-box" style="height: 260px;">
                <i class="fa-solid fa-chart-column" style="font-size: 38px; color: #94A3B8;"></i>
                <span style="font-weight: 600; color: #334155; margin-top: 8px;">Monthly Hires &amp; Application Volume Chart</span>
                <span style="font-size: 12.5px; color: #64748B;">Detailed data points and conversion bars rendered here</span>
            </div>
        </div>

        <div class="admin-card" style="margin-bottom: 0;">
            <div class="admin-card-header">
                <h2>Top Hiring Domains</h2>
                <span class="badge badge-info">By Job Volume</span>
            </div>
            <div style="display: flex; flex-direction: column; gap: 14px; padding-top: 10px;">
                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600; margin-bottom: 6px;">
                        <span>Full Stack &amp; Software Engineering</span>
                        <span>42%</span>
                    </div>
                    <div style="height: 8px; background-color: #F1F5F9; border-radius: 4px; overflow: hidden;">
                        <div style="width: 42%; height: 100%; background-color: #0052CC;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600; margin-bottom: 6px;">
                        <span>Data Science &amp; Artificial Intelligence</span>
                        <span>28%</span>
                    </div>
                    <div style="height: 8px; background-color: #F1F5F9; border-radius: 4px; overflow: hidden;">
                        <div style="width: 28%; height: 100%; background-color: #059669;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600; margin-bottom: 6px;">
                        <span>UI/UX &amp; Product Design</span>
                        <span>18%</span>
                    </div>
                    <div style="height: 8px; background-color: #F1F5F9; border-radius: 4px; overflow: hidden;">
                        <div style="width: 18%; height: 100%; background-color: #7C3AED;"></div>
                    </div>
                </div>

                <div>
                    <div style="display: flex; justify-content: space-between; font-size: 13px; font-weight: 600; margin-bottom: 6px;">
                        <span>Cloud Architecture &amp; DevOps</span>
                        <span>12%</span>
                    </div>
                    <div style="height: 8px; background-color: #F1F5F9; border-radius: 4px; overflow: hidden;">
                        <div style="width: 12%; height: 100%; background-color: #D97706;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
