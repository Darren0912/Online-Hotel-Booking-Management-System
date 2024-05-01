<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
            font-family: Arial, sans-serif;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Styling for specific columns */
        .auto-style6, .auto-style9, .auto-style10, .auto-style11, .auto-style12, .auto-style13 {
            /* Add your specific styles here */
            /* For example: */
            font-weight: bold;
            color: #336699;
        }

        @media screen and (max-width: 767px) {
            .row.content {
                height: auto;
            }
        }
        .auto-style6 {
            width: 92px;
        }
        .auto-style7 {
            width: 100%;
            height: 207px;
        }
        .auto-style8 {
            width: 131px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            width: 92px;
            height: 41px;
        }
        .auto-style11 {
            width: 131px;
            height: 41px;
        }
        .auto-style12 {
            width: 134px;
        }
        .auto-style13 {
            height: 41px;
            width: 134px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="w3-container">

        <h1>Customer Detail</h1>
        <table class="auto-style7">
            <tr>
                <th class="auto-style12">Customer ID</th>
                <th>Customer Name</th>
                <th>Room ID</th>
                <th class="auto-style6">Room Type</th>
                <th class="auto-style8">Check In Date</th>
                <th>Check Out Date</th>
                <th>Status</th>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;C001&nbsp;</td>
                <td class="auto-style10">Smith</td>
                <td class="auto-style9">R001</td>
                <td class="auto-style10">Standard</td>
                <td class="auto-style11">12/10/2023</td>
                <td class="auto-style9">12/15/2023</td>
                <td class="auto-style9">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Uncheck</asp:ListItem>
                        <asp:ListItem>CheckIn</asp:ListItem>
                        <asp:ListItem>CheckOut</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">C002</td>
                <td class="auto-style6">Jackson</td>
                <td>R002</td>
                <td class="auto-style6">Standard</td>
                <td class="auto-style8">12/10/2023</td>
                <td>12/15/2023</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList4" runat="server">
                        <asp:ListItem>Uncheck</asp:ListItem>
                        <asp:ListItem>CheckIn</asp:ListItem>
                        <asp:ListItem>CheckOut</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">C003</td>
                <td class="auto-style6">Johnson</td>
                <td>R003</td>
                <td class="auto-style6">Standard</td>
                <td class="auto-style8">12/10/2023</td>
                <td>12/15/2023</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                        <asp:ListItem>Uncheck</asp:ListItem>
                        <asp:ListItem>CheckIn</asp:ListItem>
                        <asp:ListItem>CheckOut</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
        <br />

        

    </div>

</asp:Content>

