<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer.Master" CodeBehind="LoginMainPage.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.LoginMainPage" %>
<%@ Register TagPrefix="Page" TagName="Header" Src="WebUserControl1.ascx"
%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    
    var showAlert = '<%= Request.QueryString["showAlert"] %>';

    if (showAlert && showAlert.toLowerCase() === 'true') {
        alert('No available rooms');
    }
    </script>
    <style>
        
        .logout{
            text-decoration:none;
            color:black;
            padding:5px;
        }

        .logout:hover{
            background-color:darkgray;
        }

       .search-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto; /* Center the form horizontally */
            text-align: center;
           margin-top:50px;
        }

        .form-group {
            width: 100%;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        .check-date, .numberOfGuests {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" ShowStartingNode="false" runat="server">
    

     <section class="header">
       <Page:Header ID="Hyperlink3" runat="server" />
        <div class="text-box">
            <h1>Welcome to TARUMT Hotel Website</h1>
            <p>"Step into a world of exceptional hospitality at TARUMT Hotel. Your comfort is our priority, and we're thrilled to welcome you."</p>
            <a href="aboutUs.aspx" class="hero-btn">Visit Us To know More</a>
        </div>
    </section>

        <!---------booking--------------->
  
    <div class="search-form">
          <h2>Booking</h2>
        <form>
            <div class="form-group">
                <label for="checkInDate">Check-In Date:</label>
                <asp:TextBox ID="checkIn" runat="server" TextMode="Date" CssClass="check-date"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="checkIn" ErrorMessage="Check In Date is required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                
            </div>

            <div class="form-group">
                <label for="checkOutDate">Check-Out Date:</label>
                 <asp:TextBox ID="checkOut" runat="server" TextMode="Date" CssClass="check-date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="checkIn" ErrorMessage="Check Out Date is required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="checkIn" ControlToCompare="checkOut" Operator="LessThanEqual" Type="Date" ErrorMessage="Check In date should not be greater than Check Out date" ForeColor="#FF3300" Display="Static">*</asp:CompareValidator>
            </div>

            <div class="form-group">
                <label for="numberOfGuests">Number of Guests:</label>
               <asp:DropDownList ID="numberOfGuests" cssClass="numberOfGuests" runat="server">
                    <asp:ListItem Value="1" Selected="True">1 Guest</asp:ListItem>
                    <asp:ListItem Value="2">2 Guests</asp:ListItem>
                    <asp:ListItem Value="3">3 Guests</asp:ListItem>
                    <asp:ListItem Value="4">4 Guests</asp:ListItem>
                </asp:DropDownList> 
                
            </div>
            <br />
            <div class="form-group">
                <label for="venue">Prefer Venue:</label>
               <asp:DropDownList ID="DropDownList1" cssClass="numberOfGuests" runat="server">
                    <asp:ListItem Value="East Sea View" Selected="True">East Sea View</asp:ListItem>
                    <asp:ListItem Value="South City View">South City View</asp:ListItem>
                    <asp:ListItem Value="West Pool View">West Pool View</asp:ListItem>
                    <asp:ListItem Value="North Mountain View">North Mountain View</asp:ListItem>
                </asp:DropDownList>
                
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" ShowMessageBox="True" ShowSummary="False" />
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Search" cssClass="button" OnClick="Button1_Click"  />
        </form>
    </div>

    <!---------room--------------->
    <section class="room">
        <h1>Rooms We offer</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT [typeName], [description] FROM [roomType]"></asp:SqlDataSource>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="room-col">
                        <h3><asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' /></h3>
                        <p>
                         <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </p>
                    </div>
                </ItemTemplate>

            </asp:Repeater>
        </div>
    </section>



    <!--Facilities-->

    <section class="facilities">
        <h1>Our facilities</h1>
        <p>Our hotel is equipped with a range of top-notch facilities designed to enhance your stay and ensure a memorable experience. 
            Enjoy the convenience of high-speed Wi-Fi connectivity throughout the premises, allowing you to stay connected effortlessly. 
            Indulge in a culinary delight at our on-site restaurant, offering a diverse menu to satisfy various tastes. Unwind and rejuvenate in our spa and wellness center, where professional therapists cater to your relaxation needs. 
            For those seeking to stay active, our fitness center is well-equipped with modern exercise equipment. We also provide business services, including conference rooms and meeting spaces, making our hotel suitable for both leisure and business travelers. 
            Additionally, our attentive and friendly staff is committed to delivering exceptional service to make your stay truly enjoyable.</p>
        <div class="row">
            <div class="facilities-col">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/img/fitness.jpg" Height="200px" Width="275px" />
                <h3>Fitness Center</h3>
                <p>Stay active and fit during your stay with our well-equipped fitness center. Modern exercise equipment is available to meet your workout needs, 
                    providing a convenient space for health-conscious guests.</p>
            </div>
            <div class="facilities-col">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/img/restaurant.jpg"  Height="200px" Width="275px"/>
                <h3>On-site Restaurant</h3>
                <p>Indulge in a culinary journey at our on-site restaurant, 
                    offering a diverse menu curated by skilled chefs to cater to a variety of tastes and preferences.</p>
            </div>
            <div class="facilities-col">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/img/spa.jpg"  Height="200px" Width="275px"/>
                <h3>Spa and Wellness Center</h3>
                <p>Rejuvenate your mind and body at our spa and wellness center. 
                    Our professional therapists provide a range of treatments and services to ensure ultimate relaxation and rejuvenation.</p>
            </div>
        </div>

    </section>

    <!--testimonials-->
    <section class="testimonials">
        <h1>What Our Clients Say</h1>

        <div class="row">
            <div class="testimonial-col">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/img/user1.jpg" />
                <div>
                    <p>As a female guest, I had a fantastic experience staying at this hotel. 
                        The attention to detail and the safety measures in place made me feel secure and comfortable throughout my stay. 
                        The room's elegant decor and cleanliness exceeded my expectations, providing a serene environment to relax. 
                        The on-site spa was a delightful retreat, offering a range of rejuvenating treatments. 
                        The fitness center was well-equipped.</p>
                    <h3>Christine Birkley</h3>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
            </div>
            <div class="testimonial-col">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/img/user2.jpg" />
                <div>
                    <p>
As a male guest, my stay at this hotel was truly enjoyable and memorable. 
                        The room was well-appointed with modern amenities and a comfortable bed, providing a relaxing atmosphere after a day of exploration.
                        The hotel's fitness center had a variety of equipment, allowing me to maintain my workout routine.
                        I appreciated the convenient location of the hotel, making it easy to access nearby attractions and transportation. 
 </p>
                    <h3>David Byer</h3>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </section>

    <!--- Call To Action--->
    <section class="cta">
        <h1>Give Your Comments to Our Hotels <br>Anywhere from The World</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hero-btn" NavigateUrl="~/Contact.aspx">CONTACT US</asp:HyperLink>
       
    </section>
    <hr />
</asp:Content>