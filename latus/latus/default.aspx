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
            <h2>Workbench Questionnaire
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
                                        <span class="vsaq-label-text" name="text"> Customer Information</span>
                                        <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                    </legend>
                                    <fieldset class="vsaq-item vsaq-block">
                                        <legend>Customer Identity</legend>
                                        <div class="vsaq-label-text">
                                            <span class="vsaq-label-text">Customer Name</span>
                                                <asp:TextBox runat="server" ID="custname" Columns="30" MaxLength="30"></asp:TextBox>
                                        </div>
                                        <div class="vsaq-label-text">
                                            <span class="vsaq-label-text">Industry</span>
                                            <asp:DropDownList runat="server" ID="industry">
                                                <asp:ListItem Value="Aerospace">Aerospace</asp:ListItem>
                                                <asp:ListItem Value="Agriculture">Agriculture</asp:ListItem>
                                                <asp:ListItem Value="Chemical">Chemical</asp:ListItem>
                                            </asp:DropDownList>
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
