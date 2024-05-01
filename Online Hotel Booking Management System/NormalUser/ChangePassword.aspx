<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.ChangePassword" %>



<style>
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

<form runat="server">
    <div class="container">
        <section>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/NormalUser/UserProfile.aspx" ContinueDestinationPageUrl="~/NormalUser/UserProfile.aspx" BorderStyle="Solid" BorderWidth="1px" ChangePasswordButtonText="Confirm">
                            <TitleTextStyle Font-Bold="True" Font-Size="Large" />
                        </asp:ChangePassword>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </section>
    </div>
</form>

<style type="text/css">
    .auto-style11 {
        width: 25%;
    }

    .auto-style12 {
        width: 45%;
    }

    .auto-style13 {
        width: 30%;
        margin-top: 9px;
    }
</style>

