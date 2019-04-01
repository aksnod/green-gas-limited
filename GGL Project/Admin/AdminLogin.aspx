<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
         #Main {
             height: 401px;
             margin-top: 3px;
         }
        .auto-style1 {
            width: 70%; 
            color:white;                      
        }
        .auto-style2 {
            width: 330px;
            text-align: center;
        }
    </style>
    <link href="../css/AdminLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">  
         <div id="Outer">
            <div id="header">
                 <div id="logo">
                      <img src="../images/LogoMakr.png" style="height:147px; width:126px;" />
                 </div>
                 <div id="title">Admin Login</div>
            </div>        
        <div id="Main">
            <table style="height:279px; width:392px; color:red; z-index: 1; left: 81px; top: 248px; position: absolute;">
                <tr>
                    <td class="auto-style1"><h1>Admin ID</h1></td>
                    <td>
                        <asp:TextBox ID="TxtAdminid" runat="server" Height="20px" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>

                    <td class="auto-style1"><h1>Password</h1></td>
                    <td><asp:TextBox ID="Txtpassword" runat="server" Height="20px" Width="200px" TextMode="Password"></asp:TextBox></td>
                    </tr>
                
            <tr>
                    <td class="auto-style2" colspan="2">
                    &nbsp;
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="48px" ImageUrl="~/images/Login.jpg" OnClick="ImageButton3_Click" />
                    </td>
                  </tr>  
           </table>  
    </div>
        </div>
    </form>
</body>
</html>
