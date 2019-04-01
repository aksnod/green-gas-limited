<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="Admin_AdmitCard" %>

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
Add Admit Card
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
<div id="dvadd">

    <table class="auto-style1">
        <tr>
            <td>Student ID:</td>
            <td>
                <asp:DropDownList ID="DdlStuId" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email" OnSelectedIndexChanged="DdlStuId_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Email] FROM [Registration]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Date of Exam:</td>
            <td>
                <asp:TextBox ID="TxtExamDate" runat="server" style="margin-top: 0px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Venue of Exam:</td>
            <td>
                <asp:TextBox ID="TxtVenue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Time of Exam:</td>
            <td>
                <asp:TextBox ID="TxtTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add Admit Card" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>

