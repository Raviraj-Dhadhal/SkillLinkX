<%@ Page Title="Post a Job" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="company-page-header">
        <div>
            <h1>Post a New Job</h1>
            <p>Create a job opportunity and connect with top candidates on SkillLinkX.</p>
        </div>
    </div>

    <!-- Multi-Step Stepper -->
    <div class="dashboard-card">
        <div class="wizard-steps">
            <div class="wizard-step active">
                <span class="step-number">1</span>
                <span>Job Details</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step">
                <span class="step-number">2</span>
                <span>Requirements</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step">
                <span class="step-number">3</span>
                <span>Preview &amp; Publish</span>
            </div>
        </div>

        <div>
            <h3 style="font-size: 16px; margin-bottom: 16px; color: #191B23;">Job Information</h3>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= txtJobTitle.ClientID %>">Job Title *</label>
                    <asp:TextBox ID="txtJobTitle" runat="server" placeholder="e.g. Software Engineer" />
                    <asp:RequiredFieldValidator ID="rfvJobTitle" runat="server"
                        ControlToValidate="txtJobTitle"
                        ErrorMessage="Job title is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostJobGroup" />
                </div>
                <div class="form-group">
                    <label for="<%= ddlJobCategory.ClientID %>">Job Category *</label>
                    <asp:DropDownList ID="ddlJobCategory" runat="server">
                        <asp:ListItem Value="" Text="-- Select Category --" />
                        <asp:ListItem Value="Software" Text="Software Engineering" />
                        <asp:ListItem Value="Design" Text="UI/UX Design" />
                        <asp:ListItem Value="Marketing" Text="Marketing &amp; Growth" />
                        <asp:ListItem Value="Data" Text="Data Science &amp; AI" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server"
                        ControlToValidate="ddlJobCategory"
                        InitialValue=""
                        ErrorMessage="Please select a job category."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostJobGroup" />
                </div>
            </div>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= ddlEmploymentType.ClientID %>">Employment Type *</label>
                    <asp:DropDownList ID="ddlEmploymentType" runat="server">
                        <asp:ListItem Value="FullTime" Text="Full-time" />
                        <asp:ListItem Value="PartTime" Text="Part-time" />
                        <asp:ListItem Value="Contract" Text="Contract" />
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="<%= ddlWorkMode.ClientID %>">Work Mode *</label>
                    <asp:DropDownList ID="ddlWorkMode" runat="server">
                        <asp:ListItem Value="Hybrid" Text="Hybrid" />
                        <asp:ListItem Value="OnSite" Text="On-site" />
                        <asp:ListItem Value="Remote" Text="Remote" />
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= txtLocation.ClientID %>">Location *</label>
                    <asp:TextBox ID="txtLocation" runat="server" placeholder="e.g. Bengaluru, Karnataka" />
                    <asp:RequiredFieldValidator ID="rfvLocation" runat="server"
                        ControlToValidate="txtLocation"
                        ErrorMessage="Location is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostJobGroup" />
                </div>
                <div class="form-group">
                    <label for="<%= txtMinExperience.ClientID %>">Min Experience (Years)</label>
                    <asp:TextBox ID="txtMinExperience" runat="server" placeholder="e.g. 2" TextMode="Number" />
                    <asp:RangeValidator ID="rvExperience" runat="server"
                        ControlToValidate="txtMinExperience"
                        MinimumValue="0"
                        MaximumValue="50"
                        Type="Integer"
                        ErrorMessage="Experience must be between 0 and 50 years."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostJobGroup" />
                </div>
            </div>

            <div class="form-group">
                <label for="<%= txtDescription.ClientID %>">Job Description *</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" placeholder="Describe the responsibilities, qualifications, and role summary..." />
                <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Job description is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="PostJobGroup" />
            </div>

            <div class="form-group">
                <label for="<%= txtSkills.ClientID %>">Required Key Skills (comma separated) *</label>
                <asp:TextBox ID="txtSkills" runat="server" placeholder="e.g. C#, .NET, ASP.NET, SQL Server, React" />
                <asp:RequiredFieldValidator ID="rfvSkills" runat="server"
                    ControlToValidate="txtSkills"
                    ErrorMessage="Please list at least one required skill."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="PostJobGroup" />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnDraft" runat="server" Text="Save as Draft" CssClass="header-btn header-btn-secondary" CausesValidation="false" PostBackUrl="~/Company/ManageJobs.aspx" />
                <asp:Button ID="btnSubmit" runat="server" Text="Continue to Requirements" CssClass="header-btn" ValidationGroup="PostJobGroup" PostBackUrl="~/Company/ManageJobs.aspx" />
            </div>
        </div>
    </div>
</asp:Content>
