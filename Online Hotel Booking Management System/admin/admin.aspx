<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding-top: 50px;
        }

        h1 {
            text-align: center;
            font-size: 32px;
            color: #333;
        }

        .profile-image {
            display: block;
            margin: 0 auto;
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .row-header {
            font-weight: bold;
            color: #333;
        }

        .input-field {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .dropdown-field {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .action-buttons {
            margin-top: 20px;
            text-align: center;
        }

        .custom-button {
        padding: 12px 24px;
        margin-right: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-size: 16px;
    }

    .custom-button:hover {
        background-color: #45a049 !important;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="container">
        <h1>Admin Profile</h1>

        <asp:Image ID="aImage" runat="server" CssClass="profile-image" Height="210px" Width="210px" ImageUrl="~/img/user2.jpg" />

        <table>
            <tr class="row-header">
                <td>Name :</td>
                <td>
                    <asp:TextBox ID="name" runat="server" ReadOnly="True" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            <tr class="row-header">
                <td>Password :</td>
                <td>
                    <asp:TextBox ID="aPassword" runat="server" ReadOnly="True" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            <tr class="row-header">
                <td>Email :</td>
                <td>
                    <asp:TextBox ID="aEmail" runat="server" ReadOnly="True" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            <tr class="row-header">
                <td>Phone Number :</td>
                <td>
                    <asp:TextBox ID="aPhoneNum" runat="server" ReadOnly="True" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            </table>

        <div class="action-buttons">
            <asp:Button CssClass="custom-button" ID="btnCancel" runat="server" BackColor="#999999" BorderColor="Black" EnableTheming="True" Text="Cancel" Width="175px" Visible="False" />
            <asp:Button CssClass="custom-button" ID="Button1" runat="server" BackColor="#999999" BorderColor="Black" EnableTheming="True" Text="Change Information" Width="175px" />
        </div>
    </div>
</asp:Content>