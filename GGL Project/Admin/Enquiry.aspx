<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Admin_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Enquiry Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EnquiryID" DataSourceID="SqlDataSource1" Height="336px" Width="363px">
        <Columns>
            <asp:BoundField DataField="EnquiryID" HeaderText="EnquiryID" InsertVisible="False" ReadOnly="True" SortExpression="EnquiryID" />
            <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
            <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
            <asp:BoundField DataField="EnquiryDT" HeaderText="EnquiryDT" SortExpression="EnquiryDT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Tbl_Enquiry] ORDER BY [EnquiryID] DESC"></asp:SqlDataSource>
</asp:Content>

