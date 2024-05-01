<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Online_Hotel_Booking_Management_System.NormalUser.UserProfile" %>

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

        .profilePicture{
            border-radius:50%;
        }

        .textbox{
            border-radius: 3px;
        }

        .logout{
            text-decoration:none;
            color:red;
            padding:5px;
            border:1px solid red;
            margin-left: 45%;
            margin-top:5px;
            padding-left:15px;
            padding-right:15px;
        }

        .logout:hover{
            color:white;
            background-color:red;
            border:1px solid red;
        }

        .auto-style17 {
            height: 18px;
        }


        .box {
            margin-top: 15px;
        }

        .auto-style19 {
            height: 36px;
            text-align: center;
        }


        .auto-style23 {
            height: 26px;
            width: 10%;
            text-align: right;
        }


        .chgPswd {
            margin-right: 35px;
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

        .btn{
            padding:5px;
            margin:3px;
            cursor:pointer;
        }

        .btn:hover{
              background-color: #555555;
             color: white;
        }

        .auto-style28 {
            height: 25px;
            text-align: center;
        }

        .auto-style29 {
            width: 100%;
        }

    </style>
<form runat="server">
    <div class="container">
        <section>
            
            <table class="auto-style29">
                <tr>
                    <td class="auto-style11" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="User Profile"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                        <asp:Image ID="Image1" runat="server" Height="132px" ImageUrl="~/img1/user2.jpg" Width="133px" CssClass="profilePicture" />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="3">
                        <asp:Button ID="Button2" runat="server" Text="Upload photo" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="btn" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">User Name:</td>
                    <td class="auto-style14">
                        <asp:LoginName ID="LoginName1" runat="server" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">Birth Date:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" CssClass="textbox" >12/12/2023</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">Email: </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" CssClass="textbox">Ng1234@gmail.com</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">Location:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" CssClass="textbox">Kuala Lumpur,Malaysia</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">Phone Number:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" CssClass="textbox">+60 1234 567</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28" colspan="3">
                        <asp:Label ID="Label2" runat="server" Font-Size="XX-Small" Text="*Please keep updating your basic information to let us know more about you  "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style28" colspan="3">
                        <asp:Button ID="changePassword" runat="server" Text="Change Password" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="btn" PostBackUrl="~/NormalUser/ChangePassword.aspx" />
                        <asp:Button ID="Button3" runat="server" Text="Edit Profile" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="btn" PostBackUrl="~/NormalUser/fillDetails.aspx" />
                    </td>
                </tr>
                <tr>

                    <td class="auto-style17" colspan="3">
                        <div class="box">
                            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/Mainpage.aspx" CssClass="logout" LogoutAction="Redirect" />
                        </div>
                    </td>
                </tr>
            </table>
        </section>
    </div>
</form>
    <style type="text/css">
        .auto-style11 {
            height: 58px;
            text-align: center;
        }

        .auto-style13 {
            width: 20%;
            height: 26px;
        }

        .auto-style14 {
            height: 26px;
            width: 35%;
        }
    </style>

