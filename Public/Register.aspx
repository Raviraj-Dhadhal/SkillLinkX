<%@ Page Title="Create Your Account - SkillLinkX" Language="C#" MasterPageFile="~/MasterPages/Public.Master" %>

    <script runat="server">
    protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) {
                if (hfRole.Value == "Company") {
                    Response.Redirect("~/Company/Dashboard.aspx");
                }
                else {
                    Response.Redirect("~/User/Dashboard.aspx");
                }
            }
        }
    </script>

    <asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

    <asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auth-wrapper">
            <div class="auth-box auth-box-lg">

                <div class="auth-header" style="text-align: left; margin-bottom: 20px;">
                    <h2 id="registerTitle">Create Your Account</h2>
                    <p id="registerSubtitle">Build your professional profile and discover the right opportunities.</p>
                </div>

                <!-- Role Selector Tabs (Student, Professional, Company / Recruiter) -->
                <asp:HiddenField ID="hfRole" runat="server" Value="Student" />
                <div class="role-tabs">
                    <button type="button" id="tabStudent" class="role-tab-btn active"
                        onclick="selectRole('Student', this)">Student</button>
                    <button type="button" id="tabProfessional" class="role-tab-btn"
                        onclick="selectRole('Professional', this)">Professional</button>
                    <button type="button" id="tabCompany" class="role-tab-btn" 
                        onclick="selectRole('Company', this)">Company / Recruiter</button>
                </div>

                <!-- ASP.NET Validation Summary -->
                <asp:ValidationSummary ID="valSummary" runat="server" CssClass="val-summary"
                    HeaderText="Please check the following:" />

                <!-- Row 1: Name (Candidate Full Name OR Company Name) & Email Address -->
                <div class="form-row">
                    <!-- Candidate Full Name Box -->
                    <div class="form-group" id="grpFullName">
                        <label class="form-label" for="<%= txtFullName.ClientID %>">Full Name *</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"
                            placeholder="e.g. Mahek Godvani"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                            ErrorMessage="Full Name is required." CssClass="val-error" Display="Dynamic" />
                    </div>

                    <!-- Company Name Box (Shown for Company) -->
                    <div class="form-group" id="grpCompanyName" style="display: none;">
                        <label class="form-label" for="<%= txtCompanyName.ClientID %>">Company Name *</label>
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"
                            placeholder="e.g. TechNova Solutions"></asp:TextBox>
                    </div>

                    <!-- Email Address -->
                    <div class="form-group">
                        <label class="form-label" id="lblEmail" for="<%= txtEmail.ClientID %>">Email Address *</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                            placeholder="e.g. name@email.com" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email Address is required." CssClass="val-error" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                            ErrorMessage="Please enter a valid email format." CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <!-- Row 2: Phone Number & Password -->
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label" for="<%= txtPhone.ClientID %>">Phone Number</label>
                        <div class="input-addon-group">
                            <span class="input-addon">+91</span>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="98765 43210">
                            </asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="<%= txtPassword.ClientID %>">Password *</label>
                        <div class="password-toggle-group">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"
                                placeholder="Write your pass"></asp:TextBox>
                            <button type="button" class="toggle-password-btn"
                                onclick="togglePasswordVisibility('<%= txtPassword.ClientID %>', this)"
                                aria-label="Toggle password visibility">
                                <i class="fa-regular fa-eye"></i>
                            </button>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required." CssClass="val-error" Display="Dynamic" />
                    </div>
                </div>

                <!-- Row 3: City & State -->
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label" for="<%= txtCity.ClientID %>">City</label>
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Mumbai">
                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="<%= ddlState.ClientID %>">State</label>
                        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Maharashtra" Selected="True">Maharashtra</asp:ListItem>
                            <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                            <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                            <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                            <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                            <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                            <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                            <asp:ListItem Value="West Bengal">West Bengal</asp:ListItem>
                            <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <!-- ========================================== -->
                <!-- CANDIDATE SPECIFIC FIELDS (College, Grad Year, Skills) -->
                <!-- ========================================== -->
                <div id="candidateFields">
                    <!-- Row 4: College / University & Graduation Year -->
                    <div class="form-row">
                        <div class="form-group">
                            <label class="form-label" for="<%= txtCollege.ClientID %>">College / University</label>
                            <asp:TextBox ID="txtCollege" runat="server" CssClass="form-control" placeholder="IIT Bombay">
                            </asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="<%= ddlGradYear.ClientID %>">Graduation Year</label>
                            <asp:DropDownList ID="ddlGradYear" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">Select Year</asp:ListItem>
                                <asp:ListItem Value="2028">2028</asp:ListItem>
                                <asp:ListItem Value="2027">2027</asp:ListItem>
                                <asp:ListItem Value="2026" Selected="True">2026</asp:ListItem>
                                <asp:ListItem Value="2025">2025</asp:ListItem>
                                <asp:ListItem Value="2024">2024</asp:ListItem>
                                <asp:ListItem Value="2023">2023</asp:ListItem>
                                <asp:ListItem Value="2022">2022</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <!-- Row 5: Key Skills Chip Box -->
                    <div class="form-group">
                        <label class="form-label">Key Skills</label>
                        <div class="skills-container-box" onclick="document.getElementById('txtSkillInput').focus()">
                            <div class="skills-chips-list" id="skillsChipsList">
                                <span class="skill-chip">React <i class="fa-solid fa-xmark"
                                        onclick="removeSkill(this)"></i></span>
                                <span class="skill-chip">Python <i class="fa-solid fa-xmark"
                                        onclick="removeSkill(this)"></i></span>
                            </div>
                            <input type="text" id="txtSkillInput" class="skills-input-field"
                                placeholder="Add a skill (e.g., Data Analysis)" onkeydown="handleSkillAdd(event)" />
                        </div>
                    </div>
                </div>

                <!-- ========================================== -->
                <!-- COMPANY SPECIFIC FIELDS (Office / Headquarters Address) -->
                <!-- ========================================== -->
                <div id="companyFields" style="display: none;">
                    <div class="form-group">
                        <label class="form-label" for="<%= txtCompanyAddress.ClientID %>">Company Address</label>
                        <asp:TextBox ID="txtCompanyAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2"
                            placeholder="e.g. 402 Tech Park, S.G. Highway, Bodakdev"></asp:TextBox>
                    </div>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn-primary-block"
                    OnClick="btnRegister_Click" />

                <!-- Footer Switch -->
                <div class="auth-footer">
                    <p>Already have an account? <a href="<%= ResolveUrl("~/Public/Login.aspx") %>">Login here</a></p>
                </div>

            </div>
        </div>

        <!-- Client-side script for Role tabs, query param handling, password eye toggle, and skill chips -->
        <script>
            function selectRole(role, btn) {
                document.getElementById('<%= hfRole.ClientID %>').value = role;
                document.querySelectorAll('.role-tab-btn').forEach(b => b.classList.remove('active'));
                if (btn) btn.classList.add('active');

                const grpFullName = document.getElementById('grpFullName');
                const grpCompanyName = document.getElementById('grpCompanyName');
                const candidateFields = document.getElementById('candidateFields');
                const companyFields = document.getElementById('companyFields');
                const btnRegister = document.getElementById('<%= btnRegister.ClientID %>');
                const lblEmail = document.getElementById('lblEmail');
                const registerTitle = document.getElementById('registerTitle');
                const registerSubtitle = document.getElementById('registerSubtitle');
                const rfvFullName = document.getElementById('<%= rfvFullName.ClientID %>');

                if (role === 'Company') {
                    // Show Company layout
                    grpFullName.style.display = 'none';
                    grpCompanyName.style.display = 'block';
                    candidateFields.style.display = 'none';
                    companyFields.style.display = 'block';
                    
                    if (lblEmail) lblEmail.innerText = 'Official Email Address *';
                    if (registerTitle) registerTitle.innerText = 'Register Your Company';
                    if (registerSubtitle) registerSubtitle.innerText = 'Connect with top talent and hire verified candidates.';
                    if (btnRegister) btnRegister.value = 'Register Company';
                    
                    // Disable FullName validator for company
                    if (typeof (ValidatorEnable) === "function" && rfvFullName) {
                        ValidatorEnable(rfvFullName, false);
                    }
                } else {
                    // Show Candidate layout (Student / Professional)
                    grpFullName.style.display = 'block';
                    grpCompanyName.style.display = 'none';
                    candidateFields.style.display = 'block';
                    companyFields.style.display = 'none';
                    
                    if (lblEmail) lblEmail.innerText = 'Email Address *';
                    if (registerTitle) registerTitle.innerText = 'Create Your Account';
                    if (registerSubtitle) registerSubtitle.innerText = 'Build your professional profile and discover the right opportunities.';
                    if (btnRegister) btnRegister.value = 'Create Account';
                    
                    // Enable FullName validator for candidates
                    if (typeof (ValidatorEnable) === "function" && rfvFullName) {
                        ValidatorEnable(rfvFullName, true);
                    }
                }
            }

            // Detect URL query parameter ?role=company on page load
            document.addEventListener("DOMContentLoaded", function () {
                const urlParams = new URLSearchParams(window.location.search);
                const roleParam = urlParams.get("role");

                if (roleParam && roleParam.toLowerCase() === "company") {
                    const companyTab = document.getElementById("tabCompany");
                    selectRole("Company", companyTab);
                }
            });

            function togglePasswordVisibility(inputId, btn) {
                const input = document.getElementById(inputId);
                const icon = btn.querySelector("i");
                if (input.type === "password") {
                    input.type = "text";
                    icon.classList.remove("fa-eye");
                    icon.classList.add("fa-eye-slash");
                } else {
                    input.type = "password";
                    icon.classList.remove("fa-eye-slash");
                    icon.classList.add("fa-eye");
                }
            }

            function handleSkillAdd(e) {
                if (e.key === 'Enter' || e.key === ',') {
                    e.preventDefault();
                    const input = document.getElementById('txtSkillInput');
                    const val = input.value.trim().replace(',', '');
                    if (val) {
                        const chip = document.createElement('span');
                        chip.className = 'skill-chip';
                        chip.innerHTML = `${val} <i class="fa-solid fa-xmark" onclick="removeSkill(this)"></i>`;
                        document.getElementById('skillsChipsList').appendChild(chip);
                        input.value = '';
                    }
                }
            }

            function removeSkill(icon) {
                icon.parentElement.remove();
            }
        </script>
    </asp:Content>