using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.HotelRoom
{
    public partial class Reservation : System.Web.UI.Page
    {
        MembershipUser currentUser = Membership.GetUser();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Guid currentUserID = (Guid)currentUser.ProviderUserKey;
                string checkInDate = Session["CheckInDate"] as string;
                string checkOutDate = Session["CheckOutDate"] as string;
                string numberOfGuests = Session["NumberOfGuests"] as string;
                string preferVenue = Session["PreferVenue"] as string;
                string roomType = Session["SelectedRoomType"] as string;
                int typeID = 0;
                string roomID = "";
                string roomTypeName = "";
                string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query1 = "SELECT typeID FROM roomType WHERE typeName = @TypeName";
                    using (SqlCommand command = new SqlCommand(query1, connection))
                    {
                        command.Parameters.AddWithValue("@TypeName", roomType);

                        object result = command.ExecuteScalar();

                        if (result != null)
                        {
                            typeID = Convert.ToInt32(result);

                        }
                    }
                    connection.Close();
                }

                string query = "SELECT TOP 1 r.roomID, rt.typeName FROM Room r JOIN roomType rt ON r.typeID = rt.typeID WHERE r.venue = @preferVenue AND r.typeID = @room AND r.availability='Yes' ORDER BY NEWID(); ";


                // Create a connection to the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();


                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Assuming you have parameters for venueType and roomType
                        command.Parameters.AddWithValue("@preferVenue", preferVenue);
                        command.Parameters.AddWithValue("@room", typeID);



                        // Execute the query
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Retrieve the roomID and roomTypeName
                            roomID = reader["roomID"].ToString();
                            Session["roomID"] = roomID;
                            roomTypeName = reader["typeName"].ToString();

                        }
                        else
                        {

                            Response.Redirect("LoginMainPage.aspx?showAlert=true");
                        }
                    }

                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string queryStr = "SELECT phoneNum FROM Customer WHERE userID = @userID";
                    using (SqlCommand command = new SqlCommand(queryStr, connection))
                    {
                        command.Parameters.AddWithValue("@userID", currentUserID);
                        object record = command.ExecuteScalar();

                        if (record != null)
                        {
                            phone.Text = record.ToString();
                        }
                    }
                }

                name.Text = currentUser.UserName;
                email.Text = currentUser.Email;

                lblroomID.Text = roomID;
                lblroomType.Text = roomTypeName;
                lblcheckInDate.Text = checkInDate;
                lblcheckOutDate.Text = checkOutDate;
                lblnumGuest.Text = numberOfGuests;
            }
            Session["NameReserved"] = name.Text;
            Session["EmailReserved"] = email.Text;
            Session["phoneReserved"] = phone.Text;
        }

        protected void name_TextChanged(object sender, EventArgs e)
        {
            Session["NameReserved"] = name.Text;
        }

        protected void email_TextChanged(object sender, EventArgs e)
        {
            Session["EmailReserved"] = email.Text;
        }

        protected void phone_TextChanged(object sender, EventArgs e)
        {
            Session["phoneReserved"] = phone.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HotelRoom/Payment.aspx");

        }
    }
}