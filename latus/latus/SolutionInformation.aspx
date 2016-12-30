<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolutionInformation.aspx.cs" Inherits="latus.SolutionInformation" %>

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
                                        <span class="vsaq-label-text" id="text1">Solution Architecture</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Description: Information gathering - weightings to be entered manually by analyst, may be captured from customers verbally if they are interested or knowledgable -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text">Management Interface</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Cloud based management?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList10" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    On-Prem Management (VM or Hardware)?
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_name" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                         <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Endpoint Agent (kernel or user space)?
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox1" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text3">Communication & Data-Flow</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    What are the dependencies (on-line, AD)?
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox2" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    What is the polling interval between agent and console?
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox3" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Where is information stored (appliance, endpoint, customer SAN)?
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox4" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text10">Solution Cpompatibility with Customer Environment</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Description: Information gathering - weightings to be entered manually by analyst, may be captured from customers verbally if they are interested or knowledgable -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text11">Desktops and Laptops</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Windows
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Mac
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
                                                        Linux
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList13" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text12">Desktops and Laptops</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Windows
                                                    </label>
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
                                                        Linux
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList15" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text13">Mobile</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        iOS
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
                                                        Android
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList17" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>


                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text14">IoT</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Windows embedded on POS systems
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
                                                        Windows embedded on medical systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList19" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text15">Application Integration</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What is the API type (RESTful, and documented)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList20" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        SIEM (syslog, CEF, LEAF, SPLUNK)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList21" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        LDAP-AD (authentication, endpoint enumeration, asset value by group membership)?
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
                                                        Customer Sandbox (if applicable)?
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
                                                        Upstream communication of threat intel? (OTX, CybOX, STIX/TAXII)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList24" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Other Inbound?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList25" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Other Outbound (FW/IPS)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList26" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text16">Facility</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        AWS, Azure, other?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList27" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text17">Solution Usability with Customer Interests </span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Description: The Atomic Elements and Weights are selectively importd form the customer questionnaire and are all editable -->

                                    <fieldset class="vsaq-item vsaq-block">

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Tamper-resistant
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
                                                        Low user impact
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList28" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                         <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Easy to use (for end users)
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
                                                        Easy to manage (for administration)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList30" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                         <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Customer whitelist/blacklist
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
                                                        Reporting
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList32" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                         <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Web-Based management console
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList33" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                         <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Flexible data storage
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
                                                        Off-Corporate network protection
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
                                                        Off-line protection (no internet)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList36" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text18">IDENTIFY (Threat Intelligence) </span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Deploy and configure an effective antip-malware solution that integrates into the corporate environment -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text19">Threat Vectors</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <!-- The Atomic Elements and Weights are selectively imported from the customer questionnaire -->

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Web Browser
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
                                                        Email
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
                                                        Network propagation (lateral)
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
                                                        Portable media and devices (USB)
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
                                                        Shared adrive and services (LAN, P2P)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList40" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Remote exploits (typically against servers)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList41" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Password guessing and brute force attacks (typically against servers)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList42" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text20">Malware File Tpyes</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Zero-Day Malware
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList43" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Executable Files
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList44" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Document Files (Office, PDF)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList45" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Zipped/Archive/Compressed Files
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList46" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Scripts
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList47" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Ransomware
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList48" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                    
                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text22">Identification Methods (Known Bad)</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        VirusTotal (known bad) or other?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList49" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Hacking techniques
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList50" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Privilege Escalation
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList51" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Memory Attacks
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList52" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Network Traffic (C&C and lateral)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList53" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Cloud based vetting (threat, rpeputation, shared community intel, IOCs, and IOAs)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList54" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Ability to accept customer or other 3rd party threat or reputation feeds?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList55" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Customer-maintained blacklist
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList56" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>
                                    
                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text23">Identification Methods (Known Good)</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Publisher's Certificate (Assumed good)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList57" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        NSRL check (known and cataloged, unvetted list)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList58" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Customer-maintained whitelist
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList59" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>p


                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text24">Proactive Methods</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        IOC Hunting
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList60" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text25">Protect</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Prevent malware from executing on the endpoints -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text26">Pre-Execution Protection</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Local Static File Analysis?
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
                                                        Sent to cloud for analysis (sandbox) - How long? What happens off-line?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList61" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Scanning for resident malware when deployed?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList62" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Default deny (whitelist policy enforcement)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList63" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Effacacy
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList64" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Supported Systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList65" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text29">Detect </span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Provide early warning detection and analysis of endpoint infections and compromise -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text30">At Execpution/During</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Behavior Analysis
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
                                                        Contained locally in vitualized environment
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList66" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Periodic system scanning for malware?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList67" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Notification (SIEM, console, or User endpoint pop-up)?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList68" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Effacacy
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList69" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Supported systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList70" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text31">Respond</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Automatic or swift manual repsonse to easily and thoroughly mitigate the threat -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text32">Remediation Actions</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Terminate Process
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
                                                        Block Process
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList71" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Quarantine File (Moved to quarantine folder)
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList72" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Network Quarantine
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList73" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        File Removal
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList74" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Supported Systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList75" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text33">Investigate</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Support incident investigation and root-cause analysis -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text34">Retrospective Analysis</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Forensic analysis to support removal
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
                                                        Sandbox details
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList76" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Supported Systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList77" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text35">Recover</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Use Case: Efficiently return to the last known good state of the endpoint prior to infection or gold image -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text36">Security Assurance</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Rollback to last known good state?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList8" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        Supported Systems
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList78" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>
                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text37">Cost</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!-- Information gathering - not a currently weighted section -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text38">Total Cost of Ownership</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What is the pricing model?
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
                                                        What level of management effort is required to efficiently use this solution?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList79" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                </div>
                                            </div>

                                    </fieldset>
                                </fieldset>

                                <fieldset class="vsaq-item vsaq-block">
                                    <legend>
                                        <span class="vsaq-label-text" id="text39">Misc. </span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <!--Information gathering - not currently a weighted section -->

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text40">Future Plans</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                                <div class="vsaq-question-title">
                                                    <label class="vsaq-label-text" for="use_case">
                                                        What are the planned improvements?
                                                    </label>
                                                    <div class="vsaq-radio-item">
                                                        <asp:RadioButtonList ID="RadioButtonList11" RepeatDirection="Horizontal" runat="server">
                                                            <asp:ListItem Value="ProblemYes" Text="Yes"></asp:ListItem>
                                                            <asp:ListItem Value="ProblemNo" Text="No"></asp:ListItem>
                                                        </asp:RadioButtonList>
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