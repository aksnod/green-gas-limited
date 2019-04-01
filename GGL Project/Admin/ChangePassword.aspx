<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            color:black;
            text-align:center;
            padding:15px;
            border:20px double #00ff90;
            border-radius:15px;
            font-family:'Times New Roman';
            font-size:25px;
            font-weight:bold;
        }
            .auto-style1:hover {
            background-color:blue;
            color:white;
            font-weight:bold;
            border-radius:0px 15px 0px 15px;
            }
        .txt{
            width:250px;
            height:35px;
            font-size:large;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" runat="Server">
   
    Change Password
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" runat="Server">
    <br />
    <br />
     <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Current Password</td>
            <td>
                <asp:TextBox ID="TxtOPass" runat="server" TextMode="Password" Cssclass="txt" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>New Password</td>
            <td>
                <asp:TextBox ID="TxtNewPass" runat="server" TextMode="Password" Cssclass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="TxtCPass" runat="server" TextMode="Password" Cssclass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Change Password" Width="155px" Height="35px" Font-Bold="True" Font-Size="16px" ForeColor="#FF5050" OnClick="Button1_Click" />
            </td>
        </tr> 
                 <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

