<%@ Page Title="Company Settings" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="company-page-header">
        <div>
            <h1>Company Settings</h1>
            <p>Manage your company account, team access, and recruitment preferences.</p>
        </div>
    </div>

    <!-- Settings Layout: Left Navigation / Right Form -->
    <div class="settings-grid">
        <!-- Left Settings Tabs -->
        <div class="settings-nav">
            <a href="<%= ResolveUrl("~/Company/Settings.aspx") %>" class="settings-tab-link active"><i class="fa-regular fa-building"></i> Company Information</a>
            <a href="<%= ResolveUrl("~/Company/SettingsTeam.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-users"></i> Team Members</a>
            <a href="<%= ResolveUrl("~/Company/SettingsNotifications.aspx") %>" class="settings-tab-link"><i class="fa-regular fa-bell"></i> Notifications</a>
            <a href="<%= ResolveUrl("~/Company/SettingsSecurity.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-shield-halved"></i> Privacy &amp; Security</a>
            <a href="<%= ResolveUrl("~/Company/SettingsBilling.aspx") %>" class="settings-tab-link"><i class="fa-solid fa-credit-card"></i> Billing &amp; Plans</a>
        </div>

        <!-- Right Settings Panel -->
        <div class="dashboard-card">
            <h3>Company Information</h3>
            <div>
                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtCompanyName.ClientID %>">Company Name *</label>
                        <asp:TextBox ID="txtCompanyName" runat="server" Text="TechNova Solutions" />
                        <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server"
                            ControlToValidate="txtCompanyName"
                            ErrorMessage="Company name is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtCompanyIndustry.ClientID %>">Primary Industry *</label>
                        <asp:TextBox ID="txtCompanyIndustry" runat="server" Text="Information Technology" />
                        <asp:RequiredFieldValidator ID="rfvIndustry" runat="server"
                            ControlToValidate="txtCompanyIndustry"
                            ErrorMessage="Primary industry is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                    </div>
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= ddlCompanySize.ClientID %>">Company Size</label>
                        <asp:DropDownList ID="ddlCompanySize" runat="server">
                            <asp:ListItem Value="1-50" Text="1-50 employees" />
                            <asp:ListItem Value="51-200" Text="51-200 employees" />
                            <asp:ListItem Value="201-500" Text="201-500 employees" Selected="True" />
                            <asp:ListItem Value="500+" Text="500+ employees" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="<%= txtFoundedYear.ClientID %>">Founded Year</label>
                        <asp:TextBox ID="txtFoundedYear" runat="server" Text="2018" TextMode="Number" />
                        <asp:RangeValidator ID="rvFoundedYear" runat="server"
                            ControlToValidate="txtFoundedYear"
                            MinimumValue="1800"
                            MaximumValue="2099"
                            Type="Integer"
                            ErrorMessage="Enter a valid 4-digit year."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                    </div>
                </div>

                <div class="form-grid-2">
                    <div class="form-group">
                        <label for="<%= txtWebsite.ClientID %>">Website *</label>
                        <asp:TextBox ID="txtWebsite" runat="server" Text="https://technovasolutions.in" />
                        <asp:RequiredFieldValidator ID="rfvWebsite" runat="server"
                            ControlToValidate="txtWebsite"
                            ErrorMessage="Website URL is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                        <asp:RegularExpressionValidator ID="revWebsite" runat="server"
                            ControlToValidate="txtWebsite"
                            ValidationExpression="^(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?$"
                            ErrorMessage="Enter a valid URL (e.g. https://domain.com)."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                    </div>
                    <div class="form-group">
                        <label for="<%= txtContactEmail.ClientID %>">Contact Email *</label>
                        <asp:TextBox ID="txtContactEmail" runat="server" Text="careers@technovasolutions.in" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtContactEmail"
                            ErrorMessage="Contact email is required."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                            ControlToValidate="txtContactEmail"
                            ValidationExpression="^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$"
                            ErrorMessage="Please enter a valid email address."
                            Display="Dynamic"
                            CssClass="form-val-error"
                            ValidationGroup="SettingsCompanyGroup" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="<%= txtPrimaryLocation.ClientID %>">Primary Office Location *</label>
                    <asp:TextBox ID="txtPrimaryLocation" runat="server" Text="Titanium Business Park, SG Highway, Ahmedabad, Gujarat 380015" />
                    <asp:RequiredFieldValidator ID="rfvPrimaryLoc" runat="server"
                        ControlToValidate="txtPrimaryLocation"
                        ErrorMessage="Primary office location is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="SettingsCompanyGroup" />
                </div>

                <div class="form-actions">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="header-btn header-btn-secondary" CausesValidation="false" PostBackUrl="~/Company/Dashboard.aspx" />
                    <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="header-btn" ValidationGroup="SettingsCompanyGroup" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
