<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.admin.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
            width: 475px;
            height: 338px;
        }

        @media screen and (max-width: 767px) {
            .row.content {
                height: auto;
            }
        }

        .auto-style5 {
            height: 338px;
        }
    .auto-style6 {
        text-decoration: underline;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20%" class="w3-container">

        <h1>Payment Detail</h1>
        Choose the payment date to check:<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT distinct year([paymentDate]) as year FROM [Payment]"></asp:SqlDataSource>
        <br />
        Year:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="year" DataValueField="year">
        </asp:RadioButtonList>
&nbsp;
        <br />
        Month :&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">January</asp:ListItem>
            <asp:ListItem Value="2">February</asp:ListItem>
            <asp:ListItem Value="3">March</asp:ListItem>
            <asp:ListItem Value="4">April</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">July</asp:ListItem>
            <asp:ListItem Value="8">August</asp:ListItem>
            <asp:ListItem Value="9">September</asp:ListItem>
            <asp:ListItem Value="10">October</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">December</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT 
Customer.customerName,
Customer.email,
Customer.phoneNum,
Reservation.roomID
FROM
Payment
Inner Join
Reservation ON Reservation.reservationID=Payment.reservationID
Inner Join
Customer ON Customer.customerID=Reservation.customerID
WHERE
Payment.paymentID=@PID;">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:room %>" SelectCommand="SELECT * FROM [Payment] WHERE (year([paymentDate]) = year(@pYear)) AND  (MONTH([paymentDate]) = @pMonth) " DeleteCommand="DELETE FROM [Payment] WHERE [paymentID] = @paymentID" InsertCommand="INSERT INTO [Payment] ([paymentID], [reservationID], [amount], [paymentStatus]) VALUES (@paymentID, @reservationID, @amount, @paymentStatus)" UpdateCommand="UPDATE [Payment] SET [reservationID] = @reservationID, [amount] = @amount, [paymentStatus] = @paymentStatus WHERE [paymentID] = @paymentID">
            <DeleteParameters>
                <asp:Parameter Name="paymentID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="paymentID" Type="String" />
                <asp:Parameter Name="reservationID" Type="String" />
                <asp:Parameter Name="amount" Type="Double" />
                <asp:Parameter Name="paymentStatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="pYear" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="pMonth" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="reservationID" Type="String" />
                <asp:Parameter Name="amount" Type="Double" />
                <asp:Parameter Name="paymentStatus" Type="String" />
                <asp:Parameter Name="paymentID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

        <table style="width: 100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Panel ID="Panel1" runat="server" CssClass="height:100%" Height="409px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="paymentID" DataSourceID="SqlDataSource3" Width="720px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="paymentID" HeaderText="Payment ID" ReadOnly="True" SortExpression="paymentID" />
                            <asp:BoundField DataField="reservationID" HeaderText="Reservation ID" SortExpression="reservationID" />
                            <asp:BoundField DataField="amount" HeaderText="Amount (RM)" SortExpression="amount" DataFormatString="RM{0}" />
                            <asp:BoundField DataField="paymentDate" HeaderText="Payment Date" SortExpression="paymentDate" DataFormatString="{0:(MM/dd/yyyy)}" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                        </asp:Panel>
                </td>
                <td class="auto-style5">
                    <asp:Panel ID="Panel2" runat="server" CssClass="height:100%" Height="409px">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="445px">
                        <HeaderTemplate>
                            <span class="auto-style6"><strong>Customer Information</strong></span>
                        </HeaderTemplate>
                        <ItemTemplate>
                            Customer Name:
                            <asp:Label ID="customerNameLabel" runat="server" Text='<%# Eval("customerName") %>' />
                            <br />
                            Email:
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            Phone Number:
                            <asp:Label ID="phoneNumLabel" runat="server" Text='<%# Eval("phoneNum") %>' />
                            <br />
                            Room ID:
                            <asp:Label ID="roomIDLabel" runat="server" Text='<%# Eval("roomID") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                        </asp:Panel>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>

