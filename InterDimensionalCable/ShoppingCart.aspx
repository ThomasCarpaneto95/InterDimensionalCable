<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="InterDimensionalCable.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>

	<style>


		body {
			background-color: black;
			text-align: center;
		}

		.GridStyle th
		{
			background-color: #800000;
			border: none;
			text-align: center;
			font-weight: bold;
			font-size: 15px;
			padding: 4px;
			color:yellow;
		}

	</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:GridView ID="CartList" runat="server" 
        AutoGenerateColumns="false" 
        GridLines="Vertical" 
        CellPadding="4"
		AllowPaging="True" Height="214px" Width="789px" BorderStyle="Solid" BorderWidth="2px" BorderColor="Yellow" ForeColor="Yellow" HorizontalAlign="Center" CssClass="GridStyle">
    <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID" />
        <asp:BoundField DataField="Products.ProductName" HeaderText="Name" />
        <asp:BoundField DataField="Products.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}" />
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="PurchaseQuantity" runat="server" Width="30" Text="1" >
                </asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
</asp:GridView>
        <br />
        <br />
        <br />


    
    </div>
    </form>
</body>
</html>
