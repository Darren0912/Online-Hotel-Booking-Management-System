<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.Login" %>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url(/img/backgroundProfile.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
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


        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            margin-top: 9px;
            height: 25px;
            text-align: center;
        }
    </style>

<form runat="server">
    <div class="container">
        <section>
            <table class="auto-style16">
                <tr>
                    <td class="auto-style18">
                        <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/Mainpage.aspx" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="2">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Login" ForeColor="#333300"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">
                        <div align="center">
                            <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/HotelRoom/LoginMainPage.aspx" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" alih MembershipProvider="AspNetSqlMembershipProvider" Height="174px" Width="345px" BorderPadding="4">
                                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                                <TextBoxStyle Font-Size="0.8em" />
                                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                            </asp:Login>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="2">
                        Forgot password?
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PasswordRecover.aspx">click here</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        <br />
                        New User? Register a new account now.
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CreateUser.aspx">Create new account</asp:HyperLink>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </section>
    </div>
</form>

    <style type="text/css">
        .auto-style13 {
            text-align: center;
            height: 32px;
        }

        .auto-style14 {
            margin-top: 9px;
            height: 178px;
        }

        .auto-style15 {
            text-align: center;
            height: 71px;
        }
        .auto-style18 {
            text-align: left;
            height: 32px;
        }
    </style>

