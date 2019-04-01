<%@ Page Title="" Language="C#" MasterPageFile="~/StudentZone/StudentMaster.master" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="StudentZone_AdmitCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #dvadd {
    padding:25px;
    margin:25px;
    border-radius:20px;
    background-color:aquamarine;
    padding-left:50px;
    padding-top:30px;
    font-size:30px;
    }
        #dvadd table {
        border-radius:15px;
        background-color:darkviolet;
        padding:20px;
        color:white;
        }
        .auto-style1 {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Download Admit Card
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="dvadd">
        
        <table class="auto-style1">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="BtnGetAdmit" runat="server" Text="Display Detail" OnClick="BtnGetAdmit_Click" ForeColor="white" Height="35px" Width="140px" BackColor="brown" BorderColor="RosyBrown" Font-Size="20px" />
                </td>
                
            </tr>
        </table>
        
    </div>
</asp:Content>

