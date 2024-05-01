using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.HotelRoom
{
    public partial class roomType : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve values from session variables
           

           
        }
        protected void bookNow_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            // Get the RepeaterItem container that contains the button
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            // Retrieve the room type from the Label inside the RepeaterItem
            Label typeNameLabel = (Label)item.FindControl("typeNameLabel");
            string roomType = typeNameLabel.Text;

                        Session["SelectedRoomType"] = roomType;
                        Response.Redirect("Reservation.aspx");
                    }
                }
            }

            
  