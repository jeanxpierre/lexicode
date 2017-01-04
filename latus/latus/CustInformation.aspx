<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustInformation.aspx.cs" Inherits="latus.CustInformation" %>

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
                                        <span class="vsaq-label-text">Customer Information</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text">Customer Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="CustomerName">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="CustomerName">
                                                    Customer Name
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="CustomerNameTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="CustomerIndustry">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="CustomerIndustry">
                                                    Industry
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="CustomerIndustryDropdown" Height="20px" Width="325px"></asp:DropDownList>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="CustomerHeadquarters">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="CustomerHeadquarters">
                                                    Headquarters
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="CustomerHeadquartersTextBox" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="CustomerGeography">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="CustomerGeography">
                                                    Geography
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="CustomerGeographyDropdown" Height="20px" Width="325px"></asp:DropDownList>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="CupstomerNumEmployees">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="CustomerNumEmployees">
                                                    Number of Employees
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="CustomerNumEmployeesDropdown" Height="20px" Width="325px"></asp:DropDownList>
                                            <p></p>
                                        </div>
                                        <div style="color: #FF0000; font-size: medium">
                                            <asp:Literal ID="err" runat="server"></asp:Literal>
                                        </div>
                                    </fieldset>
                                    <asp:Button ID="CustInfoSubmitButton" Text="Submit" runat="server" OnClick="CustInfoSubmitButton_Click" />
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
