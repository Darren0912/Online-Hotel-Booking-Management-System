<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fillDetails.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.fillDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
        }

        .btn {
            align-items: center;
            background-color: #fff;
            border: 2px solid #000;
            box-sizing: border-box;
            color: #000;
            cursor: pointer;
            display: inline-flex;
            fill: #000;
            font-family: Inter,sans-serif;
            font-size: 16px;
            font-weight: 600;
            height: 36px;
            justify-content: center;
            letter-spacing: -.8px;
            line-height: 24px;
            min-width: 100px;
            outline: 0;
            padding: 0 17px;
            text-align: center;
            text-decoration: none;
            transition: all .3s;
        }

            .btn:focus {
                color: #171e29;
            }

            .btn:hover {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }

            .btn:active {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }

            .btnCancel {
            align-items: center;
            background-color: #fff;
            border: 2px solid #000;
            box-sizing: border-box;
            color: #000;
            cursor: pointer;
            display: inline-flex;
            fill: #000;
            font-family: Inter,sans-serif;
            font-size: 16px;
            font-weight: 600;
            height: 36px;
            justify-content: center;
            letter-spacing: -.8px;
            line-height: 24px;
            min-width: 100px;
            outline: 0;
            padding: 0 17px;
            text-align: center;
            text-decoration: none;
            transition: all .3s;
        }

            .btnCancel:focus {
                color: #171e29;
            }

            .btnCancel:hover {
                border-color: orangered;
                color: orangered;
                fill: orangered;
            }

            .btnCancel:active {
                border-color: orangered;
                color: orangered;
                fill: orangered;
            }

            body{
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image:url(/img/backgroundProfile.jpg);
            background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
        }

        .container{
            max-width: 800px;
            margin: 0 auto;
            margin-top:5%;
            padding: 20px;
            padding-bottom: 100px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        section{
            margin-top: 10px;
        }

    </style>
</head>
<body>


    <form id="form1" runat="server">
        <div class="container">
            <section>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Complete Your Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Enter you birth date:&nbsp; </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Dotted" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Phone Number:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">City lived:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Country:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" PostBackUrl="~/NormalUser/UserProfile.aspx" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btnCancel" PostBackUrl="~/NormalUser/UserProfile.aspx" />
                    </td>
                </tr>
            </table>
                </section>
        </div>
    </form>
</body>
</html>
