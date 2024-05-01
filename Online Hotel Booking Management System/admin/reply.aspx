<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.reply1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Refund Request</title>
    <link rel="stylesheet" href="style.css">
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
            height:600px;
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

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right; /* Move button to the right */
            margin-top: 10px; /* Add spacing between the textarea and button */
        }

        button:hover {
            background-color: #45a049;
        }

        #additionalComments {
            margin-bottom: 10px; /* Add spacing between the textarea and button */
        }
    </style>
</head>
<body>
   <a href="issue.aspx" class="previous">&laquo; Back To Customer Issue page</a>
    <form id="form1" runat="server">
         
        <h2>Reply Customer Issue</h2>

        <label for="bookingId">Issue About:</label>
        <input type="text" id="bookingId" name="bookingId" value="Facility Issue" readonly disabled aria-sort="none">

        <label for="roomId">Customer Name:</label>
        <input type="text" id="roomId" name="roomId" value="Siew Jun Qiang" readonly disabled>

        <label for="roomType">Email:</label>
        <input type="text" id="roomType" name="roomType" value="sjq@gmail.com" readonly disabled>

        <label for="bookingDate">Desciption:</label>
        <input type="text" id="bookingDate" name="bookingDate" value="Facility Issue" readonly disabled>

        <label for="checkInDate">Report Date:</label>
        <input type="text" id="checkInDate" name="checkInDate" value="12/15/2023" readonly disabled>

        <label for="additionalComments">Comments:</label>
        <textarea id="additionalComments" name="additionalComments" style="width:100%"></textarea>

        <button type="button" onclick="confirmSubmission()" >Send Message</button>

        <script>
            function confirmSubmission() {
                var confirmation = confirm("Are you sure you want to submit the refund request?");
                if (confirmation) {
                    submitRefundRequest();
                }
            }

            function submitRefundRequest() {
                var bookingId = document.getElementById("bookingId").value;
                var refundReason = document.getElementById("refundReason").value;
                var additionalComments = document.getElementById("additionalComments").value;

                // Perform logic to submit refund request
                // You can use AJAX to send the data to the server

                alert("Refund request submitted successfully!");
                Response.redirect("admin.aspx");
            }
        </script>
    </form>
</body>
</html>