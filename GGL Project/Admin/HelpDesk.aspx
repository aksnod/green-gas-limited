<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="HelpDesk.aspx.cs" Inherits="Admin_HelpDesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    HelpDesk
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
        <div id="helpdesk">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="rid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="3">
                                    <img id="Img1" src="../images/NPHOTO.jpg" runat="server" style="border-radius:50%; padding:5px; width:80px; height:60px;" />
                                </td>
                                <td>
                                    Topics:<%#Eval("Topic") %></td>
                            </tr>
                            <tr>
                                <td>
                                    Qiery:<%#Eval("Msg") %></td>
                            </tr>
                            <tr>
                                <td style="background-color:gray; color:white; text-align:center;" >
                                    Posted By:<%#Eval("Userid") %>&nbsp;&nbsp; on &nbsp;&nbsp;<%#Eval("MsgDT") %></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [helpdesk] ORDER BY [rid] DESC"></asp:SqlDataSource>

    </div>
</asp:Content>

