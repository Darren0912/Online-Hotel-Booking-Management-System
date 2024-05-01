<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TQpage.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.HotelRoom.TQpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 30%;
            height: 135px;
        }

        .auto-style2 {
            width: 328px;
        }

        .auto-style3 {
            margin-left: 0px;
        }

        .auto-style4 {
            width: 371px;
        }

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            width: 50%;
            height: 135px;
        }

        .auto-style7 {
            height: 135px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }

        .container{
            max-width: 800px;
            margin: 0 auto;
            margin-top: 10%;
            padding: 20px;
            padding-bottom: 100px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        section{
            margin-top: 10px;
        }

        .btnBackHome {
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

            .btnBackHome:focus {
                color: #171e29;
            }

            .btnBackHome:hover {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }

            .btnBackHome:active {
                border-color: darkcyan;
                color: darkcyan;
                fill: darkcyan;
            }
    </style>

    <meta http-equiv="refresh" content="5.35;url=loginMainPage.aspx" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <section>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style3" EnableViewState="False" Height="92px" ImageUrl="~/img/7efs.gif" Width="123px" />

                        </td>
                        <td class="auto-style6">
                            <br />
                            <br />
                            <strong>Thank you, your booking has been confirmed.</strong><br />
                            <br />
                            <em>Click &quot;back to home&quot; button or wait 5 seconds
                            <br />
                            to redirect back to home page</em></td>
                        <td class="auto-style7"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="btnBackHome" runat="server" Text="Back to home" CssClass="btnBackHome" PostBackUrl="~/HotelRoom/LoginMainPage.aspx" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </section>
        </div>
    </form>
</body>
</html>
