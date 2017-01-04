<%@ Page Language="C#"MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="CustQuestionnaire1.aspx.cs" Inherits="latus.CustQuestionnaire1" %>

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
                            <asp:ScriptManager runat="server" ID="ScriptManager"></asp:ScriptManager>
                            <div class="vsaq-body" id="_vsaq_body">
                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="CustomerQuestionnaire1">Customer Questionnaire Part 1</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                     <asp:UpdatePanel runat="server" ID="UpdatePanel">
                                        <ContentTemplate>
                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="ProblemAndGoalInfo">Problem and Goal Information</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Do you have current problems that are driving you to consider a solution? Please describe your problem(s). (Incidents, Control Gaps, Etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_1_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q1_1_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_1_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_1_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Do you have an ideal solution in mind? (Describe the security controls, benefit, etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_2_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q1_2_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_2_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_2_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are you currently in process of acquiring a solution? (Describe current stage)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_3_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q1_3_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_3_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_3_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Do you have specific constraints? (Describe deadlines, budget, etc.)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_4_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q1_4_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    
                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_4_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q1_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Use Case Matches (Click all that apply)
                                                </label>
                                                <div class="vsaq-checkbox-item">
                                                    <asp:CheckBoxList ID="UseCase_CheckBox" RepeatColumns="2" RepeatLayoput="Flow" runat="server">
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
                                            <span class="vsaq-label-text" id="BusinessDrivers">Business Drivers</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Does this solution need to meet Compliance requirements? (Describe which regulations)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_1_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q2_1_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_1_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_1_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Does this solution need to meet Industry security standards? (Describe which standards)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_2_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q2_2_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_2_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_2_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Does this solution need to meet Internal Policy requirements? (Describe)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_3_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q2_3_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_3_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_3_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Does this solution need to address a Business Mandate?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_4_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q2_4_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_4_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="ITEnvironmentInScope">IT Environment in Scope</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <!-- Instruction: Capture customer importance 1-10 (10 = Most Important) -->

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Is there specific Data in scope?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_1_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_1_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_1_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_1_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are there specific Application integrations in scope for this projects?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_2_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_2_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_2_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_2_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- The following should be indented -->
                                        <div style="margin-left: 40px;">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need a RESTful API?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_3_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_3_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_3_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_3_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_4_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_4_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_4_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need to integrate with an Access Management system (LDAP-AD, DUO, RADIUS, Fido, OIM, etc.)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_5_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_5_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_5_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_5_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_6_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_6_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_6_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_6_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need to integrate with an Access Management system (LDAP-AD, DUO, RADIUS, Fido, OIM, etc.)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_7_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_7_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_7_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_7_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need to integrate with a Sandbox?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_8_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_8_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_8_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_8_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you want to provide upstream communication of threat intel (OTX, CybOX, STIX/TAXII)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_9_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_9_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_9_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_9_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need any other Inbound integration?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_10_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_10_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_10_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_10_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you need any Outbound integration (FW/IPS)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_11_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_11_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_11_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_11_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Other
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_12_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_12_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_12_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_12_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End indent -->

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are Server Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_13_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_13_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_13_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_13_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Windows
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_14_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_14_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_14_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_14_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Linux
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_15_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_15_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_15_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_15_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Do you require a supported metphod/format to talk to a SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_16_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_16_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_16_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_16_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Indent -->

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are Mobile Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_17_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_17_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_17_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_17_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        iOS
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_18_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_18_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_18_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_18_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Android
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_19_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_19_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_19_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_19_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Indent -->

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are IoT Endpoint Platforms in scope and if so, how many?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_20_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_20_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_20_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_20_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Windows embedded on POS systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_21_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_21_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_21_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_21_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Windows embedded on medical systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_22_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_22_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_22_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_22_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Indent -->

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are there different network environments or zones in scope? If so, please describe.
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_23_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_23_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_23_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_23_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Are there specific physical facillities/locations in scope? If so, please describe.
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q3_24_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_24_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_24_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q3_24_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        AWS, Azure, other?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_25_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q3_25_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_25_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_25_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="ThreatVectorsInScope">Threat Vectors in Scope</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Web Browser
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_1_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_1_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_1_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_1_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Email
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_2_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_2_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_2_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_2_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Network propagation (Lateral)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_3_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_3_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_3_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_3_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Portable media and devices (USB)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_4_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_4_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_4_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Shared drive and services (LAN, P2P)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_5_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_5_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_5_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_5_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Remote exploits (Typically against servers)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_6_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_6_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_6_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_6_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Password guessing and brute force attacks (Typically against servers)
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q4_7_Radio" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="Q4_7_Radio_SelectedIndexChanged" AutoPostBack="True">
                                                        <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="0" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_7_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q4_7_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <div style="color: #FF0000; font-size: medium">
                                            <asp:Literal ID="err" runat="server"></asp:Literal>
                                        </div>
                                    </fieldset>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <asp:Button ID="CustQuestionnaire1SubmitButton" Text="Submit" runat="server" OnClick="CustQuestionnaire1SubmitButton_Click" />
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
