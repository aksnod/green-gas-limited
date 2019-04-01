<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="UploadResult.aspx.cs" Inherits="Admin_UploadResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Upload Result
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">

    <table class="auto-style1">
    <tr>
        <td>User ID:</td>
        <td>
            <asp:DropDownList ID="DdlUserId" runat="server" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Email] FROM [Registration]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>Total Marks:</td>
        <td>
            <asp:TextBox ID="TxtTotal" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Obtained Marks:</td>
        <td>
            <asp:TextBox ID="TxtObtained" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Category:</td>
        <td>
            <asp:DropDownList ID="DdlCategory" runat="server">
                <asp:ListItem Value="&quot;&quot;">--Select--</asp:ListItem>
                <asp:ListItem>General</asp:ListItem>
                <asp:ListItem>SC/ST</asp:ListItem>
                <asp:ListItem>OBC</asp:ListItem>
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
            <asp:Button ID="BtnSave" runat="server" Height="31px" OnClick="BtnSave_Click" Text="Save" Width="109px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

