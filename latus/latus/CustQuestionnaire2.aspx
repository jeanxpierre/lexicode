<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustQuestionnaire2.aspx.cs" Inherits="latus.CustQuestionnaire2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Security Questions  </title>
    <link href="maia.css" rel="stylesheet" type="text/css" />
    <link href="qstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="maia-header" id="maia-header" role="banner">
        <div class="maia-aux">
            <h1>
                <a href="/">Latus</a>
            </h1>
            <h2>Workbench
            </h2>
        </div>
    </div>
    <div class="maia-nav maia-complex" id="maia-nav-x" role="navigation" style="z-index: 1;">
        <div class="maia-aux">
            <ul style="z-index: 1;">
            </ul>
        </div>
    </div>
    <div id="maia-main" role="main">
        <div class="maia-article" role="article">
            <div class="maia-cols">
                <div class="maia-col-12" style="position: relative">
                    <div class="butterbar-container">
                        <div class="vsaq-invisible" id="_vsaq_butterbar"></div>
                    </div>
                </div>
                <div class="maia-col-12">
                    <div class="main-content">
                        <form id="form1" runat="server">
                            <div class="vsaq-body" id="_vsaq_body">
                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text1">Customer Questionnaire Part 2</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text4">Malware-related Technology Controls</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <!-- Instruction: Identify Customer Importance 1-10 (10 = Most Important) -->
                                        <!-- Description: What malware controls are currently employed in your environment and how would you rate their effectiveness? -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Hardened gold images for servers and desktops
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Next-Generation Firewall with Layer 7 Application blocking 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList9" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Anti-Spam systems with malware detection integration
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList12" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Anti-Virus agents on endpoints
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList13" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Anti-Malware agents on endpoints
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList14" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Outbound URL Filtering
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList15" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Sandbox to check attachments
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList16" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Intrusion Detection or Intrusion Prevention systems
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList17" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    SSL Inspection or SSL Proxy
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList18" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Network Access Control to enforce endpoint policies
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList19" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    USB device enforcement
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList20" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Endpoint Investigation tools
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList21" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Network/User Behavior Analysis System
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList22" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Honey pot, Honey net, or tarpit technology
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList23" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Other
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:TextBox runat="server" ID="TextBox11" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text2">Malware-related Proecesses</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <!-- Instruction: Identify Customer Importance 1-10 (10 = Most Important) -->
                                        <!-- Description: What malware controls are currently employed in your environment? -->
                                        
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Policy to establish malware controls and report suspected malware infections 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioBtn1" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    User Awareness and Education
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Admin privileges removed for employee endpoints
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Endpoint OS and 3rd party Application Patching 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Malware Incident Response Process
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList5" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Vulnerability Scanning 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList6" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Investigation and Forensics team to perform root-cause analysis
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList7" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Malware hunting for Indicators of Attack or Compromise
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList8" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Other
                                                </label>
                                                <asp:TextBox runat="server" ID="TextBox9" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text3">Usability Requirements</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <!-- Question Category (3rd Nested) should be more of a title or header than a legend -->
                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Tamper-Resistant
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Do you want the agent to be resistent to unauthorized end-user disabling or configuration changes?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList10" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                         <div class="">
                                            <label class="table-header" for="title">
                                                    Low User Impact
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What user impacts are you trying to avoid? (CPU load, UI delay, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="customer_headquarters" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Easy to use (for end users)
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What would make it easiest to use? (Invisible to users, simple options, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox1" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Easy to manage (for administrators)
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What would make it easiest to manage? (UI, dashboard, risk prioritization, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox2" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Customer Whitelist/Blacklist 
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Do you want the ability to permit or exclude specific apps, folders, or certificates?
                                                    </label>
                                                     <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList11" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Reporting
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What report formats would be preferred? (PDF, CSV, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox4" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Web-based management console
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Do you prefer external cloud-based or on-premise management?
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox5" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Flexible data storage
                                            </label>
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Do you prefer external cloud-based or on-premise data storage?
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox6" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Off-Coprorate network protection
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox3" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Off-line protection (no internet)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox7" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Other
                                                    </label>
                                                    <asp:TextBox runat="server" ID="TextBox8" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>

                                </fieldset>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
