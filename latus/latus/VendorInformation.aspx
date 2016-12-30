<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorInformation.aspx.cs" Inherits="latus.VendorInformation" %>

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
            <br />
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
                                        <span class="vsaq-label-text" id="text">Vendor Information</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text">Vendor Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Name
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_name" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Founded
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox1" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Headquarters Location
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox2" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Public/Private
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox3" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Number of Employees
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox4" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text">Solution Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Name
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox5" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Version
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox7" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <!-- Use Case Checklist -->
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
                                            <span class="vsaq-label-text" id="text">Business Viability</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <!-- Yes no checkbox? -->
                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Demonstrated customer base similar to new customer?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioBtn1" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="CustBaseYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="CustBaseNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are the existing customers referenceable?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="CustReferenceableYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="CustReferenceableNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="use_case">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="use_case">
                                                    Are they using this solution in production?
                                                </label>
                                                <div class="vsaq-radio-item">
                                                    <asp:RadioButtonList ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
                                                        <asp:ListItem Value="SolInProductionYes" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="SolInProductionNo" Text="No"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    If so, how big is the deployment?
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="TextBox8" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
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
