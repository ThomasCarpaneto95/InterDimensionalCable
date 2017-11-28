<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="InterDimensionalCable.WebForm1" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Page</title>

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

		body {
			font-family: 		sans-serif;
			font-size: 			12px;		
			text-align: 		center;
			background-color:   #000000;
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

		<header>
			<div class="row">
			<div class="col-md-06 drkblk"><h1>Arizona State University Bookstore*</h1></div>
			

			<div><asp:Button class="col-md-015 ltblk .button" runat="server" type="button" ID="HomeBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Home" OnClick="HomeBtn_Click"></asp:Button></div>
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="SearchBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Search" OnClick="SearchBtn_Click"></asp:Button></div>			
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ShoppingCartBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Shopping Cart" OnClick="ShoppingCartBtn_Click"></asp:Button></div>	
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ConfirmationBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Confirmation" OnClick="ConfirmationBtn_Click"></asp:Button></div>	
		</div>

		</header>


        <div>
            <asp:Label ID="Label1" runat="server" Text="Search Results: "></asp:Label>
        <asp:GridView ID="SearchResultsGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="214px" Width="789px" BorderStyle="Solid" BorderWidth="2px" BorderColor="Yellow" ForeColor="Yellow" HorizontalAlign="Center" CssClass="GridStyle">
         <Columns>
             <asp:ButtonField ButtonType="Button" runat="server" Text="Add To Cart" CommandName="AddToCart"  />
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
        </div>
    </form>
</body>
</html>
