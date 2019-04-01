<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CollegeAllotment.aspx.cs" Inherits="Admin_CollegeAllotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    College Allotment
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ChoiceNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ChoiceNo" HeaderText="ChoiceNo" InsertVisible="False" ReadOnly="True" SortExpression="ChoiceNo" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
            <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Choice1" HeaderText="Choice1" SortExpression="Choice1" />
            <asp:BoundField DataField="Choice2" HeaderText="Choice2" SortExpression="Choice2" />
            <asp:BoundField DataField="Choice3" HeaderText="Choice3" SortExpression="Choice3" />
            <asp:BoundField DataField="Choice4" HeaderText="Choice4" SortExpression="Choice4" />
            <asp:BoundField DataField="Choice5" HeaderText="Choice5" SortExpression="Choice5" />
            <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="Allotment.aspx?uid={0}" HeaderText="Confirm College" Text="Confirm" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblChoice] ORDER BY [RollNo]"></asp:SqlDataSource>

</asp:Content>

