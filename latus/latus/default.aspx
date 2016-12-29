<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="latus._default" %>

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
                                        <span class="vsaq-label-text" id="text">Customer Information</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>

                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>
                                            <span class="vsaq-label-text" id="text">Customer Identity</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_name">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_name">
                                                    Customer Name
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_name" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_industry">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_industry">
                                                    Industry
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="customer_industry_dropdown" Height="20px" Width="325px">
                                                <asp:ListItem Value="Aerospace">Aerospace</asp:ListItem>
                                                <asp:ListItem Value="Agriculture">Agriculture</asp:ListItem>
                                                <asp:ListItem Value="Chemical">Chemical</asp:ListItem>
                                                <asp:ListItem Value="Computer">Computer</asp:ListItem>
                                                <asp:ListItem Value="Construction">Construction</asp:ListItem>
                                                <asp:ListItem Value="Defense">Defense</asp:ListItem>
                                                <asp:ListItem Value="Education">Education</asp:ListItem>
                                                <asp:ListItem Value="Energy">Energy</asp:ListItem>
                                                <asp:ListItem Value="Entertainment">Entertainment</asp:ListItem>
                                                <asp:ListItem Value="Financial Services">Financial Services</asp:ListItem>
                                                <asp:ListItem Value="Food">Food</asp:ListItem>
                                                <asp:ListItem Value="Health Care">Health Care</asp:ListItem>
                                                <asp:ListItem Value="Hospitality">Hospitality</asp:ListItem>
                                                <asp:ListItem Value="Information">Information</asp:ListItem>
                                                <asp:ListItem Value="Manufacturing">Manufacturing</asp:ListItem>
                                                <asp:ListItem Value="Mass Media">Mass Media</asp:ListItem>
                                                <asp:ListItem Value="Telecommunications">Telecommunications</asp:ListItem>
                                                <asp:ListItem Value="Transport">Transport</asp:ListItem>
                                                <asp:ListItem Value="Water">Water</asp:ListItem>
                                            </asp:DropDownList>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_headquarters">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_headquarters">
                                                    Headquarters
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_headquarters" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_geography">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_geography">
                                                    Geography
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="customer_geography_dropdown" Height="20px" Width="325px">
                                                <asp:ListItem Value="Asia-Pacific North (APAC)">Asia-Pacific North (APAC)</asp:ListItem>
                                                <asp:ListItem Value="Australia and New Zeakand (ANZ)">Australia and New Zeakand (ANZ)</asp:ListItem>
                                                <asp:ListItem Value="Central and Eastern Europe, Middle East and Africa (CEMA)">Central and Eastern Europe, Middle East and Africa (CEMA)</asp:ListItem>
                                                <asp:ListItem Value="Germany, Austria and Switzerland (DOS)">Germany, Austria and Switzerland (DOS)</asp:ListItem>
                                                <asp:ListItem Value="Europe, the Middle East and Africa (EMEA)">Europe, the Middle East and Africa (EMEA)</asp:ListItem>
                                                <asp:ListItem Value="North American Region, Canada, US, and Mexico (NA/NORAM)">North American Region, Canada, US, and Mexico (NA/NORAM)</asp:ListItem>
                                            </asp:DropDownList>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_number_employees">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_number_employees">
                                                    Number of Employees
                                                </label>
                                            </div>
                                            <asp:DropDownList runat="server" ID="customer_number_employees_dropdown" Height="20px" Width="325px">
                                                <asp:ListItem Value="1-49">1-49 Small Business</asp:ListItem>
                                                <asp:ListItem Value="50-249">50-249 Medium Business</asp:ListItem>
                                                <asp:ListItem Value="250-999">250-999 Medium Enterprise</asp:ListItem>
                                                <asp:ListItem Value="1,000-4,999">1,000-4,999 Large Enterprise</asp:ListItem>
                                                <asp:ListItem Value="5,000-19,999">5,000-19,999 Large Enterprise</asp:ListItem>
                                                <asp:ListItem Value="20,000+">20,000+ Large Enterprise</asp:ListItem>
                                            </asp:DropDownList>
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_number_employee_endpoints">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_number_employee_endpoints">
                                                    Number of Employee Endpoints
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_number_employee_endpoints" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_number_employee_endpoints_desc">
                                                    Please describe the estimates of OS versions in use
                                                </label>
                                            </div>
                                            <input class="vsaq-line" id="customer_number_employee_endpoints_desc" />
                                            <p></p>
                                        </div>

                                        <div class="vsaq-item" data-vsaq-container-for="customer_number_server_endpoints">
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_number_server_endpoints">
                                                    Number of Server Endpoints
                                                </label>
                                            </div>
                                            <asp:TextBox runat="server" ID="customer_number_server_endpoints" Columns="30" MaxLength="50" Height="20px" Width="325px"></asp:TextBox>
                                            <div class="vsaq-question-title">
                                                <label class="vsaq-label-text" for="customer_number_server_endpoints_desc">
                                                    Please describe the estimates of OS versions in use
                                                </label>
                                            </div>
                                            <input class="vsaq-line" id="customer_number_server_endpoints_desc" />
                                            <p></p>
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
