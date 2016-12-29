<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustQuestionnaire1.aspx.cs" Inherits="latus.CustQuestionnaire1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Security Questions  </title>
    <link href="maia.css" rel="stylesheet" type="text/css" />
    <link href="qstyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
    </style>
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
                                        <span class="vsaq-label-text" id="text1">Customer Questionnaire Part 1</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text2">Problem and Goal Information</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you have current problems that are driving you to consider a solution? Please describe your problem(s). (Incidents, Control Gaps, Etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioBtn1" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you have an ideal solution in mind? (Describe the security controls, benefit, etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are you currently in process of acquiring a solution? (Describe current stage)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you have specific constraints? (Describe deadlines, budget, etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList4" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Use Case Matches (Click all that apply)
                                                </label>
                                                <div class="vsaq-checkbox-item">
                                                    <asp:CheckBoxList ID="checkboxlist1" RepeatColumns="2" RepeatLayoput="Flow" runat="server">
                                                        <asp:ListItem Value="AEP" Text="Advanced Endpoint Protection (AEP)"></asp:ListItem>
                                                        <asp:ListItem Value="Protect" Text="Pre-Execution Protection"></asp:ListItem>
                                                        <asp:ListItem Value="EDR" Text="Post-Execution Protection"></asp:ListItem>
                                                        <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text3">Business Drivers</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Does this solution need to meet Compliance requirements? (Describe which regulations)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList5" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Does this solution need to meet Industry security standards? (Describe which standards)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList6" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Does this solution need to meet Internal Policy requirements? (Describe)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList7" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Does this solution need to address a Business Mandate?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList8" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text4">IT Environment in Scope</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <!-- Instruction: Capture customer importance 1-10 (10 = Most Important) -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Is there specific Data in scope?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList9" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are there specific Application integrations in scope for this projects?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList10" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- The following should be indented -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need a RESTful API?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList11" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList12" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need to integrate with an Access Management system (LDAP-AD, DUO, RADIUS, Fido, OIM, etc.)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList13" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <span class="auto-style1">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                </label>
                                                </span>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList14" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need to integrate with an Access Management system (LDAP-AD, DUO, RADIUS, Fido, OIM, etc.)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList15" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need to integrate with a Sandbox?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList16" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you want to provide upstream communication of threat intel (OTX, CybOX, STIX/TAXII)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList17" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need any other Inbound integration?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList18" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you need any Outbound integration (FW/IPS)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList19" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
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
                                                    <asp:RadioButtonList ID="RadioButtonList20" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- End indent -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are Server Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList21" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Windows
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList22" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Linux
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList23" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList24" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                    <!-- End Indent -->

                                    <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are Mobile Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList25" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                    <!-- Indent -->

                                    <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    iOS
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList26" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Android
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList27" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- End Indent -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are IoT Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList28" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Windows embedded on POS systems
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList29" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Windows embedded on medical systems
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList30" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- End Indent -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are there different network environments or zones in scope? If so, please describe.
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList31" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are there specific physical facillities/locations in scope? If so, please describe.
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList32" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    AWS, Azure, other?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList33" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text5">Threat Vectors in Scope</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Web Browser
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList34" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Email
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList35" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Network propagation (Lateral)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList36" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Portable media and devices (USB)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList37" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Shared drive and services (LAN, P2P)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList38" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Remote exploits (Typically against servers)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList39" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Password guessing and brute force attacks (Typically against servers)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList40" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <asp:Button ID="BtnQuest1" Text="Submit" runat="server"  />
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
