<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dyncontrol.aspx.cs" Inherits="latus.dyncontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Placeholder id="dynControl" runat="server" ></asp:Placeholder>
    </div>
        <div>
            <asp:Label ID="Message" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
