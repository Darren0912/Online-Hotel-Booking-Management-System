using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current page name
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);

            // Check the current page and set the active class accordingly
            SetActiveMenuItem(currentPage);
        }

        private void SetActiveMenuItem(string currentPage)
        {
            HyperLink[] menuItems = { HyperLink1, HyperLink2, HyperLink3, HyperLink4, HyperLink5, HyperLink6 };

            foreach (HyperLink menuItem in menuItems)
            {
                string menuItemUrl = System.IO.Path.GetFileName(menuItem.NavigateUrl);
                if (menuItemUrl.Equals(currentPage, StringComparison.OrdinalIgnoreCase))
                {
                    menuItem.CssClass += " active";
                    break; // Stop looping once the active menu item is found
                }
            }
        }
    }
}