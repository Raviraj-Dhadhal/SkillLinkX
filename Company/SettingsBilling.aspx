<%@ Page Title="Billing & Plans - Settings" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Billing &amp; Subscription Plans</h1>
            <p>Manage recruiter subscriptions, job posting limits, and payment methods.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-building"></i> Company Information</a>
            <a href="<%= ResolveUrl("~/Company/SettingsTeam.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-users"></i> Team Members</a>
            <a href="<%= ResolveUrl("~/Company/SettingsNotifications.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-bell"></i> Notifications</a>
            <a href="<%= ResolveUrl("~/Company/SettingsSecurity.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-shield-halved"></i> Privacy &amp; Security</a>
            <a href="<%= ResolveUrl("~/Company/SettingsBilling.aspx") %>" class="settings-tab-link active"><i class="fa-solid fa-credit-card"></i> Billing &amp; Plans</a>
        </div>

        <!-- Right Settings Panel -->
        <div>
            <!-- Current Active Plan Card -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <div style="display: flex; justify-content: space-between; align-items: flex-start; flex-wrap: wrap; gap: 12px;">
                    <div>
                        <span class="badge-status badge-active">ACTIVE PLAN</span>
                        <h2 style="font-size: 20px; color: #191B23; margin-top: 8px;">Recruiter Growth Pro</h2>
                        <p style="font-size: 13px; color: #64748B;">Renews automatically on November 15, 2026</p>
                    </div>
                    <div>
                        <span style="font-size: 24px; font-weight: 700; color: #0052CC;">&#8377;9,999</span>
                        <span style="font-size: 12px; color: #64748B;"> / month</span>
                    </div>
                </div>

                <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); gap: 12px; margin-top: 18px; padding-top: 16px; border-top: 1px solid #E7EAF0;">
                    <div style="background-color: #F8F9FB; padding: 12px; border-radius: 8px;">
                        <span style="font-size: 11px; color: #64748B; font-weight: 600;">ACTIVE JOBS</span>
                        <p style="font-size: 15px; font-weight: 700; color: #191B23;">12 / 25</p>
                    </div>
                    <div style="background-color: #F8F9FB; padding: 12px; border-radius: 8px;">
                        <span style="font-size: 11px; color: #64748B; font-weight: 600;">AI MATCH CREDITS</span>
                        <p style="font-size: 15px; font-weight: 700; color: #191B23;">1,420 / 2,000</p>
                    </div>
                    <div style="background-color: #F8F9FB; padding: 12px; border-radius: 8px;">
                        <span style="font-size: 11px; color: #64748B; font-weight: 600;">TEAM SEATS</span>
                        <p style="font-size: 15px; font-weight: 700; color: #191B23;">4 / 10</p>
                    </div>
                </div>
            </div>

            <!-- Payment Method Form with ASP.NET Validation -->
            <div class="dashboard-card" style="margin-bottom: 24px;">
                <h3>Payment Method</h3>
                <p style="font-size: 13px; color: #64748B; margin-bottom: 18px;">Update your credit/debit card for automatic monthly billing.</p>

                <div class="form-group">
                    <label for="<%= txtCardName.ClientID %>">Name on Card *</label>
                    <asp:TextBox ID="txtCardName" runat="server" placeholder="e.g. TechNova Solutions Pvt Ltd" />
                    <asp:RequiredFieldValidator ID="rfvCardName" runat="server"
                        ControlToValidate="txtCardName"
                        ErrorMessage="Cardholder name is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="BillingGroup" />
                </div>

                <div class="form-group">
                    <label for="<%= txtCardNumber.ClientID %>">Card Number *</label>
                    <asp:TextBox ID="txtCardNumber" runat="server" placeholder="1234 5678 9012 3456" MaxLength="19" />
                    <asp:RequiredFieldValidator ID="rfvCardNum" runat="server"
                        ControlToValidate="txtCardNumber"
                        ErrorMessage="Card number is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="BillingGroup" />
                    <asp:RegularExpressionValidator ID="revCardNum" runat="server"
                        ControlToValidate="txtCardNumber"
                        ValidationExpression="^[\d\s-]{13,19}$"
                        ErrorMessage="Enter a valid card number."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="BillingGroup" />
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtExpiry.ClientID %>">Expiry Date (MM/YY) *</label>
                        <asp:TextBox ID="txtExpiry" runat="server" placeholder="MM/YY" MaxLength="5" />
                        <asp:RequiredFieldValidator ID="rfvExpiry" runat="server"
                            ControlToValidate="txtExpiry"
                            ErrorMessage="Expiry date is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="BillingGroup" />
                        <asp:RegularExpressionValidator ID="revExpiry" runat="server"
                            ControlToValidate="txtExpiry"
                            ValidationExpression="^(0[1-9]|1[0-2])\/?([0-9]{2})$"
                            ErrorMessage="Enter MM/YY (e.g. 08/28)."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="BillingGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtCVV.ClientID %>">CVV / Security Code *</label>
                        <asp:TextBox ID="txtCVV" runat="server" TextMode="Password" placeholder="3 or 4 digits" MaxLength="4" />
                        <asp:RequiredFieldValidator ID="rfvCVV" runat="server"
                            ControlToValidate="txtCVV"
                            ErrorMessage="CVV is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="BillingGroup" />
                        <asp:RegularExpressionValidator ID="revCVV" runat="server"
                            ControlToValidate="txtCVV"
                            ValidationExpression="^\d{3,4}$"
                            ErrorMessage="CVV must be 3 or 4 digits."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="BillingGroup" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnSavePayment" runat="server" Text="Update Payment Method" CssClass="header-btn" ValidationGroup="BillingGroup" />
                </div>
            </div>

            <!-- Invoices Table -->
            <div class="dashboard-card">
                <h3>Billing History &amp; Invoices</h3>
                <div class="table-card" style="border: 1px solid #E7EAF0; border-radius: 8px; margin-top: 14px;">
                    <table class="company-table">
                        <thead>
                            <tr>
                                <th>INVOICE #</th>
                                <th>DATE</th>
                                <th>AMOUNT</th>
                                <th>STATUS</th>
                                <th>INVOICE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-weight: 600; color: #191B23;">INV-2026-1002</td>
                                <td>Oct 15, 2026</td>
                                <td>&#8377;9,999</td>
                                <td><span class="badge-status badge-active">Paid</span></td>
                                <td><a href="#" style="color: #0052CC; font-weight: 600; font-size: 12.5px;"><i class="fa-solid fa-download"></i> PDF</a></td>
                            </tr>
                            <tr>
                                <td style="font-weight: 600; color: #191B23;">INV-2026-0901</td>
                                <td>Sep 15, 2026</td>
                                <td>&#8377;9,999</td>
                                <td><span class="badge-status badge-active">Paid</span></td>
                                <td><a href="#" style="color: #0052CC; font-weight: 600; font-size: 12.5px;"><i class="fa-solid fa-download"></i> PDF</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
