using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.HotelRoom
{
    public partial class LoginMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            checkIn.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            checkOut.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["CheckInDate"] = checkIn.Text;
            Session["CheckOutDate"] = checkOut.Text;
            Session["NumberOfGuests"] = numberOfGuests.SelectedValue;
            Session["PreferVenue"] = DropDownList1.SelectedValue;

            // Redirect to the desired page
            Response.Redirect("~/HotelRoom/roomType.aspx");
        }
    }
}