<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="InterDimensionalCable.WebForm1" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Search Results: "></asp:Label>
        <asp:GridView ID="SearchResultsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="214px" Width="789px">
         <Columns>
             <asp:TemplateField HeaderText="Add to Cart">
                 <ItemTemplate>
                     <asp:CheckBox ID="CheckBox" runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>
        <asp:TemplateField HeaderText="Author">
            <ItemTemplate>
                <%# Eval("Author") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Title">
            <ItemTemplate>
                <%# Eval("Title") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <%# Eval("Price") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>
            <asp:Button ID="proceedToCartButton" runat="server" Text="Proceed to Cart" OnClick="proceedToCartButton_Click" />
        </div>
        <div>
            <br />
            <br />
        </div>
        <asp:Label ID="LabeltEST" runat="server"></asp:Label>
    </form>
</body>
</html>
