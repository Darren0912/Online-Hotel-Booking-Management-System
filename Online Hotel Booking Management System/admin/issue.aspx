<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="issue.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.issue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .action-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            color: #fff;
            background-color: #2ecc71;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .action-button:hover {
                background-color: #27ae60;
            }

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
            text-align:center;
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
            width: 441px;
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

        .auto-style14 {
            width: 165px;
        }

        .auto-style15 {
            font-weight: bold;
            color: #336699;
            height: 41px;
            width: 165px;
        }

        .auto-style18 {
            font-weight: bold;
            color: #336699;
            width: 441px;
            height: 41px;
        }
        .auto-style19 {
            width: 241px;
        }
        .auto-style20 {
            font-weight: bold;
            color: #336699;
            width: 241px;
            height: 41px;
        }
        .auto-style21 {
            font-weight: bold;
            color: #336699;
            width: 161px;
        }
        .auto-style22 {
            font-weight: bold;
            color: #336699;
            width: 161px;
            height: 41px;
        }
        .auto-style23 {
            width: 155px;
        }
        .auto-style24 {
            font-weight: bold;
            color: #336699;
            width: 155px;
            height: 41px;
        }
        .auto-style25 {
            font-weight: bold;
            color: #336699;
            width: 155px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="w3-container">

        <h1>Customer Issue</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT
    Room.roomID,
    roomType.typeName,
    Reservation.status,
Reservation.checkInDate,
Reservation.checkOutDate,
Customer.customerID,
Customer.customerName
FROM
    Customer
INNER JOIN
    Reservation ON Reservation.customerID=Customer.customerID
INNER JOIN
    Room ON Room.roomID = Reservation.roomID
INNER JOIN
    roomType ON roomType.typeID = Room.typeID
WHERE
    Reservation.checkInDate = @InDate;"
            DeleteCommand="DELETE FROM [Customer] WHERE [customerID] = @customerID" InsertCommand="INSERT INTO [Customer] ([customerID], [customerName], [password], [email], [phoneNum]) VALUES (@customerID, @customerName, @password, @email, @phoneNum)" UpdateCommand="UPDATE [Customer] SET [customerName] = @customerName, [password] = @password, [email] = @email, [phoneNum] = @phoneNum WHERE [customerID] = @customerID">
            <DeleteParameters>
                <asp:Parameter Name="customerID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="customerID" Type="String" />
                <asp:Parameter Name="customerName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phoneNum" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="InDate" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="customerName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phoneNum" Type="String" />
                <asp:Parameter Name="customerID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <table class="auto-style7">
            <tr>
                <th class="auto-style23">Type Issue</th>
                <th class="auto-style14">Customer Name</th>
                <th class="auto-style21">Email</th>
                <th class="auto-style8">Desciption</th>
                <th class="auto-style19">Report Date</th>
                <th>Action</th>
            </tr>
            <tr>
                <td class="auto-style24">Facility Issue</td>
                <td class="auto-style15">Siew Jun Qiang</td>
                <td class="auto-style22">sjq@gmail.com</td>
                <td class="auto-style18">Facility Issue</td>
                <td class="auto-style20">12/15/2023</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Reply" CssClass="action-button" PostBackUrl="reply.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Service Issue</td>
                <td class="auto-style14">Hew Kian Feng</td>
                <td class="auto-style21">hkf@gmail.com</td>
                <td class="auto-style8">Service Issue</td>
                <td class="auto-style19">12/15/2023</td>
                <td>
                    <asp:Button ID="Button10" runat="server" Text="Reply" CssClass="action-button" PostBackUrl="reply.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Room Issue</td>
                <td class="auto-style14">Ng DIng Lun</td>
                <td class="auto-style21">ngl@gmail.com</td>
                <td class="auto-style8">Room Issue</td>
                <td class="auto-style19">12/15/2023</td>
                <td>
                    <asp:Button ID="Button11" runat="server" Text="Reply" CssClass="action-button" PostBackUrl="reply.aspx" />
                </td>
            </tr>
        </table>
        <br />



    </div>

</asp:Content>
