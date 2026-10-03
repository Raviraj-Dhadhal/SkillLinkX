<%@ Page Title="Post Internship" Language="C#" MasterPageFile="~/MasterPages/Company.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="company-page-header">
        <div>
            <h1>Post a New Internship</h1>
            <p>Connect with energetic students and early-career talent across top universities.</p>
        </div>
    </div>

    <!-- Multi-Step Stepper -->
    <div class="dashboard-card">
        <div class="wizard-steps">
            <div class="wizard-step active">
                <span class="step-number">1</span>
                <span>Internship Details</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step">
                <span class="step-number">2</span>
                <span>Role &amp; Perks</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step">
                <span class="step-number">3</span>
                <span>Screening &amp; Publish</span>
            </div>
        </div>

        <div>
            <h3 style="font-size: 16px; margin-bottom: 16px; color: #191B23;">Internship Information</h3>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= txtInternshipTitle.ClientID %>">Internship Role Title *</label>
                    <asp:TextBox ID="txtInternshipTitle" runat="server" placeholder="e.g. Frontend Developer Intern" />
                    <asp:RequiredFieldValidator ID="rfvInternTitle" runat="server"
                        ControlToValidate="txtInternshipTitle"
                        ErrorMessage="Internship title is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostInternGroup" />
                </div>
                <div class="form-group">
                    <label for="<%= ddlInternCategory.ClientID %>">Domain *</label>
                    <asp:DropDownList ID="ddlInternCategory" runat="server">
                        <asp:ListItem Value="" Text="-- Select Domain --" />
                        <asp:ListItem Value="Web" Text="Web Development" />
                        <asp:ListItem Value="Mobile" Text="App Development" />
                        <asp:ListItem Value="AI" Text="AI &amp; Data Science" />
                        <asp:ListItem Value="Design" Text="UI/UX Design" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvInternCat" runat="server"
                        ControlToValidate="ddlInternCategory"
                        InitialValue=""
                        ErrorMessage="Please select a domain."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostInternGroup" />
                </div>
            </div>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= ddlDuration.ClientID %>">Duration *</label>
                    <asp:DropDownList ID="ddlDuration" runat="server">
                        <asp:ListItem Value="3 Months" Text="3 Months" />
                        <asp:ListItem Value="6 Months" Text="6 Months" />
                        <asp:ListItem Value="12 Months" Text="12 Months" />
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="<%= txtStipend.ClientID %>">Monthly Stipend *</label>
                    <asp:TextBox ID="txtStipend" runat="server" placeholder="e.g. 20000" />
                    <asp:RequiredFieldValidator ID="rfvStipend" runat="server"
                        ControlToValidate="txtStipend"
                        ErrorMessage="Monthly stipend is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="PostInternGroup" />
                </div>
            </div>

            <div class="form-group">
                <label for="<%= txtInternLocation.ClientID %>">Work Mode &amp; Location *</label>
                <asp:TextBox ID="txtInternLocation" runat="server" placeholder="e.g. Remote or Ahmedabad (On-site)" />
                <asp:RequiredFieldValidator ID="rfvLocation" runat="server"
                    ControlToValidate="txtInternLocation"
                    ErrorMessage="Work mode/location is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="PostInternGroup" />
            </div>

            <div class="form-group">
                <label for="<%= txtInternDesc.ClientID %>">Responsibilities &amp; Learning Outcomes *</label>
                <asp:TextBox ID="txtInternDesc" runat="server" TextMode="MultiLine" Rows="5" placeholder="Describe projects the intern will work on, mentorship provided, and tools used..." />
                <asp:RequiredFieldValidator ID="rfvInternDesc" runat="server"
                    ControlToValidate="txtInternDesc"
                    ErrorMessage="Description is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="PostInternGroup" />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnSaveDraft" runat="server" Text="Save Draft" CssClass="header-btn header-btn-secondary" CausesValidation="false" PostBackUrl="~/Company/ManageInternships.aspx" />
                <asp:Button ID="btnContinue" runat="server" Text="Continue to Perks &amp; Screening" CssClass="header-btn" ValidationGroup="PostInternGroup" PostBackUrl="~/Company/ManageInternships.aspx" />
            </div>
        </div>
    </div>
</asp:Content>
