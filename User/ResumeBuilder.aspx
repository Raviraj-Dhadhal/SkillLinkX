<%@ Page Title="Resume & Skills" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>Resume &amp; Skill Profile</h1>
            <p>Generate ATS-friendly resumes and take skill assessments to boost recruiter matching.</p>
        </div>
        <div>
            <button type="button" class="header-btn"><i class="fa-solid fa-file-pdf"></i> Download ATS Resume</button>
        </div>
    </div>

    <!-- Stepper -->
    <div class="dashboard-card">
        <div class="wizard-steps">
            <div class="wizard-step completed">
                <span class="step-number"><i class="fa-solid fa-check"></i></span>
                <span>Basic Details</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step active">
                <span class="step-number">2</span>
                <span>Experience &amp; Education</span>
            </div>
            <div class="wizard-divider"></div>
            <div class="wizard-step">
                <span class="step-number">3</span>
                <span>Skills &amp; Projects</span>
            </div>
        </div>

        <div>
            <h3 style="font-size: 16px; margin-bottom: 16px; color: #191B23;">Update Professional Resume Headline</h3>

            <div class="form-grid-2">
                <div class="form-group">
                    <label for="<%= txtHeadline.ClientID %>">Professional Headline *</label>
                    <asp:TextBox ID="txtHeadline" runat="server" Text="Software Developer | Full Stack .NET Specialist" />
                    <asp:RequiredFieldValidator ID="rfvHeadline" runat="server"
                        ControlToValidate="txtHeadline"
                        ErrorMessage="Professional headline is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="ResumeGroup" />
                </div>
                <div class="form-group">
                    <label for="<%= txtExpYears.ClientID %>">Years of Relevant Experience *</label>
                    <asp:TextBox ID="txtExpYears" runat="server" Text="1" TextMode="Number" />
                    <asp:RequiredFieldValidator ID="rfvExp" runat="server"
                        ControlToValidate="txtExpYears"
                        ErrorMessage="Experience is required."
                        Display="Dynamic"
                        CssClass="form-val-error"
                        ValidationGroup="ResumeGroup" />
                </div>
            </div>

            <div class="form-group">
                <label for="<%= txtSummary.ClientID %>">Executive Resume Summary *</label>
                <asp:TextBox ID="txtSummary" runat="server" TextMode="MultiLine" Rows="4" Text="Experienced in architecting enterprise ASP.NET Web Forms applications, C# backends, SQL Server schemas, and responsive UI components." />
                <asp:RequiredFieldValidator ID="rfvSummary" runat="server"
                    ControlToValidate="txtSummary"
                    ErrorMessage="Summary is required."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ResumeGroup" />
            </div>

            <div class="form-group">
                <label for="<%= txtTopSkills.ClientID %>">Top 5 Primary Skills (comma-separated) *</label>
                <asp:TextBox ID="txtTopSkills" runat="server" Text="C#, ASP.NET Web Forms, SQL Server, JavaScript, React" />
                <asp:RequiredFieldValidator ID="rfvSkills" runat="server"
                    ControlToValidate="txtTopSkills"
                    ErrorMessage="Please list at least one skill."
                    Display="Dynamic"
                    CssClass="form-val-error"
                    ValidationGroup="ResumeGroup" />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnSaveDraft" runat="server" Text="Save Progress" CssClass="header-btn header-btn-secondary" CausesValidation="false" />
                <asp:Button ID="btnSaveResume" runat="server" Text="Save &amp; Update ATS Resume" CssClass="header-btn" ValidationGroup="ResumeGroup" />
            </div>
        </div>
    </div>
</asp:Content>
