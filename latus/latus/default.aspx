<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="latus._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView
            AutoGenerateColumns="false"
            EmptyDataText="No Data"
            ID="OverwatchData"
            runat="server"
            EnableViewState="true"
            DataKeyNames="CharacterId">
            <Columns>
                <asp:BoundField HeaderText="CharacterId" DataField="CharacterId" ReadOnly="true" />
                <asp:BoundField HeaderText="CharacterName" DataField="CharacterName" ReadOnly="true" />
                <asp:BoundField HeaderText="CharacterType" DataField="CharacterType" ReadOnly="true" />
                <asp:BoundField HeaderText="CharacterColor" DataField="CharacterColor" ReadOnly="true" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
