<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="InterDimensionalCable.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Search Results: "></asp:Label>
        <asp:GridView ID="SearchResultsGridView" runat="server" DataSourceID="BookSQLCon">
            <Columns>
                <asp:ButtonField ButtonType="Button" Text="Add To Cart" />
                <asp:BoundField />
                <asp:BoundField />
                <asp:BoundField />
                <asp:BoundField />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="BookSQLCon" runat="server"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Proceed to Cart" />
        </div>
        <div>
        </div>
    </form>
</body>
</html>
