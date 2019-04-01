<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="LoginInfo.aspx.cs" Inherits="Admin_LoginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    User's Login Information
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" HorizontalAlign="Left" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="LCount" HeaderText="LCount" SortExpression="LCount" />
            <asp:BoundField DataField="LoginTime" HeaderText="LoginTime" SortExpression="LoginTime" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE (([UserId] = ?) OR ([UserId] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Login] ([UserId], [Status], [LCount], [LoginTime]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [UserId], [Status], [LCount], [LoginTime] FROM [Login]" UpdateCommand="UPDATE [Login] SET [Status] = ?, [LCount] = ?, [LoginTime] = ? WHERE (([UserId] = ?) OR ([UserId] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="LCount" Type="Int32" />
            <asp:Parameter Name="LoginTime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="LCount" Type="Int32" />
            <asp:Parameter Name="LoginTime" Type="String" />
            <asp:Parameter Name="UserId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

