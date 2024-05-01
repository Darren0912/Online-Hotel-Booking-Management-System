<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refund.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.Refund" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Refund Request</title>
    <link rel="stylesheet" href="../style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,500;0,700;1,600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
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

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        form {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .submit {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right; /* Move button to the right */
            margin-top: 10px; /* Add spacing between the textarea and button */
        }

        .submit:hover {
            background-color: #45a049;
        }

        #additionalComments {
            margin-bottom: 10px; /* Add spacing between the textarea and button */
        }
    </style>
</head>
<body>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" CssClass="breadcrumb" />
    <form id="form1" runat="server">
         
        <h2>Refund Request</h2>

        <label for="bookingId">Booking ID:</label>
        <asp:TextBox ID="bookingID" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
        <label for="roomId">Room ID:</label>
        <asp:TextBox ID="roomID" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

        <label for="roomType">Room Type:</label>
       <asp:TextBox ID="roomType" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

        <label for="bookingDate">Booking Date:</label>
        <asp:TextBox ID="bDate" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

        <label for="checkInDate">Check-In Date:</label>
       <asp:TextBox ID="chkInDate" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

        <label for="checkOutDate">Check-Out Date:</label>
        <asp:TextBox ID="chkOutDate" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>

        <label for="paymentStatus">Payment Status:</label>
        <asp:TextBox ID="status" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
        <label for="refundReason">Select Refund Reason:</label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Cancellation</asp:ListItem>
            <asp:ListItem>Overcharged</asp:ListItem>
            <asp:ListItem>Unsatisfactory Service</asp:ListItem>
            <asp:ListItem>Booking Error</asp:ListItem>
            <asp:ListItem>Other </asp:ListItem>
        </asp:DropDownList>
        

        <label for="additionalComments">Additional Comments:</label>
        <textarea id="additionalComments" name="additionalComments" rows="4" style="width:300px;"></textarea>

        <asp:Button ID="submit" runat="server" Text="Submit Refund Request" style="margin-top:70px;" cssClass="submit" OnClick="submit_Click" OnClientClick="return confirm('Are you sure you want to submit the refund request? Refund only return 80% of payment..');"/>
       

        
    </form>
</body>
</html>