<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecover.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.PasswordRecover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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

        .box{
            margin:auto;
              width: 50%;
              padding:100px;
              border:1px solid black;
        }

        .auto-style1 {
            text-align: center;
        }

    </style>

</head>
<body>


    <div class="container">
        <section>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Recover Your password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" CssClass="box" MembershipProvider="AspNetSqlMembershipProvider" SubmitButtonText="Next" UserNameLabelText="Enter your username: " UserNameInstructionText="">
            </asp:PasswordRecovery>
                    </td>
                </tr>
            </table>
        </div>
    </form>
            </section>
</div>
</body>
</html>
