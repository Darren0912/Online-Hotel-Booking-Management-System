<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AboutUsControl.ascx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.AboutUsControl" %>
<%@ Register TagPrefix="Page" TagName="Header" Src="WebUserControl1.ascx"
%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="about">
        <Page:Header ID="Hyperlink3" runat="server" />
        <h1>About us</h1>

    </section>

    <section class="about-us">
        <div class="row">
            <div class="about-col">
                <h1>We are the Malaysia's largest Hotel</h1>
                <p>Welcome to Tarumt Hotel, where luxury meets comfort, and hospitality is our utmost priority. 
                    Nestled in the heart of Malaysia, we take pride in being the country's largest hotel, offering an unparalleled experience for both business and leisure travelers.
                    Our commitment to excellence is reflected in every detail, from our state-of-the-art facilities to the warm and attentive service provided by our dedicated staff.</p><br />
                <p>At Tarumt Hotel, we strive to create a home away from home for our guests, ensuring a memorable stay filled with relaxation and convenience. 
                    Our modern and well-appointed rooms cater to diverse preferences, while our extensive range of facilities, including world-class dining, event spaces, and recreational amenities, makes us a preferred choice for travelers seeking the best in Malaysian hospitality.</p>
               <br /> <p>As we stand as a beacon of luxury and grandeur, we invite you to immerse yourself in the unique charm of Tarumt Hotel. 
                    Whether you're here for business, leisure, or a special occasion, our commitment to exceeding your expectations remains unwavering. Experience the epitome of Malaysian hospitality at Tarumt Hotel – where every moment is crafted to make your stay truly exceptional.</p>
            </div>
            <div class="about-col">
                <asp:Image runat="server" ImageUrl="~/img/about2.jpeg"></asp:Image>
                <br /><br /><br /><br />
                <asp:Image runat="server" ImageUrl="~/img/background.jpg"></asp:Image>
            </div>

        </div>
    </section>

    <section class="btn" style="padding-bottom:100px;">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Mainpage.aspx" Text="Explore us"></asp:HyperLink>
        </div>
    </section>
    <hr />
</asp:Content>