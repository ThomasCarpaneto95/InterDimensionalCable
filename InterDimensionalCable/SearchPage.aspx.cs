using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace InterDimensionalCable
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //var list = SearchResultsGridView.SelectedRow.Controls;
            // Gets the search string from the home search text box
            string searchString = (string)Session["SearchString"];

            // components for a connection string to an Access 2016 named 'SampleDB.accdb'
            string provider = "Microsoft.ACE.OLEDB.12.0";

            // the data source for Access database if it's placed on the local device 
            string dataSource = "C:\\Users\\Joshua P\\source\\repos\\InterDimensionalCable\\InterDimensionalCable\\DataAccessLayer\\A2ZBooks.accdb";

			// the data source for Access database if it's placed in the 'App_Data' folder of the 
			//  current project when run within Citrix
			//string dataSource = "\\\\itfs1\\wpcarey\\StudentHomeFolders\\kroumina\\Documents\\Visual Studio 2017\\Projects\\PracticeDataConnectivity_Sln\\PracticeDataConnectivity\\App_Data\\SampleDB.accdb";

			string dbConnectionString = string.Format("Provider={0};Data Source={1};", provider, dataSource);

            OleDbConnection myConn = new OleDbConnection(dbConnectionString);
            myConn.Open();

            //string query = "SELECT * FROM book, course, bookcoursebridge WHERE bookID = bookcoursebridge.BookID" +
            //    " AND bookcoursebridge.CourseID = course.ID";
            // the SampleDB Access database has a table named 'practice'
            string query;
            if(searchString == "CIS 235")
            {
                 query = $"SELECT DISTINCT Author, Title, Price FROM book, course, bookcoursebridge WHERE book.ID = bookcoursebridge.BookID" +
                " AND bookcoursebridge.CourseID = course.ID AND " +
                 $" CODE = '{searchString}';";
            }
            else
            {
                query = $"SELECT DISTINCT Author, Title, Price FROM book, course, bookcoursebridge WHERE book.ID = bookcoursebridge.BookID" +
                                " AND bookcoursebridge.CourseID = course.ID AND " +
                                 $" Author = '{searchString}' OR" +
                                 $" Title = '{searchString}' OR" +
                                 $" ISBN = '{searchString}' OR" +
                                 $" CODE = '{searchString}';";
            }
            
            //string query = $"SELECT * FROM book, course, bookcoursebridge WHERE bookID = bookcoursebridge.BookID AND bookcoursebridge.CourseID = course.ID";
            //OleDbCommand cmd = new OleDbCommand(query, myConn);
            //var reader = cmd.ExecuteReader();

            //lblMyData.Text = String.Empty;
            //while (reader.Read())
            //{

            //    var author = reader["Author"];
            //    var title = reader["Title"];
            //    var price = reader["Price"];


            //    Label1.Text = $"{author} {title} {isbn} {code}";
            //    Do something with the retrieved values
            //    lblMyData.Text += "Semester selected is " + semesterName.ToString()
            //    + " in the year " + yearOffered.ToString()
            //    + ".<br>";
            //}
            string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            DataTable dt = new DataTable();
            using (OleDbConnection con = new OleDbConnection(strConnString))
            {

                OleDbCommand cmd = new OleDbCommand(query);
                using (OleDbDataAdapter sda = new OleDbDataAdapter())
                {
                    cmd.Connection = con;
                    con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    SearchResultsGridView.DataSource = dt;
                    SearchResultsGridView.DataBind();
                    Session["dataSource"] = dt;
                }
            }
            //reader.Close();


            //cmd.CommandText = "Insert into practice (semester, yearoffered) values (@semester, @year);";
            //cmd.Parameters.AddWithValue("@semester", "Summer");
            //cmd.Parameters.AddWithValue("@year", "2020");
            //cmd.ExecuteNonQuery();

            myConn.Close();
        }


		// Attempt 5 (passing info from gridview into Shopping Cart using a DataTable)

		protected void AddToCart(object sender, EventArgs e)
        {
            SearchResultsGridView.DataBind();
            int counter = 0;

            DataTable dt = new DataTable();
            for (int i = 1; i < SearchResultsGridView.Columns.Count; i++)
            {
                if (i == 1)
                {
                    dt.Columns.Add("Author");
                }
                if (i == 2)
                {
                    dt.Columns.Add("Title");
                }
                if (i == 3)
                {
                    dt.Columns.Add("Price");
                }
            }
            foreach (GridViewRow row in SearchResultsGridView.Rows)
            {
                DataRow dr = dt.NewRow();
                for (int j = 1; j < SearchResultsGridView.Columns.Count; j++)
                {
                    if (j == 1)
                    {
                        dr["Author"] = row.Cells[j].Text;
                    }
                    if (j == 2)
                    {
                        dr["Title"] = row.Cells[j].Text;
                    }
                    if (j == 3)
                    {
                        dr["Price"] = row.Cells[j].Text;
                    }

                }

                dt.Rows.Add(dr);
            }

            SearchResultsGridView.DataSource = dt;
            SearchResultsGridView.DataBind();

        }

		// Proceed to cart on_click event
		// created another datatable and session (bound)

        protected void proceedToCartButton_Click(object sender, EventArgs e)
        {
            SearchResultsGridView.DataBind();

            DataTable dt = new DataTable();
            for (int i = 1; i < SearchResultsGridView.Columns.Count; i++)
            {
                if (i == 1)
                {
                    dt.Columns.Add("Author");
                }
                if (i == 2)
                {
                    dt.Columns.Add("Title");
                }
                if (i == 3)
                {
                    dt.Columns.Add("Price");
                }
            }
            foreach (GridViewRow row in SearchResultsGridView.Rows)
            {
                DataRow dr = dt.NewRow();
                for (int j = 1; j < SearchResultsGridView.Columns.Count; j++)
                {
                    if (j == 1)
                    {
                        dr["Author"] = row.Cells[j].Text;
                    }
                    if (j == 2)
                    {
                        dr["Title"] = row.Cells[j].Text;
                    }
                    if (j == 3)
                    {
                        dr["Price"] = row.Cells[j].Text;
                    }

                }

                dt.Rows.Add(dr);
                Session["EmptySetForCart"] = dt;
            }
            Response.Redirect("ShoppingCart.aspx");


								// Attempt 2 (passing info from gridview into Shopping Cart using SqlConnection)
								// Attempt 3 (created new DataTable and bound it to a new Session)

			//Get the GridView Row.
			//GridViewRow row = SearchResultsGridView.Rows[0];

			////Get the HobbyId from the DataKey property.
			//int bookID = 1;

			////Get the checked value of the CheckBoxField column.
			//bool isSelected = (row.Cells[0].Controls[1] as CheckBox).Checked;
			//string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
			//using (SqlConnection con = new SqlConnection(constr))
			//{
			//    using (SqlCommand cmd = new SqlCommand())
			//    {
			//        cmd.CommandText = "UPDATE hobbies SET [IsSelected] = @IsSelected WHERE HobbyId=@HobbyId";
			//        cmd.Connection = con;
			//        con.Open();
			//        cmd.Parameters.AddWithValue("@HobbyId", bookID);
			//        cmd.Parameters.AddWithValue("@IsSelected", isSelected);
			//        cmd.ExecuteNonQuery();
			//        con.Close();
			//    }
			//}
			//SearchResultsGridView.EditIndex = -1;
			//SearchResultsGridView.DataBind();


			//LabeltEST.Text = counter.ToString();
		}


													// Attempt 4 for shopping cart functionality


		//protected void AddToCart(object sender, EventArgs e)
		//{  
            //Session["BookName"];

			//DataTable dt = new DataTable();
			//dt.Columns.Add(new DataColumn("Author", typeof(string)));
			//dt.Columns.Add(new DataColumn("Title", typeof(string)));
			//dt.Columns.Add(new DataColumn("Price", typeof(string)));

			//foreach (GridViewRow row in SearchResultsGridView.Rows)
			//{
			//	DataRow dr = dt.NewRow();
			//	//assume that the first cell of you grid has the name
			//	dr["Author"] = row.Cells[0].Text;

			//	dr["Title"] = row.Cells[1].Text;
			//	//assume that the second cell of you grid has the age

			//	dr["Price"] = row.Cells[2].Text;
			//	//add the new row to the DataTable
			//	dt.Rows.Add(dr);
			//}


			//foreach (GridViewRow row in SearchResultsGridView.Rows)
			//{
			//	CheckBox chk = row.FindControl("chkBox") as CheckBox;
			//	if (chk.Checked)
			//	{
			//	dt.Rows.Add(row);
			//	}
			//}
		//	Session["CartList"] = dt;
		//	Response.Redirect("ShoppingCart.aspx");
		//}

		protected void SearchResultsGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = SearchResultsGridView.Rows[index];

                // Add code here to add the item to the shopping cart.
            }
        }

        protected void SearchResultsGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

		// Naviagation Buttons using the Response.Redirect method

		protected void HomeBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("Home.aspx");
		}

		protected void SearchBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("SearchPage.aspx");
		}

		protected void ShoppingCartBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("ShoppingCart.aspx");
		}

		protected void ConfirmationBtn_Click(object sender, EventArgs e)
		{
			Response.Redirect("ConfirmationPage.aspx");
		}
	}
}
