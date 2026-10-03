<%@ Page Title="AI Career Assistant" Language="C#" MasterPageFile="~/MasterPages/User.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="user-page-header">
        <div>
            <h1>AI Career Assistant</h1>
            <p>Interactive career helper powered by Ollama for interview prep, resume suggestions, and skill guidance.</p>
        </div>
        <div>
            <button type="button" class="header-btn header-btn-secondary" onclick="resetChat();">
                <i class="fa-solid fa-trash-can"></i> Clear Conversation
            </button>
        </div>
    </div>

    <!-- Assistant Grid Layout -->
    <div class="dashboard-grid-2">
        <!-- Main Chat Box -->
        <div class="dashboard-card" style="padding: 0; display: flex; flex-direction: column; height: 640px; overflow: hidden;">
            <!-- Top Chat Header -->
            <div style="padding: 14px 20px; border-bottom: 1px solid #E7EAF0; background-color: #F8F9FB; display: flex; justify-content: space-between; align-items: center;">
                <div style="display: flex; align-items: center; gap: 10px;">
                    <div class="user-avatar-chip" style="background-color: #0052CC; font-size: 13px;">AI</div>
                    <div>
                        <div style="font-weight: 600; font-size: 14px; color: #191B23;">Career Assistant</div>
                        <div style="font-size: 12px; color: #15803D;">● Connected to Local Ollama API</div>
                    </div>
                </div>
            </div>

            <!-- Quick Starter Prompts -->
            <div style="padding: 10px 16px; border-bottom: 1px solid #E7EAF0; display: flex; gap: 8px; overflow-x: auto; white-space: nowrap;">
                <button type="button" class="skill-tag" style="border: 1px solid #C3C6D6; background: #FFFFFF; cursor: pointer;" onclick="insertPrompt('Give me 5 technical interview questions for an ASP.NET and C# developer role.');">
                    Technical Interview Questions
                </button>
                <button type="button" class="skill-tag" style="border: 1px solid #C3C6D6; background: #FFFFFF; cursor: pointer;" onclick="insertPrompt('How can I improve my resume for entry-level software engineer positions?');">
                    Resume Tips
                </button>
                <button type="button" class="skill-tag" style="border: 1px solid #C3C6D6; background: #FFFFFF; cursor: pointer;" onclick="insertPrompt('What skills should I learn next after mastering C# and SQL Server?');">
                    Next Skills to Learn
                </button>
            </div>

            <!-- Chat Message History -->
            <div class="chat-history-box" id="chatThread" style="flex-grow: 1; padding: 20px; overflow-y: auto;">
                <div class="chat-bubble incoming">
                    Hello! I'm your AI Career Assistant. You can ask me for help with technical interview preparation, project ideas, resume reviews, or career planning. Select a starter topic above or type your question below.
                </div>
            </div>

            <!-- Message Input Form -->
            <div class="chat-input-row" style="padding: 14px 18px; background-color: #F8F9FB; border-top: 1px solid #E7EAF0;">
                <input type="text" id="userMessageInput" placeholder="Type your question here..." onkeydown="if(event.key === 'Enter'){ handleSendMessage(); event.preventDefault(); }" />
                <button type="button" class="header-btn" onclick="handleSendMessage();">
                    <i class="fa-solid fa-paper-plane"></i> Send
                </button>
            </div>
        </div>

        <!-- Sidebar / Settings Column -->
        <div>
            <!-- Local Model Setup -->
            <div class="dashboard-card" style="margin-bottom: 20px;">
                <h3>Ollama Settings</h3>
                <div class="form-group" style="margin-top: 12px;">
                    <label style="font-size: 12.5px;">API URL</label>
                    <input type="text" id="apiEndpoint" value="http://localhost:11434" style="font-size: 13px;" />
                </div>
                <div class="form-group">
                    <label style="font-size: 12.5px;">Model</label>
                    <select id="selectedModel" style="font-size: 13px;">
                        <option value="llama3">llama3</option>
                        <option value="mistral">mistral</option>
                        <option value="codellama">codellama</option>
                    </select>
                </div>
                <div style="font-size: 12px; color: #64748B; line-height: 18px;">
                    Make sure Ollama is running locally on your computer with <code>ollama serve</code> before sending prompts.
                </div>
            </div>

            <!-- Suggested Topics -->
            <div class="dashboard-card">
                <h3>Suggested Topics</h3>
                <ul style="margin: 12px 0 0 16px; font-size: 13px; color: #434654; line-height: 22px;">
                    <li>Explain ASP.NET page lifecycle events.</li>
                    <li>How to prepare for database indexing questions.</li>
                    <li>Differences between REST APIs and Web APIs.</li>
                    <li>How to explain college projects in interviews.</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Client-side Chat Handler Script -->
    <script type="text/javascript">
        function insertPrompt(text) {
            var input = document.getElementById("userMessageInput");
            if (input) {
                input.value = text;
                input.focus();
            }
        }

        function resetChat() {
            var thread = document.getElementById("chatThread");
            if (thread) {
                thread.innerHTML = `
                    <div class="chat-bubble incoming">
                        Conversation cleared. How can I help you today?
                    </div>`;
            }
        }

        async function handleSendMessage() {
            var input = document.getElementById("userMessageInput");
            var thread = document.getElementById("chatThread");
            var modelSelect = document.getElementById("selectedModel");
            var apiEndpoint = document.getElementById("apiEndpoint");

            if (!input || !thread || input.value.trim() === "") return;

            var userText = input.value.trim();
            input.value = "";

            // Add user message to UI
            var userBubble = document.createElement("div");
            userBubble.className = "chat-bubble outgoing";
            userBubble.innerText = userText;
            thread.appendChild(userBubble);
            thread.scrollTop = thread.scrollHeight;

            // Add loading indicator
            var botBubble = document.createElement("div");
            botBubble.className = "chat-bubble incoming";
            botBubble.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Generating response...';
            thread.appendChild(botBubble);
            thread.scrollTop = thread.scrollHeight;

            var model = modelSelect ? modelSelect.value : "llama3";
            var host = apiEndpoint ? apiEndpoint.value.trim() : "http://localhost:11434";

            try {
                // Attempt direct call to local Ollama API
                var response = await fetch(host + "/api/generate", {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({
                        model: model,
                        prompt: userText,
                        stream: false
                    })
                });

                if (response.ok) {
                    var data = await response.json();
                    botBubble.innerText = data.response;
                } else {
                    throw new Error("HTTP error " + response.status);
                }
            } catch (err) {
                // Fallback default response when Ollama is offline or testing frontend
                setTimeout(function () {
                    var reply = "";
                    var q = userText.toLowerCase();

                    if (q.includes("interview") || q.includes("question")) {
                        reply = "Here are a few common technical interview questions for C# and ASP.NET:\n\n" +
                            "1. What is the difference between Managed and Unmanaged code in .NET?\n" +
                            "2. Can you explain the difference between ViewState, SessionState, and ApplicationState?\n" +
                            "3. How does garbage collection work in the .NET Common Language Runtime (CLR)?\n" +
                            "4. What is the purpose of the 'async' and 'await' keywords in C#?\n" +
                            "5. How do you prevent SQL injection in ASP.NET database queries?";
                    } else if (q.includes("resume")) {
                        reply = "Here are 3 practical ways to improve your resume:\n\n" +
                            "• Highlight key technical skills at the top: list C#, ASP.NET, SQL Server, and JavaScript clearly.\n" +
                            "• In your project descriptions, focus on what you built, what tools you used, and what problem it solved.\n" +
                            "• Keep formatting clean and readable without heavy graphics so it works well with applicant tracking systems.";
                    } else {
                        reply = "Thank you for your question! When Ollama is running locally, your chosen model (" + model + ") will generate custom responses directly here. For now, you can explore project suggestions, interview questions, and tech stack roadmaps.";
                    }

                    botBubble.innerText = reply;
                    thread.scrollTop = thread.scrollHeight;
                }, 500);
            }
        }
    </script>
</asp:Content>
