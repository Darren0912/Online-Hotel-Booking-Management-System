using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        MembershipUser currentUser = Membership.GetUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (currentUser != null)
            {
                HyperLink8.Visible = true;
                Image11.Visible = true;
                HyperLink5.Visible = true;
                LoginStatus1.Visible = true;
                HyperLink1.Visible = false;
            }
            else
            {
                HyperLink1.Visible = true;
                HyperLink8.Visible = false;
                Image11.Visible = false;
                HyperLink5.Visible = false;
                LoginStatus1.Visible = false;
            }
        }
    }
}