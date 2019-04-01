<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ModalPaper.aspx.cs" Inherits="Admin_ModalPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Upload Modal Paper
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <asp:TextBox ID="TxtTitle" runat="server" TextMode="MultiLine" placeholder="Enter title of File" Width="100%" Height="50px"></asp:TextBox><br /><br />
    SelectFile:
    <asp:FileUpload ID="FUFile" runat="server" /><br /><br />
    <asp:Button ID="BtnUpload" runat="server" Text="UploadFile" OnClick="BtnUpload_Click" />
</asp:Content>

