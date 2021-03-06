﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewTest.aspx.cs" Inherits="latus.GridViewTest" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Editing individual GridView cells</title>  
    <link href="css/basic.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <form id="form1" runat="server">
    <h3>Editing individual GridView cells</h3>
    <a href="Default.aspx">Back to Menu</a>
    <p>
        This example uses sample data which is stored in session.
        <br />Try clicking and editing the individual GridView cells.
        <br />New rows can also be added.
    </p>
    <p>
        <asp:LinkButton runat="server" ID="AddRow" Text="Add Row" OnClick="AddRow_Click"></asp:LinkButton>
    </p>
    <div>        
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#e9ecef" AutoGenerateColumns="False" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"
            OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True">
            <Columns>                
                <asp:ButtonField Text="SingleClick" CommandName="SingleClick" Visible="False"/>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>'></asp:Label>                        
                    </ItemTemplate>               
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Task">
                    <ItemTemplate>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        <asp:TextBox ID="Description" runat="server" Text='<%# Eval("Description") %>' Width="175px" visible="false"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Assigned To">
                    <ItemTemplate>
                        <asp:Label ID="AssignedToLabel" runat="server" Text='<%# Eval("AssignedTo") %>'></asp:Label>
                        <asp:DropDownList ID="AssignedTo" runat="server" Visible="false" AutoPostBack="true" CausesValidation="true">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Andy</asp:ListItem>
                            <asp:ListItem>Betty</asp:ListItem>
                            <asp:ListItem>Conor</asp:ListItem>
                            <asp:ListItem>Declan</asp:ListItem>
                            <asp:ListItem>Eamon</asp:ListItem>
                            <asp:ListItem>Fergal</asp:ListItem>
                            <asp:ListItem>Gordon</asp:ListItem>
                            <asp:ListItem>Helen</asp:ListItem>
                            <asp:ListItem>Iris</asp:ListItem>
                            <asp:ListItem>John</asp:ListItem>
                            <asp:ListItem>Kevin</asp:ListItem>
                            <asp:ListItem>Lorna</asp:ListItem>
                            <asp:ListItem>Matt</asp:ListItem>
                            <asp:ListItem>Nora</asp:ListItem>
                            <asp:ListItem>Olive</asp:ListItem>
                            <asp:ListItem>Peter</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        <asp:DropDownList ID="Status" runat="server" Visible="false" AutoPostBack="true" CausesValidation="true">
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>In Progress</asp:ListItem>
                            <asp:ListItem>Complete</asp:ListItem>
                            <asp:ListItem>Cancelled</asp:ListItem>
                            <asp:ListItem>Suspended</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tick">
                    <ItemTemplate>
                        <asp:Label ID="TickLabel" runat="server" Text='<%# Eval("Tick") %>'></asp:Label>
                        <asp:CheckBox ID="Tick" runat="server" Visible="false" AutoPostBack="true" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle CssClass="headerStyle" ForeColor="White" />
            <RowStyle CssClass="rowStyle" />
            <AlternatingRowStyle CssClass="alternatingRowStyle" />
            <FooterStyle CssClass="footerStyle" />
            <PagerStyle CssClass="pagerStyle" ForeColor="White" />
        </asp:GridView>
        <br /><br />
        <asp:Label id="Message" runat="server" CssClass="message"></asp:Label>        
     </div>
    </form>
</body>
</html>