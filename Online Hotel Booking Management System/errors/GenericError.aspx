<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenericError.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.errors.GenericError" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generic Error</title>
    <style>
        .link_404 {
            color: #fff !important;
            padding: 10px 20px;
            background: #39ac31;
            margin: 20px 0;
            display: inline-block;
        }
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .error-container {
            text-align: center;
            max-width: 400px;
        }

        h2 {
            color: #d9534f;
        }

        p {
            margin-bottom: 20px;
        }

        .advice {
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h2>Oops! Something went wrong.</h2>
        <p>We apologize for the inconvenience.</p>
        <p class="advice">Please try again later.</p>
        <a href="Mainpage.aspx" class="link_404">Go to Home</a>
    </div>
</body>
</html>


