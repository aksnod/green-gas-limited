<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Allotment.aspx.cs" Inherits="Admin_Allotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    College Allotment
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    College Name:
    <asp:DropDownList ID="DDLCollege" runat ="server" />
    <br /><br />
    <asp:Button ID="BtnAllot" Text="Allot College" runat ="server" OnClick="BtnAllot_Click" />
</asp:Content>

