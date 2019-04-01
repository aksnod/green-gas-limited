<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EventsMgmt.aspx.cs" Inherits="Admin_EventsMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Notiification Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <asp:TextBox ID="TxtNotification" runat="server" TextMode="MultiLine" Width="100%" Height="80px" placeholder="Enter Notification Message..." ></asp:TextBox>
    <asp:Button ID="Btnsave" runat="server" Text="Add Notification" Forecolor="White" BackColor="Pink" Width="160px" Height="35px" Font-Size="Large" OnClick="Btnsave_Click" />
<br /><br />
    <asp:GridView ID="GVNotification" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="nid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="nid" HeaderText="nid" InsertVisible="False" ReadOnly="True" SortExpression="nid" />
            <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" />
            <asp:BoundField DataField="ndt" HeaderText="ndt" SortExpression="ndt" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Notification] WHERE [nid] = ?" InsertCommand="INSERT INTO [Notification] ([nid], [msg], [ndt]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Notification] ORDER BY [nid] DESC" UpdateCommand="UPDATE [Notification] SET [msg] = ?, [ndt] = ? WHERE [nid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="nid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nid" Type="Int32" />
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter Name="ndt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter Name="ndt" Type="String" />
            <asp:Parameter Name="nid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

