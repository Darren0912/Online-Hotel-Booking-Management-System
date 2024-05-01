<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.CreateUser" %>

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
</style>


<form runat="server">
    <div class="container">
        <section>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style19" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Create New Account"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="3">
                        <div align="center">
                            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" CancelDestinationPageUrl="~/Mainpage.aspx" ContinueDestinationPageUrl="~/HotelRoom/LoginMainPage.aspx" CssClass="auto-style15" FinishDestinationPageUrl="~/HotelRoom/LoginMainPage.aspx" Font-Names="Verdana" Font-Size="0.8em" Height="16px" MembershipProvider="AspNetSqlMembershipProvider" Width="592px">
                                <continuebuttonstyle backcolor="#FFFBFF" bordercolor="#CCCCCC" borderstyle="Solid" borderwidth="1px" font-names="Verdana" forecolor="#284775" />
                                <createuserbuttonstyle backcolor="#FFFBFF" bordercolor="#CCCCCC" borderstyle="Solid" borderwidth="1px" font-names="Verdana" forecolor="#284775" />
                                <titletextstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                <wizardsteps>
                                    <asp:CreateUserWizardStep runat="server">
                                        <customnavigationtemplate>
                                            <table border="0" cellspacing="5" style="width: 100%; height: 100%;">
                                                <tr align="right">
                                                    <td align="right" colspan="0">
                                                        <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" ForeColor="#284775" Text="Create User" ValidationGroup="CreateUserWizard2" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </customnavigationtemplate>
                                    </asp:CreateUserWizardStep>
                                    <asp:CompleteWizardStep runat="server" />
                                </wizardsteps>
                                <headerstyle backcolor="#5D7B9D" borderstyle="Solid" font-bold="True" font-size="0.9em" forecolor="White" horizontalalign="Center" />
                                <navigationbuttonstyle backcolor="#FFFBFF" bordercolor="#CCCCCC" borderstyle="Solid" borderwidth="1px" font-names="Verdana" forecolor="#284775" />
                                <sidebarbuttonstyle borderwidth="0px" font-names="Verdana" forecolor="White" />
                                <sidebarstyle backcolor="#5D7B9D" borderwidth="0px" font-size="0.9em" verticalalign="Top" />
                                <stepstyle borderwidth="0px" />
                            </asp:CreateUserWizard>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
            </table>
        </section>
    </div>
</form>

<style type="text/css">
    
    .auto-style13 {
        width: 623px;
    }

    .auto-style15 {
        margin-left: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
    }

    .auto-style16 {
        height: 12px;
    }

    .auto-style18 {
        width: 321px;
    }

    .auto-style19 {
        text-align: center;
        height: 39px;
    }

    .auto-style20 {
        width: 464px;
    }
</style>


