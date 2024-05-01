<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .row.content {
            height: 100%
        }

        .sidenav {
            background-color: #808080;
            height: 100%;
        }

        .col-sm-9, .col-sm-4, .col-sm-3, .col-sm-6, .col-sm-8 {
            position: relative;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px
        }

        .col-sm-4 {
            width: 33.33333333%
        }

        .col-sm-3 {
            width: 25%
        }

        .col-sm-6 {
            width: 50%
        }

        .col-sm-8 {
            width: 75%
        }

        .col-sm-3, .col-sm-4, .col-sm-6, .col-sm-8, .col-sm-9 {
            float: left
        }

        .col-sm-9 {
            width: 100%
        }

        @media screen and (max-width: 767px) {
            .row.content {
                height: auto;
            }
        }

        .row {
            margin-right: -15px;
            margin-left: -15px
        }

        .size-div {
            text-align: center;
            color: darkblue;
        }

        .icon-div {
            float: left;
            font-size: 50px;
            position: absolute;
        }

        .well {
            min-height: 20px;
            padding: 19px;
            margin-bottom: 20px;
            background-color: #f5f5f5;
            border: 1px solid #e3e3e3;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05)
        }

        .styled-table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

            .styled-table th,
            .styled-table td {
                border: 1px solid #dddddd;
                padding: 8px;
                text-align: left;
            }

            .styled-table th {
                background-color: #f2f2f2;
                font-weight: bold;
            }

            .styled-table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .styled-table tr:hover {
                background-color: #f1f1f1;
            }

        .header-row th {
            background-color: #4CAF50;
            color: white;
        }

        .btn-check {
            float: right;
            padding: 8px 16px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }


            .btn-check:hover {
                background-color: #2980b9;
            }
        .auto-style2 {
            position: relative;
            min-height: 1px;
            width: 75%;
            float: left;
            left: 0px;
            top: 10px;
            padding-left: 15px;
            padding-right: 15px;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="w3-container ">

        <h1>Dashboard</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT 
*
FROM
Payment
Inner Join
Reservation ON Reservation.reservationID=Payment.reservationID;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT 
*
FROM
Issues
Inner Join
Customer ON Customer.customerID=Issues.customerID;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT COUNT(*) AS refundNum, Payment.paymentDate
FROM Refund
INNER JOIN Payment ON Payment.paymentID = Refund.paymentID
GROUP BY Payment.paymentDate;"></asp:SqlDataSource>
        <asp:Label ID="l" runat="server" Text="Date: "></asp:Label>
        <asp:Label ID="date" runat="server"></asp:Label>
        <br />
        <div class="col-sm-9">
            <div class="row">
                <div class="col-sm-4">
                    <div class="well">
                        <div class=" fa fa-sign-in icon-div"></div>
                        <h4 class="size-div">Today Check-In</h4>
                        <p class="size-div">
                            <asp:Label ID="checkIn" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="well">
                        <div class=" fa fa-sign-out icon-div"></div>
                        <h4 class="size-div">Today Check-Out</h4>
                        <p class="size-div">
                            <asp:Label ID="checkOut" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="well">
                        <div class=" fa fa-check-square icon-div"></div>
                        <h4 class="size-div">Available Room</h4>
                        <p class="size-div">
                            <asp:Label ID="roomNum" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="well">
                        <asp:Chart ID="Chart1" runat="server" Width="450px" AntiAliasing="None" DataSourceID="SqlDataSource1">
    <Series>
        <asp:Series Name="Series1" XValueMember="checkInDate" YValueMembers="amount" YValuesPerPoint="2" BackGradientStyle="TopBottom" BackImageTransparentColor="White" BackSecondaryColor="64, 64, 64" BorderColor="Black" Color="128, 128, 255" MarkerBorderColor="White" MarkerColor="White" ShadowColor="ActiveBorder" XValueType="Date" YValueType="Double">
        </asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BackColor="LightSteelBlue" BackGradientStyle="VerticalCenter" BackImageTransparentColor="White" BackSecondaryColor="White" ShadowColor="DarkGray" ShadowOffset="4">
        </asp:ChartArea>
    </ChartAreas>
    <Titles>
        <asp:Title BackColor="MidnightBlue" BackGradientStyle="LeftRight" BackImageTransparentColor="White" BackSecondaryColor="White" Name="Total Revenue" ShadowColor="White" Text="Total Revenue" Font="Microsoft Sans Serif, 12pt">
        </asp:Title>
    </Titles>
</asp:Chart>

                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="well">
                        <asp:Chart ID="Chart2" runat="server" Width="450px" AntiAliasing="None" DataSourceID="SqlDataSource3">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="paymentDate" YValueMembers="refundNum" YValuesPerPoint="2" BackGradientStyle="LeftRight" BackImageTransparentColor="White" BackSecondaryColor="64, 64, 64" BorderColor="Black" Color="Red" MarkerBorderColor="White" MarkerColor="White" ShadowColor="ActiveBorder" XValueType="Date" YValueType="Double" ChartType="Line">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1" BackColor="LightSteelBlue" BackGradientStyle="VerticalCenter" BackImageTransparentColor="White" BackSecondaryColor="White" ShadowColor="DarkGray" ShadowOffset="4">
                                </asp:ChartArea>
                            </ChartAreas>
                            <Titles>
                                <asp:Title BackColor="DeepSkyBlue" BackGradientStyle="LeftRight" BackImageTransparentColor="White" BackSecondaryColor="White" Name="Total Revenue" ShadowColor="White" Text="Total Refund" Font="Microsoft Sans Serif, 12pt">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="auto-style2">
                    <div class="well">
                        <h1 style="position: absolute">Customer Issue</h1>
                        <p>
                            <asp:Button ID="Button1" runat="server" Text="Check Information" CssClass="btn-check" PostBackUrl="~/issue.aspx" />
                        </p>
                        <br />
                        <br />
                        <br />
                        <table class="styled-table">

                            <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                                <HeaderTemplate>
                                    <tr class="header-row">
                                        <th>Issue Type</th>
                                        <th>Customer Name</th>
                                        <th>Report Date</th>
                                    </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("issueType") %></td>
                                        <td><%# Eval("customerName") %></td>
                                        <td><%# Eval("reportDate","{0:dd/M/yyyy}") %></td>
                                    </tr>

                                </ItemTemplate>
                            </asp:Repeater>


                        </table>
                    </div>
                </div>
            </div>
            <br />

        </div>
    </div>

</asp:Content>