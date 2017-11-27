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
            
        <asp:TemplateField HeaderText="Item">
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

	</div>
    </form>
</body>
</html>
