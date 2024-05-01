using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;

namespace Online_Hotel_Booking_Management_System.HotelRoom
{
    public partial class Payment : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString;
        MembershipUser currentUser = Membership.GetUser();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            roomTypeSelected.Text = Session["SelectedRoomType"].ToString();
            chkInDate.Text = Session["CheckInDate"].ToString();
            chkOutDate.Text = Session["CheckOutDate"].ToString();
            string roomType = Session["SelectedRoomType"] as string;
            double roomPrice = 0.00;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query1 = "SELECT price FROM roomType WHERE typeName = @TypeName";
                using (SqlCommand command = new SqlCommand(query1, connection))
                {
                    command.Parameters.AddWithValue("@TypeName", roomType);

                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        roomPrice = Convert.ToDouble(result);
                        lblPrice.Text = roomPrice.ToString();
                    }
                }
            }


            lblBookingFee.Text = "5.00";
            String chkIn = Session["CheckInDate"] as String;
            String chkOut = Session["CheckOutDate"] as String;
            DateTime checkIn = DateTime.Parse(chkIn, System.Globalization.CultureInfo.InvariantCulture);
            DateTime checkOut = DateTime.Parse(chkOut, System.Globalization.CultureInfo.InvariantCulture);


            double totalDay = (checkOut - checkIn).TotalDays + 1;
            lblDay.Text = totalDay.ToString();
            double subTotal = (double)(roomPrice * totalDay);
            Session["subTotal"] = subTotal;
            double totalFee = subTotal + Convert.ToDouble(lblBookingFee.Text);
            Session["amount"] = totalFee;

            lblTotal.Text = totalFee.ToString();
            lblUserName.Text = Session["NameReserved"].ToString();
            lblPhoneNum.Text = Session["EmailReserved"].ToString();
            lblEmail.Text = Session["phoneReserved"].ToString();
            lblBookingDate.Text = DateTime.Now.Date.ToString();

        }

        protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPaymentMethod.SelectedValue == "Online Banking")
            {
                ddlBank.Visible = true;
                ddleWallet.Visible = false;
                txtCCV.Visible = false;
                txtCardNum.Visible = false;
            }
            else if (ddlPaymentMethod.SelectedValue == "E-wallet")
            {
                ddleWallet.Visible = true;
                ddlBank.Visible = false;
                txtCCV.Visible = false;
                txtCardNum.Visible = false;
            }
            else if (ddlPaymentMethod.SelectedValue == "Credit/Debit card")
            {
                HttpCookie userCookie = Request.Cookies["UserData"];
                if (userCookie != null)
                {
                    Guid currentUserID = (Guid)currentUser.ProviderUserKey;
                    string userId = userCookie.Values["UserId"];
                    if (userId == currentUserID.ToString())
                    {

                        txtCardNum.Text = userCookie.Values["CreditCardNum"];
                        txtCCV.Text = userCookie.Values["CCV"];
                    }
                }
                ddlBank.Visible = false;
                ddleWallet.Visible = false;
                txtCCV.Visible = true;
                txtCardNum.Visible = true;
            }
            else
            {
                ddlBank.Visible = false;
                ddleWallet.Visible = false;
                txtCCV.Visible = false;
                txtCardNum.Visible = false;
            }
        }


        public string GenerateReservationId()
        {

            // Assume connection string and SQL query
            string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString; ;
            string query = "SELECT COUNT(*) FROM Reservation";

            // Create a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute the query to get the count of existing issues
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int existingReservationCount = (int)command.ExecuteScalar();

                    // Increment the count
                    int newReservationCount = existingReservationCount + 1;

                    // Format the count with leading zeros
                    string formattedCount = newReservationCount.ToString();

                    // Concatenate the formatted count with the ID prefix
                    string newReservationId = "R" + formattedCount;

                    return newReservationId;
                }

            }
        }

        public string GeneratePaymentId()
        {

            // Assume connection string and SQL query
            string connectionString = ConfigurationManager.ConnectionStrings["room"].ConnectionString; ;
            string query = "SELECT COUNT(*) FROM Payment";

            // Create a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Execute the query to get the count of existing issues
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int existingPaymentCount = (int)command.ExecuteScalar();

                    // Increment the count
                    int newPaymentCount = existingPaymentCount + 1;

                    // Format the count with leading zeros
                    string formattedCount = newPaymentCount.ToString();

                    // Concatenate the formatted count with the ID prefix
                    string newPaymentId = "P" + formattedCount;

                    return newPaymentId;
                }

            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string reservationID = GenerateReservationId();
            Session["reservationID"] = reservationID;
            string paymentID = GeneratePaymentId();
            Session["bookingDate"] = DateTime.Now.Date.ToString();
            Session["paymentMethod"] = ddlPaymentMethod.SelectedValue.ToString();
            Guid currentUserID = (Guid)currentUser.ProviderUserKey;
            String chkIn = Session["CheckInDate"] as String;
            DateTime checkIn = DateTime.Parse(chkIn, System.Globalization.CultureInfo.InvariantCulture);
            String chkOut = Session["CheckOutDate"] as String;
            DateTime checkOut = DateTime.Parse(chkOut, System.Globalization.CultureInfo.InvariantCulture);
            if (ddlPaymentMethod.SelectedValue == "Credit/Debit card")
            {
                HttpCookie userCookie = new HttpCookie("UserData");
                userCookie.Values["CreditCardNum"] = txtCardNum.Text;
                userCookie.Values["CCV"] = txtCCV.Text;
                userCookie.Values["UserId"] = currentUserID.ToString();
     
                userCookie.Expires = DateTime.Now.AddDays(30); 
                Response.Cookies.Add(userCookie);
            }
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string queryStr = "INSERT INTO Reservation(reservationID, userID, roomID, checkInDate, checkOutDate, status) VALUES(@reservationID, @userID, @roomID, @chkInDate, @chkOutDate, @status)";
                using (SqlCommand command = new SqlCommand(queryStr, connection))
                {
                    command.Parameters.Add("@reservationID", System.Data.SqlDbType.VarChar).Value = reservationID;
                    command.Parameters.Add("@userID", System.Data.SqlDbType.UniqueIdentifier).Value = currentUserID;
                    command.Parameters.Add("@roomID", System.Data.SqlDbType.VarChar).Value = Session["roomID"].ToString();
                    command.Parameters.Add("@chkInDate", System.Data.SqlDbType.Date).Value = checkIn.Date;
                    command.Parameters.Add("@chkOutDate", System.Data.SqlDbType.Date).Value = checkOut.Date;
                    command.Parameters.Add("@status", System.Data.SqlDbType.VarChar).Value = "Paid";

                    command.ExecuteNonQuery();

                }
                connection.Close();
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string queryStr = "INSERT INTO Payment(reservationID, paymentID, paymentMethod, amount, paymentDate, userID) VALUES(@reservationID, @paymentID, @paymentMethod,  @amount, @paymentDate , @userID)";
                using (SqlCommand command = new SqlCommand(queryStr, connection))
                {
                    command.Parameters.Add("@paymentID", System.Data.SqlDbType.VarChar).Value = paymentID;
                    command.Parameters.Add("@reservationID", System.Data.SqlDbType.VarChar).Value = reservationID;
                    command.Parameters.Add("@paymentMethod", System.Data.SqlDbType.VarChar).Value = ddlPaymentMethod.SelectedValue.ToString();
                    command.Parameters.Add("@userID", System.Data.SqlDbType.UniqueIdentifier).Value = currentUserID;
                    command.Parameters.Add("@paymentDate", System.Data.SqlDbType.Date).Value = DateTime.Now.Date.ToString();
                    command.Parameters.Add("@amount", System.Data.SqlDbType.Float).Value = Session["amount"];

                    command.ExecuteNonQuery();

                }
                connection.Close();
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string queryStr = "UPDATE Room SET Availability = @availability WHERE Room.roomID = @roomID";
                using (SqlCommand command = new SqlCommand(queryStr, connection))
                {
                    command.Parameters.Add("@roomID", System.Data.SqlDbType.VarChar).Value = Session["roomID"].ToString();
                    command.Parameters.Add("@availability", System.Data.SqlDbType.VarChar).Value = "No";
                    command.ExecuteNonQuery();

                }
                connection.Close();
            }

            Response.Redirect("~/HotelRoom/TQpage.aspx");
        }
      
    }

}