<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkbenchTest.aspx.cs" Inherits="latus.WorkbenchTest" EnableEventValidation = "false" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Security Questions  </title>
    <link href="maia.css" rel="stylesheet" type="text/css" />
    <link href="qstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="maia-header" id="maia-header" role="banner" >
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
                                            <span class="vsaq-title" ">Workbench</span>
                                            <a name="anchor123" class="vsaq-block-link" href="anchor123">🔗</a>
                                        </legend>
                                        <div>
                                            <asp:GridView ID="WorkbenchGV" OnRowDataBound="WorkbenchGV_RowDataBound" OnRowCommand="WorkbenchGV_RowCommand" OnRowUpdating="WorkbenchGV_RowUpdating"
                                                runat="server">
                                                <Columns>
                                                    <asp:ButtonField Text="SingleClick" CommandName="SingleClick" Visible="false"/>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:Literal ID="Message" runat="server"></asp:Literal>
                                        </div>
                                        <div style="color: #FF0000; font-size: medium">
                                            <asp:Literal ID="err" runat="server"></asp:Literal>
                                        </div>
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