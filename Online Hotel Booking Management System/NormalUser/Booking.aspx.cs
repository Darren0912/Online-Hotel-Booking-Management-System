using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.NormalUser
{
    public partial class Booking : System.Web.UI.Page
    {
        MembershipUser currentUser = Membership.GetUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Guid currentUserID = (Guid)currentUser.ProviderUserKey;
                TextBox1.Text = currentUserID.ToString();
                string refundStatusMessage = Session["RefundStatusMessage"] as string;
                if (!string.IsNullOrEmpty(refundStatusMessage))
                {
                    // Clear the session variable
                    Session["RefundStatusMessage"] = null;

                    // Display the message using ScriptManager
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "status", $"alert('{refundStatusMessage}');", true);

                    // Set the default visibility
                    Repeater1.Visible = true;
                    Repeater2.Visible = true;
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedValue;

            // Toggle visibility based on the selected value
            if (selectedValue == "Paid")
            {
                Repeater1.Visible = true;
                Repeater2.Visible = false;
            }
            else if (selectedValue == "Cancelled")
            {
                Repeater1.Visible = false;
                Repeater2.Visible = true;
            }
            else
            {
                // If "Filter" or any other value is selected, show both repeaters
                Repeater1.Visible = true;
                Repeater2.Visible = true;
            }
        }

        protected string GetCommandArgument(object reservationID, object roomID, object typeName, object paymentDate, object checkInDate, object checkOutDate, object status)
        {
            return $"{reservationID}|{roomID}|{typeName}|{paymentDate}|{checkInDate}|{checkOutDate}|{status}";
        }

        protected void CancelBooking_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string[] args = btn.CommandArgument.Split('|');

            Session["CancelledReservationID"] = args[0];
            Session["RoomID"] = args[1];
            Session["TypeName"] = args[2];
            Session["PaymentDate"] = args[3];
            Session["CheckInDate"] = args[4];
            Session["CheckOutDate"] = args[5];
            Session["Status"] = args[6];

            Response.Redirect("Refund.aspx");
        }

        
    }
}