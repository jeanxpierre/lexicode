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
                                        <span class="vsaq-label-text">Vendor Information</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text">Vendor Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="VendorName">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="VendorName">
                                                    Name

                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="VendorNameTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="VendorFounded">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="VendorFounded">
                                                    Founded

                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="VendorFoundedTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="VendorHeadquarters">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="VendorHeadquarters">
                                                    Headquarters Location
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="VendorHeadquartersTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="VendorPublicPrivate">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="VendorPublicPrivate">
                                                    Public/Private
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="VendorPublicPrivateTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="VendorNumEmployees">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="VendorNumEmployees">
                                                    Number of Employees
                                               
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="VendorNumEmployeesTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>
                                    </fieldset>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text">Solution Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="SolutionName">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="SolutionName">
                                                    Name
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="SolutionNameTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="SolutionVersion">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="SolutionVersion">
                                                    Version
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="SolutionVersionTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <!-- Use Case Checklist -->
                                        <div class="vsaq-item" data-vsaq-container-for="SolutionUseCase">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="SolutionUseCase">
                                                    Use Case Matches (Click all that apply)
                                                </label>
                                                <div class="vsaq-checkbox-item">
                                                    <asp:CheckBoxList ID="SolutionUseCaseCheckBox" RepeatColumns="2" RepeatLayoput="Flow" runat="server"></asp:CheckBoxList>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="color: #FF0000; font-size: medium">
                                            <asp:Literal ID="err" runat="server"></asp:Literal>
                                        </div>
                                    </fieldset>
                                    <asp:Button ID="VendorInfoSubmitButton" Text="Submit" runat="server" OnClick="VendorInfoSubmitButton_Click" />
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
