<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="RegstnMgmt.aspx.cs" Inherits="Admin_RegstnMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Registration Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
            <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
            <asp:BoundField DataField="SelectGroup" HeaderText="SelectGroup" SortExpression="SelectGroup" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="ProfilePic" HeaderText="ProfilePic" SortExpression="ProfilePic" />
            <asp:BoundField DataField="RegDT" HeaderText="RegDT" SortExpression="RegDT" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Registration] ([UName], [FName], [Gender], [MobileNo], [Qualification], [SelectGroup], [Address], [Email], [ProfilePic], [RegDT]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UName], [FName], [Gender], [MobileNo], [Qualification], [SelectGroup], [Address], [Email], [ProfilePic], [RegDT] FROM [Registration] ORDER BY [RegDT]" UpdateCommand="UPDATE [Registration] SET [UName] = ?, [FName] = ?, [Gender] = ?, [MobileNo] = ?, [Qualification] = ?, [SelectGroup] = ?, [Address] = ?, [ProfilePic] = ?, [RegDT] = ? WHERE (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="FName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="SelectGroup" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="FName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="SelectGroup" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

