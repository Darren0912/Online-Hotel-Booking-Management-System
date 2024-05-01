using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Online_Hotel_Booking_Management_System
{
    public partial class Contact : System.Web.UI.Page
    {
        MembershipUser customer = Membership.GetUser();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!User.Identity.IsAuthenticated)
            {
                DisableForm();
            }
        }

        private void DisableForm()
        {
 
            string script = "document.getElementById('description').disabled = true;";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "disableTextarea", script, true);
            string script1 = "document.getElementById('help').disabled = true;";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "disableSelect", script1, true);
  
        }



        public string GenerateIssueId()
        {
            
            // Assume connection string and SQL query
            string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString; ;
            string query = "SELECT COUNT(*) FROM Issues";

            // Create a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute the query to get the count of existing issues
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int existingIssueCount = (int)command.ExecuteScalar();

                    // Increment the count
                    int newIssueCount = existingIssueCount + 1;

                    // Format the count with leading zeros
                    string formattedCount = newIssueCount.ToString();

                    // Concatenate the formatted count with the ID prefix
                    string newIssueId = "I" + formattedCount;

                    return newIssueId;
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;
                if (IsPostBack)
                {

                    string issueType = Request.Form["help"];

                    string description = Request.Form["description"];

                    Guid UserId = (Guid)customer.ProviderUserKey;
                    DateTime reportDate = DateTime.Now;

                    string strCon = ConfigurationManager.ConnectionStrings["room"].ConnectionString;
                    SqlConnection conn = new SqlConnection(strCon);


                    string query = "INSERT INTO Issues (issueID, UserId, issueType, description, reportDate) VALUES (@IssueID, @UserId, @IssueType, @Description, @ReportDate);";


                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Generate a unique issueID (replace with your logic)
                        string issueID = GenerateIssueId();

                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@IssueID", issueID);
                        cmd.Parameters.AddWithValue("@UserId", UserId);
                        cmd.Parameters.AddWithValue("@IssueType", issueType);
                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@ReportDate", reportDate);

                        // Open connection and execute query
                        conn.Open();

                        // Execute the query
                        cmd.ExecuteNonQuery();

                        // Optionally, you can use the issueID for further processing or display
                    }


                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please log in to submit the form.');", true);
            }
        }
    }
}
