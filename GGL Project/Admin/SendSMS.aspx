<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="Admin_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #dvsms {
        width:80%;
        margin:15px 10%;
        padding:15px 10%;
        border-radius:20px;
        background-color:lightgreen;
        color:white;
        }
            #dvsms input[type='text'],textarea {
            width:90%;
            height:55px;
            border:5px;
            color:#00ff90;
            font-weight:bold;
            font-size:22px;
            resize:none;
            }
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Send SMS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div id="dvsms">

        <table class="auto-style1">
            <tr>
                <td>Send To</td>
                <td>
                    <asp:TextBox ID="TxtMobNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="TxtMessage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnSendSMS" runat="server" Text="Send SMS" OnClick="BtnSendSMS_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

