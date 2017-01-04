<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="CustQuestionnaire2.aspx.cs" Inherits="latus.CustQuestionnaire2" %>

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
                            <asp:ScriptManager runat="server" ID="ScriptManager"></asp:ScriptManager>
                            <div class="vsaq-body" id="_vsaq_body">
                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text1">Customer Questionnaire Part 2</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel">
                                        <ContentTemplate>
                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text4">Malware-related Technology Controls</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <!-- Instruction: Identify Customer Importance 1-10 (10 = Most Important) -->

                                        <label class="vsaq-question-title">
                                            <label class="vsaq-label-text">
                                                     What malware controls are currently employed in your environment and how would you rate their effectiveness?
                                            </label>
                                        </label>

                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Hardened gold images for servers and desktops
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_1_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_1_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Next-Generation Firewall with Layer 7 Application blocking 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_2_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_2_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Anti-Spam systems with malware detection integration
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_3_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_3_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Anti-Virus agents on endpoints
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_4_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_4_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Anti-Malware agents on endpoints
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_5_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_5_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_5_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_5_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Outbound URL Filtering
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_6_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_6_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_6_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_6_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Sandbox to check attachments
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_7_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_7_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_7_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_7_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Intrusion Detection or Intrusion Prevention systems
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_8_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_8_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_8_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_8_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    SSL Inspection or SSL Proxy
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_9_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_9_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_9_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_9_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Network Access Control to enforce endpoint policies
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_10_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_10_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_10_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_10_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    USB device enforcement
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_11_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_11_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_11_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_11_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Endpoint Investigation tools
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_12_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_12_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_12_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_12_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Network/User Behavior Analysis System
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_13_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_13_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_13_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_13_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Honey pot, Honey net, or tarpit technology
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q1_14_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_14_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_14_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_14_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
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
                                                    <asp:RadioButtonList ID="Q1_15_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q1_15_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_15_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q1_15_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <!-- End Indent -->

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text2">Malware-related Proecesses</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <!-- Instruction: Identify Customer Importance 1-10 (10 = Most Important) -->

                                        <!-- Description: What malware controls are currently employed in your environment? -->
                                        <label class="vsaq-question-title">
                                            <label class="vsaq-label-text">
                                                     What malware controls are currently employed in your environment?
                                            </label>
                                        </label>
                                        
                                        <!-- Indent -->
                                        <div style="margin-left: 40px;">
                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Policy to establish malware controls and report suspected malware infections 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_1_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_1_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    User Awareness and Education
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_2_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_2_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Admin privileges removed for employee endpoints
                                                </label>
                                                <div class="vsaq-radio-item"> 
                                                    <asp:RadioButtonList ID="Q2_3_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_3_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
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
                                                    Endpoint OS and 3rd party Application Patching 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_4_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_4_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_4_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Malware Incident Response Process
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_5_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_5_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_5_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_5_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Vulnerability Scanning 
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_6_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_6_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_6_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_6_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Investigation and Forensics team to perform root-cause analysis
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_7_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_7_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_7_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_7_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text">
                                                    Malware hunting for Indicators of Attack or Compromise
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="Q2_8_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_8_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_8_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_8_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
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
                                                    <asp:RadioButtonList ID="Q2_9_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q2_9_Radio_SelectedIndexChanged">
                                                        <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        <asp:ListItem Value="ProblemUnsure" Text="Unsure"></asp:ListItem>
                                                    </asp:RadioButtonList>

                                                    <div style="margin-left: 40px;">
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_9_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                        <p></p>
                                                        <asp:TextBox Visible="false" runat="server" ID="Q2_9_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <!-- End Indent -->

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="Usability Requirements">Usability Requirements</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <!-- Question Category (3rd Nested) should be more of a title or header than a legend -->

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Tamper-Resistant
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        Do you want the agent to be resistent to unauthorized end-user disabling or configuration changes?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_1_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q3_1_Radio_SelectedIndexChanged">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                        <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_1_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine"></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_1_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Low User Impact
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        What user impacts are you trying to avoid? (CPU load, UI delay, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_2_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_2_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_2_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Easy to use (for end users)
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        What would make it easiest to use? (Invisible to users, simple options, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_3_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_3_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_3_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Easy to manage (for administrators)
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        What would make it easiest to manage? (UI, dashboard, risk prioritization, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_4_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_4_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_4_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Customer Whitelist/Blacklist 
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        Do you want the ability to permit or exclude specific apps, folders, or certificates?
                                                    </label>
                                                     <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="Q3_5_Radio" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Q3_5_Radio_SelectedIndexChanged">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>

                                                         <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_5_TextBox" MaxLength="50" Height="60px" Width="800px" Placeholder="Please describe if necessary" TextMode="MultiLine" ></asp:TextBox>
                                                            <p></p>
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_5_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Reporting
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        What report formats would be preferred? (PDF, CSV, etc.)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_6_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_6_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_6_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Web-based management console
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        Do you prefer external cloud-based or on-premise management?
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_7_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_7_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_7_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <label class="table-header" for="title">
                                                    Flexible data storage
                                            </label>
                                            <div class="vsaq-item" style="margin-left: 40px;">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" style="font-weight: normal;">
                                                        Do you prefer external cloud-based or on-premise data storage?
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_8_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_8_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_8_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Off-Coprorate network protection
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_9_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_9_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_9_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Off-line protection (no internet)
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_10_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_10_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_10_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="">
                                            <div class="vsaq-item">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text">
                                                        Other
                                                    </label>
                                                    <asp:TextBox runat="server" ID="Q3_11_TextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" AutoPostBack="True" OnTextChanged="Q3_11_TextBox_TextChanged"></asp:TextBox>
                                                    <div style="margin-left: 40px;">
                                                            <asp:TextBox Visible="false" runat="server" ID="Q3_11_WeightTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px" Placeholder="Weight"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="color: #FF0000; font-size: medium">
                                            <asp:Literal ID="err" runat="server"></asp:Literal>
                                        </div>
                                    </fieldset>
                                    <asp:Button ID="CustomerQuestionnaire2SubmitButton" Text="Submit" runat="server" OnClick="CustomerQuestionnaire2SubmitButton_Click" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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
