<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="InterDimensionalCable.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>

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
    <div>

        <header>
			<div class="row">
			<div class="col-md-06 drkblk"><h1>Arizona State University Bookstore*</h1></div>
			

			<div><asp:Button class="col-md-015 ltblk .button" runat="server" type="button" ID="HomeBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Home"></asp:Button></div>
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="SearchBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Search"></asp:Button></div>			
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ShoppingCartBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Shopping Cart"></asp:Button></div>	
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ConfirmationBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Confirmation"></asp:Button></div>	
		</div>

		</header>
    
       <asp:GridView ID="CartList" runat="server" 
        AutoGenerateColumns="False" 
        GridLines="Vertical" 
        CellPadding="4"
		AllowPaging="True" Height="214px" Width="789px" BorderStyle="Solid" BorderWidth="2px" BorderColor="Yellow" ForeColor="Yellow" HorizontalAlign="Center" CssClass="GridStyle">
    <Columns>
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="PurchaseQuantity" runat="server" Width="30" Text="1" >
                </asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="ProductID" />
        <asp:BoundField DataField="Title" HeaderText="Title" />
        <asp:BoundField DataField="Price" HeaderText="Price " DataFormatString="{0:c}" />
        
    </Columns>
</asp:GridView>
        <br />
        <br />
        <br />
		<br />


    
    </div>
    </form>
</body>
</html>
