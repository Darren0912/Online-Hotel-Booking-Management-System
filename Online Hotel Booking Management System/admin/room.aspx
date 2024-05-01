<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="room.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.room" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Table styles */
        .auto-style4 {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .auto-style4 th,
            .auto-style4 td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .auto-style4 tr:nth-child(even) {
                background-color: #f9f9f9;
            }

        /* Column-specific styles */
        .auto-style1 {
            font-weight: bold;
            color: #333;
        }

        .auto-style2 {
            font-weight: bold;
            color: #333;
            width: 150px;
        }

        .auto-style3 {
            width: 200px;
        }

        /* Button styles */
        .action-button {
            padding: 8px 16px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .action-button:hover {
                background-color: #2980b9;
            }

        @media screen and (max-width: 767px) {
            .row.content {
                height: auto;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="w3-container">
        <h1>Room Detail</h1>

        <h3>Type of Room</h3>
        <table class="auto-style4">
            <tr>
                <td class="auto-style2">Image</td>
                <td class="auto-style1">Room Type</td>
                <td class="auto-style1">Description</td>
                <td class="auto-style1">Price</td>
                <td class="auto-style1">&nbsp;Action&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="200px" />
                </td>
                <td>Standard</td>
                <td>2-3 people</td>
                <td>RM 80</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Edit" CssClass="action-button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image3" runat="server" Height="100px" Width="200px" />
                </td>
                <td>Deluxe</td>
                <td>3-4 people</td>
                <td>RM 120</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Edit" CssClass="action-button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image4" runat="server" Height="100px" Width="200px" />
                </td>
                <td>Joint</td>
                <td>5-6 people</td>
                <td>RM 160</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Edit" CssClass="action-button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image5" runat="server" Height="100px" Width="200px" />
                </td>
                <td>Connecting</td>
                <td>7-8 people</td>
                <td>RM 200</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Edit" CssClass="action-button" />
                </td>
            </tr>
        </table>

        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" CssClass="height-100" Height="409px">
                        <strong>
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Add Room Type" />
                            <br />
                            <asp:Label ID="lblTName" runat="server" Text="Type Name:" Visible="False"></asp:Label>
                        </strong>
                        <asp:TextBox ID="txtTName" runat="server" Visible="False"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                            <asp:Label ID="lblTDesc" runat="server" Text="Description:" Visible="False"></asp:Label>
                        </strong>
                        <asp:TextBox ID="txtTDesc" runat="server" Visible="False"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                            <asp:Label ID="lblTPrice" runat="server" Text="Price:" Visible="False"></asp:Label>
                        </strong>
                        <asp:TextBox ID="txtTPrice" runat="server" Visible="False"></asp:TextBox>
                        <br />
                        <br />
                        <strong>
                            <asp:Label ID="lblTImage" runat="server" Text="Image:" Visible="False"></asp:Label>
                        </strong>
                        <asp:FileUpload ID="txtTImage" runat="server" Visible="False" />
                        <br />
                        <br />
                        <asp:Button ID="btnAddType" runat="server" OnClick="btnType_Click" Text="Add" Visible="False" />
                        <strong>
                        <br />
                        </strong>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />

    </div>
</asp:Content>
