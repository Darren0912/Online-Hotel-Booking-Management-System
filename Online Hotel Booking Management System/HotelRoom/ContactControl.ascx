<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactControl.ascx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.ContactControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
    <style>

        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="about">
        <nav>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Mainpage.aspx">
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
<asp:HyperLink ID="HyperLink6" runat="server" Text="LOGIN" NavigateUrl="~/Login.aspx"></asp:HyperLink>
        </li>    
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>

        </nav>
        <h1>Contact us</h1>

    </section>

    
    <section class="location">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17024.96793662399!2d103.87993872944186!3d1.4978240093762674!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da6aec30f757dd%3A0x896892dd29ef8430!2s4%2C%20Jalan%20Tasek%2024%2C%20Bandar%20Seri%20Alam%2C%2081750%20Masai%2C%20Johor%2C%20Malaysia!5e0!3m2!1sen!2ssg!4v1668265369384!5m2!1sen!2ssg"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>

    <section class="contact-us">
        <div class="row">
            <div class="contact-col">
                <div>
                    <i class="fa fa-home" aria-hidden="true"></i>
                    <span>
                        <h5>Address</h5>
                        <p>TARUMT Hotel 123, Jalan Merdeka, Kuala Lumpur, 50200, Malaysia</p>
                    </span>

                </div>
                <div>
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <span>
                        <h5>+60 3-1234 5678</h5>
                        <p>Available for 24 hours</p>
                    </span>

                </div>
                <div>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <span>
                        <h5>info@tarumthotel.com.my</h5>
                        <p>We will reply in 2 work days</p>
                    </span>

                </div>
            </div>
            <div class="contact-col">
                <form method="get">

                    <asp:Label ID="Label4" runat="server" Text="What can we help you with?"></asp:Label>
                    <select id="help" name="help">
                        <option value="1">Service Issue</option>
                        <option value="2">Room Issue</option>
                        <option value="3">Facility Issue</option>
                    </select>
                  

                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                    <textarea id="description" name="description" placeholder="Write something.." style="height: 200px"></textarea>

                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                </form>
            </div>
        </div>
    </section>
    <hr />
</asp:Content>
