<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testpage.aspx.cs" Inherits="latus.testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:PlaceHolder runat="server" ID="dateTimeLabel"></asp:PlaceHolder>
    </div>
        <div>
            <asp:Label ID="GreetingLabel" runat="server" Visible="false" Text="Hello World!" />
        </div>
    </form>
</body>
</html>
