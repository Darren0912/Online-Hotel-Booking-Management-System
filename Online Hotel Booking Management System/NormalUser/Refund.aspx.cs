using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.NormalUser
{
    public partial class Refund : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from session
                bookingID.Text = Session["CancelledReservationID"] as string;
                roomID.Text = Session["RoomID"] as string;
                roomType.Text = Session["TypeName"] as string;
                if (Session["PaymentDate"] != null)
                {
                    string paymentDateString = Session["PaymentDate"].ToString();

                    if (DateTime.TryParse(paymentDateString, out DateTime paymentDate))
                    {
                        bDate.Text = paymentDate.ToShortDateString();
                    }
                }

                if (Session["CheckInDate"] != null)
                {
                    string checkInDateString = Session["CheckInDate"].ToString();

                    if (DateTime.TryParse(checkInDateString, out DateTime checkInDate))
                    {
                        chkInDate.Text = checkInDate.ToShortDateString();
                    }
                }

                if (Session["CheckOutDate"] != null)
                {
                    string checkOutDateString = Session["CheckOutDate"].ToString();

                    if (DateTime.TryParse(checkOutDateString, out DateTime checkOutDate))
                    {
                        chkOutDate.Text = checkOutDate.ToShortDateString();
                    }
                }
                status.Text = Session["Status"] as string;
                


            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string reservationID = bookingID.Text;
            string paymentID = "";
            double paymentAmount = 0.0;
            string refundReason = DropDownList1.SelectedValue;
            
            
            string query = "SELECT paymentID, amount FROM Payment WHERE reservationID = @reservationID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                   
                    command.Parameters.AddWithValue("@reservationID", reservationID);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            paymentID = reader["paymentID"].ToString();
                            paymentAmount = Convert.ToDouble(reader["amount"]);
                        }
                    }
                }
                connection.Close();
            }
            double refundAmount = paymentAmount * 0.8;
            string refundID = GenerateRefundId();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlConnection conn = new SqlConnection(connectionString);
                connection.Open();
                string queryStr = "INSERT INTO Refund(refundID, paymentID, refundAmount, refundReason) VALUES(@refundID, @paymentID, @refundAmount, @refundReason);";
                using (SqlCommand command = new SqlCommand(queryStr, connection))
                {
                    command.Parameters.AddWithValue("@refundID", refundID);
                    command.Parameters.AddWithValue("@paymentID", paymentID);
                    command.Parameters.AddWithValue("@refundAmount", refundAmount);
                    command.Parameters.AddWithValue("@refundReason", refundReason);
 
                    command.ExecuteNonQuery();

                }
                connection.Close();
            }

            bool updateSuccessful = UpdateReservationStatus(reservationID);
            if (updateSuccessful)
            {
                Session["RefundStatusMessage"] = $"Refund request submitted successfully. Refund amount: RM {refundAmount:F2}.";
            }
            else
            {
                Session["RefundStatusMessage"] = "Failed to update reservation status.";
            }

            Response.Redirect("Booking.aspx");
        }
        private bool UpdateReservationStatus(string reservationID)
        {
            string query = "UPDATE Reservation SET status = 'Cancelled' WHERE reservationID = @reservationID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {                
                    command.Parameters.AddWithValue("@reservationID", reservationID);
                    int rowsAffected = command.ExecuteNonQuery(); 
                    return rowsAffected > 0;
                }
            }
        }
        public string GenerateRefundId()
        {
            string query = "SELECT COUNT(*) FROM Refund";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int existingRefundCount = (int)command.ExecuteScalar();

                    int newRefundCount = existingRefundCount + 1;
                    
                    string formattedCount = newRefundCount.ToString();

                    string newRefundId = "RE" + formattedCount;

                    return newRefundId;
                }
            }
        }
    }
}