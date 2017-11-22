<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="InterDimensionalCable.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>

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
		.cya {background-color: #00ffff;}
		.mar {background-color: #800000;}
		.gre {background-color: #008000;}
		.oli {background-color: #808000;}
		.tea {background-color: #008080;}
		.wht {background-color: #ffffff;}
		.ltblk {background-color: #404040;}
		.drkblk {background-color:#000000;}

		body {
			font-family: 		sans-serif;
			font-size: 			12px;		
			text-align: 		center;
			background-color:   #000000;
		}

								/* ASU Header*/
		h1{
			color: red;
		}


								/*Changes Background color of button when mouse hovers over element*/
		button:hover {
			background-color: #D9853B;
		}

		.button {
			padding:			 6px; 
			margin-top:			 16px;
			border:	   2px solid gold; 
			color: 				white; 
		}






								/* Textboxes/inputs CSS */
		input[type=text] {
			text-align: 	   		 left;
			font-family: 		monospace;
			font-size: 				1.5em;
			padding:  			10px 40px;
/*			width: 				20em;
			height: 			 3em;*/
			background-color:    peachpuff;
		}

								/*Changes 'sightMap' & 'contact' heading to white text. (in the footer)*/
		h2 {
			color: gold;
			text-decoration: underline;
		}


		footer {
/*			min-width: 855px;*/
			overflow: auto;
			text-align: left;
		}

								/* Floats 'Contact' info to the left */
		footer .left { 
			float: left; 
			width: 400px; 
			color: white;
			}

								/* Floats 'Sitemap' info to the right */
		footer .sitemap {
			float: right; 
			width: 155px;
		}

		li{
			font-size: 16px;
		}

								/* Container for Footer floating elements. Allows elements to be floated on same line */
		.container {
			min-width:100px; width: auto !important; width: 100px;
			max-width: 1200px;
			margin: auto;
		}

								/* Centers the Table */
		.center {
			margin: auto;
			display: table;
			text-align: left;
			color: white;
		}

		
		p {
			color: white;
			font-size: 12px;
		}


							/*NEXT 3 CSS STATEMENTS: Inserts a white bullet point   */ 
		ul {
		    list-style: none;
		    padding: 0px;
		    margin: 0;
/*		    text-align: left;*/
		}

		li {
			margin-top: 1px;
		    padding-left: 1em; 
		    text-indent: -.7em;
/*		    display: inline-block;*/
		}

		li::before {
		    content: "• ";
		    color: white; /* or whatever color you prefer */
		}

		.auto-style4 {
			width: 163px;
		}

		.auto-style5 {
			margin-left: 0px;
		}

	</style>
</head>
<body>
	<form id="HomeForm" runat="server">
			<header>
		<div class="row">
			<div class="col-md-06 drkblk"><h1>Arizona State University Bookstore*</h1></div>
			
			

			<div><asp:Button class="col-md-015 ltblk .button" runat="server" type="button" ID="HomeBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Home"></asp:Button></div>
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="SearchBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Search"></asp:Button></div>			
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ShoppingCartBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Shopping Cart"></asp:Button></div>	
			<div><asp:Button class="col-md-015 ltblk .button" type="button" runat="server" ID="ConfirmationBtn" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Confirmation"></asp:Button></div>	
		</div>
	</header>

	<div class="row">
		<div class="col-md-00 wht"></div>
		<div>

			<div style="height: 10px; background-color: #000000"></div>

			<asp:Image ID="imgASUBookstore" runat="server" ImageUrl="~/Images/ASUBookstore.jpg" />

			

		</div>
		<div class="col-md-00 wht"></div>
	</div>

	<div style="height: 10px; background-color: #000000"></div>




	<div class="row">
		<div class="col-md-01 drkblk"><h2>&nbsp;</h2></div>
		<div>
		<form id=inputForm>
			
			<table class="center" id=inputTable>
				<tr>
					<td>

						<asp:TextBox ID="SearchTxtBox" runat="server" Width="617px"></asp:TextBox>
						
					</td>
				
				
					<td align="right" class="auto-style4">
						<asp:Button type="button" runat="server" ID="submitBTN" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Submit" BackColor="Gray" CssClass="auto-style5" OnClick="submitBTN_Click" Width="129px"></asp:Button>
					</td>		
				</tr>
			</table>

		</form>
			
		</div>


		<div class="row">
		<div class="col-md-00 wht"></div>
		<div>

			<div style="height: 10px; background-color: #000000;"></div>
<!-- 						<hr color="lightblue"> -->
			<asp:Image ID="imgSunDevils" runat="server" ImageUrl="~/Images/ASUSunDevilsRevisedV3.jpg" />


		</div>
		<div class="col-md-00 wht"></div>
	</div>

	<div style="height: 10px; background-color: #000000"></div>

	</div>

<!-- 	<hr color="red"> -->

	<footer>
		<div class="row">
			<div class="col-md-015 drkblk"><h5>&nbsp;</h5></div>
	        <div class="col-md-02 drklblk"> <h2>Contact Us</h2></div>
	        <div class="col-md-06 drkblk"><p>&nbsp;</p></div>
	        <div class="col-md-02 drkblk"><h2>Sitemap</h2></div>
	        <div class="col-md-005 drkblk"><p>&nbsp;</p></div>
	    </div>
	    <div class="row">
	    	<div class="col-md-015 drkblk"><p>&nbsp;</p></div>
	    	<div class="col-md-02 drkblk"><p>Arizona State University</p>
	    								  <p>525 East Orange Street</p>
	    								  <p>Tempe, Arizona 85287-2001</p>
	    								  <p>Phone: (480) 965-3191</p></div>

	    	<div class="col-md-06 drkblk"><p>&nbsp;</p></div>

	    	<div class="col-md-02 drkblk"><ul><nav><li><a href="https://www.asu.edu" target="_blank">ASU Home Page</a></li>
	    								  <li><a href="https://www.asu.edu/?feature=newsevents" target="_blank">News and Events</a></li>
	    								  <li><a href="https://www.asu.edu/?feature=academics" target="_blank">Academics</a></li>
	    								  <li><a href="https://www.asu.edu/?feature=athletics" target="_blank">Athletics</a></li></nav></ul></div>

	    	<div class="col-md-005 drkblk"><p>&nbsp;</p></div>
	    </div>




	    
	    
	</footer>

<asp:Label ID="Label1" runat="server" Text="Label" BackColor="White"></asp:Label>

</form>
</body>
</html>
