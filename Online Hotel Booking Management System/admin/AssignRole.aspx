<%@ page language="C#" autoeventwireup="true" codebehind="AssignRole.aspx.cs" inherits="Online_Hotel_Booking_Management_System.AssignRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Refund Request</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,500;0,700;1,600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style1 {
            width: 296px;
        }

        .auto-style2 {
            height: 29px;
        }


        a {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
            margin: 20px;
        }

            a:hover {
                background-color: #ddd;
                color: black;
            }

        .previous {
            background-color: #f1f1f1;
            color: black;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        form {
            max-width: 1000px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right; /* Move button to the right */
            margin-top: 10px; /* Add spacing between the textarea and button */
        }

            button:hover {
                background-color: #45a049;
            }
    </style>
</head>
<body>
     <a href="admin.aspx" class="previous">&laquo; Back to Admin Page</a>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td colspan="3" class="auto-style2">Membership and Role Management</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Users:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUsers_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                       
                        <asp:Button ID="btnGetUsers" runat="server" OnClick="btnGetUsers_Click" Text="Get Users" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Create Role:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtRole" runat="server" Width="165px"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnCreateRole" runat="server" OnClick="btnCreateRole_Click" Text="Create Role" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Roles:</td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged" Width="87px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                       
                        <asp:Button ID="btnGetRoles" runat="server" OnClick="btnGetRoles_Click" Text="Get Roles" />
                        &nbsp;
                       
                        <asp:Button ID="btnGetUsersinRole" runat="server" OnClick="btnGetUsersinRole_Click" Text="Get User in Role" />
                        <br />
                        <br />
                        <asp:ListBox ID="lstUsers" runat="server" AutoPostBack="True"></asp:ListBox>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Assign Role to user</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        &nbsp;<asp:TextBox ID="txtRoleName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                       
                        <asp:Button ID="btnAssign" runat="server" OnClick="btnAssign_Click" Text="Assign" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
