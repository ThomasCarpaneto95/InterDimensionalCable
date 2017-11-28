<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="InterDimensionalCable.ConfirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Page</title>

	<style>

		* {
			box-sizing: 		border-box;
		}

		
		.col-md-00  {display: 		   none; }
		.col-md-005 {width: 		  4.165%; }
		.col-md-01  {width: 		  8.33%; }
		.col-md-015 {width: 		12.495%; }
		.col-md-018 {width: 		 15.00%; }
		.col-md-02  {width: 		 16.66%; }
		.col-md-03  {width: 		 25.00%; }
		.col-md-04  {width: 		 33.33%; }
		.col-md-05  {width: 		 41.66%; }
		.col-md-06  {width: 		 50.00%; }
		.col-md-07  {width: 		 58.33%; }
		.col-md-08  {width: 		 66.66%; }
		.col-md-09  {width: 		 75.00%; }
		.col-md-10  {width: 		 83.33%; }
		.col-md-11  {width: 		 91.66%; }
		.col-md-12  {width: 		100.00%; }



		[class*="col-"] {
			float: 				left;
			border-radius: 		10px;
		}

		.row::after {
			content: 			"";
			clear: 				both;
			display: 			block;
		}

		.lim {background-color: #00ff00;}
		.yel {background-color: #ffff00;}
		.red {background-color: #800000;}
		.cya {background-color: #00ffff;}
		.mar {background-color: #800000;}
		.gre {background-color: #008000;}
		.oli {background-color: #808000;}
		.tea {background-color: #008080;}
		.wht {background-color: #ffffff;}
		.ltblk {background-color: #404040;}
		.drkblk {background-color:#000000;}

		h1 {
			color: red;
		}

		h2 {
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
			<header>
			<div class="row">
			<div class="col-md-06 drkblk"><h1>Arizona State University Bookstore*</h1></div>
			

			<div><asp:Button class="col-md-015 ltblk .button" runat="server" type="button" ID="HomeBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Home" OnClick="HomeBtn_Click"></asp:Button></div>
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="SearchBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Search" OnClick="SearchBtn_Click"></asp:Button></div>			
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ShoppingCartBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Shopping Cart" OnClick="ShoppingCartBtn_Click"></asp:Button></div>	
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ConfirmationBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Confirmation" OnClick="ConfirmationBtn_Click"></asp:Button></div>	
		

		</header>

		</div>
    <div>
        <h2>Order Confirmation</h2>
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
