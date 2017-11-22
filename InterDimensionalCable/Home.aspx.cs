using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace InterDimensionalCable
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void submitBTN_Click(object sender, EventArgs e)
		{
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

			string query = $"SELECT DISTINCT Author, Title, Price FROM book, course, bookcoursebridge WHERE bookID = bookcoursebridge.BookID" +
				" AND bookcoursebridge.CourseID = course.ID AND " +
				 $"Author = '*{SearchTxtBox.Text}*' OR" +
				 $" Title = '*{SearchTxtBox.Text}*' OR" +
				 $" ISBN = '*{SearchTxtBox.Text}*' OR" +
				 $" CODE = '*{SearchTxtBox.Text}*';";  // the SampleDB Access database has a table named 'practice'

			OleDbCommand cmd = new OleDbCommand(query, myConn);
			var reader = cmd.ExecuteReader();

			//lblMyData.Text = String.Empty;

			while (reader.Read())
			{

				var author = reader["Author"];
				var title = reader["Title"];
				var isbn = reader["ISBN"];
				var code = reader["CODE"];

				Label1.Text = $"{author} {title} {isbn} {code}";
				// Do something with the retrieved values
				//lblMyData.Text += "Semester selected is " + semesterName.ToString()
				//+ " in the year " + yearOffered.ToString()
				//+ ".<br>";
			}

			reader.Close();

			//cmd.CommandText = "Insert into practice (semester, yearoffered) values (@semester, @year);";
			//cmd.Parameters.AddWithValue("@semester", "Summer");
			//cmd.Parameters.AddWithValue("@year", "2020");
			//cmd.ExecuteNonQuery();

			myConn.Close();
		}
	}
}