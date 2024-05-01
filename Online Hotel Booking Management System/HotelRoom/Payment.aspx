<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 26px;
            width:35%;
        }

        .auto-style3 {
            width: 50%;
            height: 26px;
        }

        .auto-style4 {
            height: 26px;
        }

        .auto-style11 {
            width: 100%;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image:linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(/img/backgroundpayment.jpg);
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            margin-top: 50px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        section {
            margin-top: 10px;
        }

        .img{
            border-radius:15px;
        }

        .ddlCss{
            text-decoration:none;
            box-sizing: border-box;
            height:35px;
            width:145px;
            padding:5px;
            border-radius:5px;

        }

        .ddlCss:hover{
            background:white;
            color: black;
        }

        .btn {
            align-items: center;
            background-color: #fff;
            border: 2px solid #000;
            box-sizing: border-box;
            color: #000;
            cursor: pointer;
            display: inline-flex;
            fill: #000;
            font-family: Inter,sans-serif;
            font-size: 16px;
            font-weight: 600;
            height: 36px;
            justify-content: center;
            letter-spacing: -.8px;
            line-height: 24px;
            min-width: 100px;
            outline: 0;
            padding: 0 17px;
            text-align: center;
            text-decoration: none;
            transition: all .3s;
        }

            .btn:focus {
                color: #171e29;
            }

            .btn:hover {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }

            .btn:active {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }

        .btnCancel {
            align-items: center;
            background-color: #fff;
            border: 2px solid #000;
            box-sizing: border-box;
            color: #000;
            cursor: pointer;
            display: inline-flex;
            fill: #000;
            font-family: Inter,sans-serif;
            font-size: 16px;
            font-weight: 600;
            height: 36px;
            justify-content: center;
            letter-spacing: -.8px;
            line-height: 24px;
            min-width: 100px;
            outline: 0;
            padding: 0 17px;
            text-align: center;
            text-decoration: none;
            transition: all .3s;
        }

            .btnCancel:focus {
                color: #171e29;
            }

            .btnCancel:hover {
                border-color: orangered;
                color: orangered;
                fill: orangered;
            }

            .btnCancel:active {
                border-color: orangered;
                color: orangered;
                fill: orangered;
            }
        .auto-style16 {
            width: 35%;
            height: 26px;
            text-align: right;
        }
        .auto-style17 {
            width: 708px;
            text-align: right;
        }
        .auto-style19 {
            width: 708px;
            text-align: right;
            height: 13px;
        }
        .auto-style24 {
            height: 28px;
            text-align: center;
            width: 169px;
        }
        .auto-style25 {
            text-decoration: none;
            box-sizing: border-box;
            height: 35px;
            width: 145px;
            padding: 5px;
            border-radius: 5px;
            margin-left: 0px;
        }
        .auto-style28 {
            height: 13px;
            width: 169px;
        }
        .auto-style30 {
            text-decoration: none;
            box-sizing: border-box;
            height: 35px;
            width: 145px;
            padding: 5px;
            border-radius: 5px;
            margin-bottom: 0px;
        }
        .auto-style31 {
            width: 16%;
            height: 26px;
            text-align: left;
        }
        .auto-style32 {
            height: 26px;
            width: 10%;
            text-align: right;
        }
        .auto-style33 {
            width: 35%;
            text-align: right;
        }
        .auto-style34 {
            width: 16%;
            text-align: left;
        }
        .auto-style35 {
            width: 169px;
            text-align: center;
        }
        .auto-style36 {
            width: 35%;
            height: 20px;
            text-align: right;
        }
        .auto-style37 {
            height: 20px;
        }
        .auto-style38 {
            text-align: center;
        }
        .auto-style39 {
            margin-top: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="joint">
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
     <asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb" />
   
        <div class="container">
            <section>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style1" colspan="7">
                            <asp:Label ID="Label1" runat="server" Text="Review Payment" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/deluxe.jpg" Height="146px" Width="234px" CssClass="img"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2"></td>
                        <td class="auto-style1" colspan="5">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">&nbsp;</td>
                        <td class="auto-style4" colspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>Room Type:</strong></td>
                        <td class="auto-style31"><asp:Label ID="roomTypeSelected" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style32">
                            <strong>Price/Night:</strong></td>
                        <td class="auto-style4" colspan="4">
                            RM&nbsp;<asp:Label ID="lblPrice" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>Check-in Date:</strong></td>
                        <td class="auto-style31"><asp:Label ID="chkInDate" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style32">
                            <strong>Day(s):</strong></td>
                        <td class="auto-style4" colspan="4">
                            <asp:Label ID="lblDay" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>Check-out Date:</strong></td>
                        <td class="auto-style31"><asp:Label ID="chkOutDate" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <strong>Booking Fee:</strong></td>
                        <td colspan="4">
                            RM<asp:Label ID="lblBookingFee" runat="server">5.00</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33"><strong>Booking date:</strong> 
                            </td>
                        <td class="auto-style34"> 
                            <asp:Label ID="lblBookingDate" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style35">
                            <strong>Total:</strong></td>
                        <td colspan="4">
                            RM<asp:Label ID="lblTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" colspan="2"></td>
                        <td class="auto-style28">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2"><strong>Name:</strong></td>
                        <td class="auto-style4" colspan="5">
                            <asp:TextBox ID="lblUserName" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2"><strong>Phone Number:</strong></td>
                        <td class="auto-style4" colspan="5">
                            <asp:TextBox ID="lblPhoneNum" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2"><strong>Email:</strong></td>
                        <td class="auto-style4" colspan="5">
                            <asp:TextBox ID="lblEmail" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2">
                            <strong>Payment method:</strong></td>
                        <td class="auto-style4" colspan="5">
                            <asp:DropDownList ID="ddlPaymentMethod" runat="server" Height="30px" Width="145px" CssClass="auto-style25" OnSelectedIndexChanged="ddlPaymentMethod_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>Select One</asp:ListItem>
                                <asp:ListItem>Credit/Debit card</asp:ListItem>
                                <asp:ListItem>Online Banking</asp:ListItem>
                                <asp:ListItem>E-wallet</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36" colspan="2">
                            </td>
                        <td class="auto-style37" colspan="5">
                            <asp:TextBox ID="txtCardNum" placeHolder="Credit/Debit Card Number" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCCV" ErrorMessage="Card Number is required">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCardNum" ErrorMessage="CardNumber is invalid" ValidationExpression="\d{16}">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtCCV" placeHolder="CCV Number" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCCV" ErrorMessage="CCV Number is required">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCCV" ErrorMessage="CCV number is invalid" ValidationExpression="\d{3}">*</asp:RegularExpressionValidator>
                            <asp:DropDownList ID="ddleWallet" runat="server" Visible="False" CssClass="ddlCss" >
                                <asp:ListItem>TNG ewallet</asp:ListItem>
                                <asp:ListItem>GrabPay</asp:ListItem>
                                <asp:ListItem>ShopeePay</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddleWallet" ErrorMessage="Ewallet type is required">*</asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlBank" runat="server" Visible="False" CssClass="auto-style30">
                                <asp:ListItem>Public Bank</asp:ListItem>
                                <asp:ListItem>MayBank</asp:ListItem>
                                <asp:ListItem>CIMB Bank</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlBank" ErrorMessage="Bank Type is required">*</asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style39" DisplayMode="List" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38" colspan="7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style38" colspan="7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17" colspan="2">
                            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn" OnClick="btnConfirm_Click" />
                        </td>
                        <td colspan="5">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btnCancel" PostBackUrl="~/HotelRoom/Reservation.aspx"/>
                        </td>
                    </tr>
                </table>
            </section>
        </div>
        <p>
            &nbsp;
        </p>
    
</asp:Content>
