<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
               
    </style>
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="box">
        <div id="header">
            <div id="headlogo">
                <img src="images/LogoMakr.png"  height="150px" width="120px" />
            </div>
            <div id="headline"><h1>LogIn Panel</h1></div>
            <a href="Default.aspx"><h3 style="color:white">Home</h3></a>
        </div>
    <table id="tab1">
        <tr>
            <td><h2>User Id</h2></td>
            <td><asp:TextBox ID="TxtUID" runat="server"></asp:TextBox> </td>
        <td>
            <asp:RegularExpressionValidator ID="reg" runat="server" ControlToValidate="TxtUID" ErrorMessage="Plz enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
            </tr>
        <tr>
        <td><h2>Password</h2></td>
            <td>
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" required="required"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td colspan="2">
            <a href="#" style="color:white"><h2>Forget Password</h2></a> 
                </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:left">
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="btnlogin" runat="server" Text="Login" height="30px" Width="131px" ImageUrl="images/Login.jpg" OnClick="btnlogin_Click"/>
            </td>
        </tr>
        <tr>
        <td colspan="2">
            <a href="Registrationform.aspx" style="color:white"><h3>New User SignUp</h3></a></td>
        </tr>
    </table>
            </div>
    </form>
</body>
</html>
