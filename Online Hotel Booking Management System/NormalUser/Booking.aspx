<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="../style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,500;0,700;1,600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>My Booking</title>
    <style>
       .custom-dropdown {
            font-size: 14px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            cursor: pointer;
            background-color: #fff; 
            color: #333;
            transition: background-color 0.3s, color 0.3s; 
            float: right;
            margin-right: 20px; 
        }

        
        .custom-dropdown option {
            font-size: 14px;
        }

        .custom-dropdown:hover {
            background-color: #f0f0f0; 
            color: #555; 
        }

        a {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
            margin:20px;
        }

            a:hover {
                background-color: #ddd;
                color: black;
            }

        .previous {
            background-color: #f1f1f1;
            color: black;
        }
        
         .cancel-button {
        background-color: #e74c3c;
        color: #fff;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .cancel-button:hover {
        background-color: #c0392b;
    }

       
        .container {
           
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
        .responsive-table{
             padding-top:75px;
        }
        h2 {
            font-size: 26px;
            text-align: center;
        }
        li{
            border-radius: 3px;
            padding: 25px 35px;
            display: flex;
            justify-content: space-between;
            margin-bottom: 25px;
        }
        
            

        .table-header {
            background-color: #95A5A6;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.03em;
        }

        .table-row {
            background-color: #ffffff;
            box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
        }

        .col-1 {
            flex-basis: 13%;
        }

        .col-2 {
            flex-basis: 10%;
        }

        .col-3 {
            flex-basis: 15%;
        }

        .col-4 {
            flex-basis: 15%;
        }
        .col-5 {
            flex-basis: 15%;
        }

        .col-6 {
            flex-basis: 15%;
        }
        .col-7 {
            flex-basis: 10%;
        }.col-8 {
            flex-basis: 10%;
        }

        @media all and (max-width: 767px) {
            .table-header {
                display: none;
            }

            .table-row {
            }

            li {
                display: block;
            }

            .col {
                flex-basis: 100%;
            }

            .col {
                display: flex;
                padding: 10px 0;
            }

                .col:before {
                    color: #6C7A89;
                    padding-right: 10px;
                    content: attr(data-label);
                    flex-basis: 50%;
                    text-align: right;
                }
        }

        
    </style>
  
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT r.reservationID, ro.roomID, rt.typeName ,p.paymentDate, r.checkInDate, r.checkOutDate, r.status FROM reservation r JOIN room ro ON r.roomID = ro.roomID JOIN roomType rt ON ro.typeID = rt.typeID JOIN payment p ON r.reservationID = p.reservationID WHERE r.status = 'Paid' AND r.userID=@uID;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="uID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT r.reservationID, ro.roomID, rt.typeName ,p.paymentDate, r.checkInDate, r.checkOutDate, r.status FROM reservation r JOIN room ro ON r.roomID = ro.roomID JOIN roomType rt ON ro.typeID = rt.typeID JOIN payment p ON r.reservationID = p.reservationID WHERE r.status = 'Cancelled' AND r.userID=@uID;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="uID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    <div class="container">
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <h2>Your Booking</h2>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-dropdown" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>Filter</asp:ListItem>
            <asp:ListItem>Paid</asp:ListItem>
            <asp:ListItem>Cancelled</asp:ListItem>

        </asp:DropDownList>
        &nbsp;<ul class="responsive-table">
            <li class="table-header">
                <div class="col col-1">Booking ID</div>
                <div class="col col-2">Room ID</div>
                <div class="col col-3">Room Type</div>
                <div class="col col-4">Booking Date</div>
                <div class="col col-5">Check-In Date</div>
                <div class="col col-6">Check-Out Date</div>
                <div class="col col-7">Payment Status</div>
                <div class="col col-8">Action</div>
            </li>
             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"><ItemTemplate>
            <li class="table-row">
               
                <div class="col col-1"><%# Eval("reservationID") %></div>
                <div class="col col-2"><%# Eval("roomID") %></div>
                <div class="col col-3"><%# Eval("typeName") %></div>
                <div class="col col-4"><%# Eval("paymentDate", "{0:d}") %></div>
                <div class="col col-5"><%# Eval("checkInDate", "{0:d}") %></div>
                <div class="col col-6"><%# Eval("checkOutDate", "{0:d}") %></div>
                <div class="col col-7"><%# Eval("status") %></div>
                <div class="col col-8"><asp:Button runat="server" Text="Cancel" CssClass="cancel-button"  CommandName="CancelBooking" OnClick="CancelBooking_Click"
                    CommandArgument='<%# GetCommandArgument(Eval("reservationID"), Eval("roomID"), Eval("typeName"), Eval("paymentDate"), Eval("checkInDate"), Eval("checkOutDate"), Eval("status")) %>' />
                    
                </div>
                    
            </li>
                 </ItemTemplate>
                 </asp:Repeater>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
            <li class="table-row">
                  <div class="col col-1"><%# Eval("reservationID") %></div>
                <div class="col col-2"><%# Eval("roomID") %></div>
                <div class="col col-3"><%# Eval("typeName") %></div>
                <div class="col col-4"><%# Eval("paymentDate", "{0:d}") %></div>
                <div class="col col-5"><%# Eval("checkInDate", "{0:d}") %></div>
                <div class="col col-6"><%# Eval("checkOutDate", "{0:d}") %></div>
                <div class="col col-7"><%# Eval("status") %></div>
                <div class="col col-8">
                    
                </div>
            </li>
                </ItemTemplate>
                </asp:Repeater>
        </ul>
    </div>

       
    </form>
</body>
</html>
