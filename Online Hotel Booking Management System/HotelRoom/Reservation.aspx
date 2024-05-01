<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.Reservation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reservation</title>
    <style type="text/css">
        .reservation-container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            color: #555;
        }

        input,
        select,
        textarea {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .submit{
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: right;
            float: right; /* Align to the right */
            margin-bottom:10px;
        }

        .submit:hover{
                background-color: #45a049;
         }
        .auto-style1 {
            text-align: center;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <section class="deluxe">
        <nav>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HotelRoom/LoginMainPage.aspx">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/img/tarumt-logo.png" />
            </asp:HyperLink>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Mainpage.aspx" Text="HOME"></asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" runat="server" Text="ABOUT" NavigateUrl="~/aboutUs.aspx"></asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" runat="server" Text="CONTACT" NavigateUrl="~/Contact.aspx"></asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink8" runat="server" Text="BOOKING" NavigateUrl="~/Booking.aspx"></asp:HyperLink></li>
                    <li class="profile-dropdown">
                        <div class="avatar-container">

                            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/user.jpg" onclick="toggleDropdown()" CssClass="userFile" Height="40px" Width="40px" />
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
        <h1 class="auto-style1">Reservation</h1>
       
    </section>

       &nbsp&nbsp <asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb" />
    

    <div class="reservation-container">
        
        <form method="post" >
            <p>
        <asp:Label ID="selectedRoomID" runat="server" Text="Room ID:"></asp:Label>
                <asp:TextBox ID="lblroomID" runat="server" readonly="true" disabled="disabled" ></asp:TextBox>
            </p>
            <p>
        <asp:Label ID="Label4" runat="server" Text="Room Type:"></asp:Label>
                <asp:TextBox ID="lblroomType" runat="server" readonly="true" disabled="disabled" ></asp:TextBox>
            </p>
             <p>
        <asp:Label ID="Label5" runat="server" Text="Check-In:"></asp:Label>
                <asp:TextBox ID="lblcheckInDate" runat="server" readonly="true" disabled="disabled" ></asp:TextBox>
            </p>
            <p>
        <asp:Label ID="Label6" runat="server" Text="Check-Out:"></asp:Label>
                <asp:TextBox ID="lblcheckOutDate" runat="server" readonly="true" disabled="disabled" ></asp:TextBox>
            </p>
            <p>
        <asp:Label ID="Label7" runat="server" Text="Number of Guests:"></asp:Label>
                <asp:TextBox ID="lblnumGuest" runat="server" readonly="true" disabled="disabled" ></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Guest Name: "></asp:Label>
                <asp:TextBox ID="name" runat="server" OnTextChanged="name_TextChanged" EnableViewState="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Your name is required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="email" runat="server" TextMode="Email" OnTextChanged="email_TextChanged" EnableViewState="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Your email is required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Contact Number: "></asp:Label>
                <asp:TextBox ID="phone" runat="server" OnTextChanged="phone_TextChanged" EnableViewState="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="Your phone is required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </p>
            

                &nbsp;<asp:Button ID="Button1" runat="server" CssClass="submit" PostBackUrl="~/HotelRoom/Payment.aspx" Text="Confirm" OnClick="Button1_Click"  />

                
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Error Message: " Height="100px" ShowMessageBox="True" ShowSummary="False" Width="50%" />
        </form>
    </div>
    <hr />
</asp:Content>