<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Online_Hotel_Booking_Management_System.WebUserControl1" %>


<nav>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Mainpage.aspx">
        <asp:Image ID="Image10" runat="server" ImageUrl="~/img/tarumt-logo.png" />
    </asp:HyperLink>
    <div class="nav-links" id="navLinks">
        <i class="fa fa-times" onclick="hideMenu()"></i>
        <ul>

            <li>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HotelRoom/LoginMainPage.aspx" Text="HOME"></asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink4" runat="server" Text="ABOUT" NavigateUrl="~/aboutUs.aspx"></asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink7" runat="server" Text="CONTACT" NavigateUrl="~/Contact.aspx"></asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink8" runat="server" Text="BOOKING" NavigateUrl="/NormalUser/Booking.aspx"></asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink1" runat="server" Text="LOGIN" NavigateUrl="~/Login.aspx"></asp:HyperLink>
        </li>
            <li class="profile-dropdown">
                <div class="avatar-container">

                    <asp:Image ID="Image11" runat="server" ImageUrl="~/img/user.jpg" onclick="toggleDropdown()" CssClass="userFile" Height="40px" Width="40px" />
                </div>
                <div class="dropdown-content" id="dropdownContent">
                    <em>
                        <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" Text="User Profile" NavigateUrl="~/NormalUser/UserProfile.aspx" CssClass="logout"></asp:HyperLink>
                    </em>
                    <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="logout" ForeColor="Black" />
                </div>
            </li>
        </ul>
    </div>
    <i class="fa fa-bars" onclick="showMenu()"></i>

</nav>
