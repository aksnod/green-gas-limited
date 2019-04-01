<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Colleges.aspx.cs" Inherits="Admin_Colleges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #dvadd {
    padding:25px;
    margin:25px;
    border-radius:20px;
    background-color:aquamarine;
    }
        #dvadd table {
        border-radius:15px;
        background-color:darkviolet;
        padding:20px;
        color:white;
        }
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Add New College
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div id="dvadd">

        <table class="auto-style1">
            <tr>
                <td>College Name:</td>
                <td>
                    <asp:TextBox ID="TxtColName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>College Code:</td>
                <td>
                    <asp:TextBox ID="TxtColCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Type:</td>
                <td>
                    <asp:DropDownList ID="DdlType" runat="server">
                        <asp:ListItem Value="&quot;&quot;">--Select--</asp:ListItem>
                        <asp:ListItem>Govt</asp:ListItem>
                        <asp:ListItem>Private</asp:ListItem>
                        <asp:ListItem>Aided</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Rank:</td>
                <td>
                    <asp:TextBox ID="TxtRank" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add College" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

</div>
</asp:Content>

