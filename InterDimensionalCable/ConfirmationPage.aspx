<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="InterDimensionalCable.ConfirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Page</title>

	<style>

		h1 {
			color: white;
		}

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
			font-size: 28px;
			padding: 4px;
			color:yellow;
		}



	    .auto-style1 {
            width: 50%;
        }



	</style>
</head>
<body>
    <form id="confirmation" runat="server">
    <div>
        <h1>Order Confirmation</h1>
    </div>

	<div>
		<asp:GridView ID="ConfirmationGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="214px" Width="789px" BorderStyle="Solid" BorderWidth="2px" BorderColor="Yellow" ForeColor="Yellow" HorizontalAlign="Center" CssClass="GridStyle">
         <Columns>
            
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

	    <br />
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="returnToShopCartButton" runat="server" OnClick="returnToShopCartButton_Click" Text="Shopping Cart" />
                </td>
                <td>
                    <asp:Button ID="confirmOrderButton" runat="server" OnClick="confirmOrderButton_Click" Text="Confirm Order" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Yellow" Text="SubTotal"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="subTotalLabel" runat="server" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Yellow" Text="Tax"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="taxLabel" runat="server" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" ForeColor="Yellow" Text="Shipping"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="shippingLabel" runat="server" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" ForeColor="Yellow" Text="Total"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="totalLabel" runat="server" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
        </table>

	    <br />
       

	</div>
    </form>
</body>
</html>
