<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="roomType.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.roomType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Room Type</title>
    <style type="text/css">
        .label{
           
        width: 100%;
        font-weight: 500;
        color: #fff;
        font-size: 16px;
        bottom: 0;
        left: 50%;
        position: absolute;
        transform: translateX(-50%);
        opacity: 0;
        transition: 0.5s;
    }

    .layer:hover .label {
        bottom: 50%;
        opacity: 1;
    }
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

   <section class="standard">
        <nav>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HotelRoom/LoginMainPage.aspx">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/img/tarumt-logo.png" /></asp:HyperLink>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Mainpage.aspx" Text="HOME"></asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" runat="server" Text="ABOUT" NavigateUrl="~/aboutUs.aspx"></asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" runat="server" Text="CONTACT" NavigateUrl="~/Contact.aspx"></asp:HyperLink></li>
                     <li>
                        <asp:HyperLink ID="HyperLink8" runat="server" Text="BOOKING" NavigateUrl="~/Booking.aspx"></asp:HyperLink></li>
                     <li class="profile-dropdown">
            <div class="avatar-container">

                <asp:Image ID="Image11" runat="server" ImageUrl="~/img/user.jpg" onclick="toggleDropdown()"  CssClass="userFile"  Height="40px" Width="40px" />
            </div>
            <div class="dropdown-content" id="dropdownContent">
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" Text="User Profile"></asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Black" Text="Log Out"></asp:HyperLink>
                
            </div>
        </li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>

        </nav>
        <h1>Room Type</h1>
    </section>
    <br />
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT [typeName], [image], [price] FROM [roomType]"></asp:SqlDataSource>
    &nbsp&nbsp<asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb" />
    <section class="booking" style="padding-bottom:100px;">
        
        <h2>Select a room type for your reservation</h2>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="booking-col">

                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/standard.jpg" Height="150px" Width="300px" />
                        <div class="layer">
                            <h3>
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' /></h3>
                            
                            <asp:Button ID="booknow1" runat="server" Text="Book Now" CssClass="custom-button" OnClick="bookNow_Click" />
                             <asp:Label ID="Label1" runat="server" Text='<%# String.Format("RM {0}.00", Eval("price")) %>' CssClass="label"/>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                               
                   </FooterTemplate>
            </asp:Repeater>

        </div>
    </section>
    <hr />
</asp:Content>
