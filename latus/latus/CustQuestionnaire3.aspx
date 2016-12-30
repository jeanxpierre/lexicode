<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustQuestionnaire3.aspx.cs" Inherits="latus.CustQuestionnaire3" %>

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
                                        <span class="vsaq-label-text" id="text1">Customer Questionnaire Part 3</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text2">Business Requirements</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Vendor Viability
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_name" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Environment Compatibility
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox2" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>
                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Risk Mitigation
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox3" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>
                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Business Use Case Alignment
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox5" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                         <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Total Cost of Ownership (TCO)
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox6" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text3">Security DNA</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                         <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    How do you currently measure your security? (Check all that apply)
                                                </label>
                                                <div class="vsaq-checkbox-item">
                                                    <asp:CheckBoxList ID="checkboxlist1" RepeatColumns="5" RepeatLayoput="Flow" runat="server">
                                                        <asp:ListItem Value="SecurityRoundtables" Text="Security Roundtables"></asp:ListItem>
                                                        <asp:ListItem Value="VulnAssessments" Text="Vulnerability Assessments"></asp:ListItem>
                                                        <asp:ListItem Value="ProcMaturityAssessments" Text="Process Maturity Assessments"></asp:ListItem>
                                                        <asp:ListItem Value="CompAssessments" Text="Compromise Assessments"></asp:ListItem>
                                                        <asp:ListItem Value="EntperpriseRiskAssessment" Text="Enterprise Risk Assesssment"></asp:ListItem>
                                                        <asp:ListItem Value="PenTest" Text="Penetration Test"></asp:ListItem>
                                                        <asp:ListItem Value="RedTeamTest" Text="Red Team Testing (Internal)"></asp:ListItem>
                                                        <asp:ListItem Value="GRCDash" Text="Governance/Risk/Compliance Dashboard"></asp:ListItem>
                                                        <asp:ListItem Value="CertAudits" Text="Certification Audits (SOC2, ISO27001, HITRUST)"></asp:ListItem>
                                                        <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>
                                    <asp:Button ID="BtnQuest1" Text="Submit" runat="server" OnClick="BtnQuest1_Click"  />
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
