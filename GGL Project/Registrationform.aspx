<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Registrationform.aspx.cs" Inherits="Registrationform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/RegistrationformStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            width: 335px;
        }
        .auto-style4 {
            width: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <form>          
            <fieldset style="border:3px solid black; background-color:white;">               
                <legend style="border:2px solid black; background-color:#0094ff;">Registration Form</legend>       
        <table>
         <tr>
                <td>
                    Name:
                </td>
             <td class="auto-style2"> <asp:TextBox ID="TxtName" runat="server"></asp:TextBox></td>
             <td>Profile Pic:</td>
             <td class="auto-style4">
                 <asp:FileUpload ID="FUPic" runat="server"/>
             </td>
            </tr>
             <tr>
                <td>
                   FatherName:
                </td>
                    <td class="auto-style2"> <asp:TextBox ID="TxtFName" runat="server"></asp:TextBox></td>
                 <td>
                    CaptchaCode:
                </td>
                      <td class="auto-style4">
                          <asp:Label ID="LblCaptcha" runat="server" Text="Label"></asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:ImageButton ID="RefreshPic" runat="server" ImageUrl="~/images/Refresh-128.png" style="margin-left: 16px;" ToolTip="RefreshCode" OnClick="RefreshPic_Click" Height="23px" Width="39px" />
                      </td>
            </tr>
             <tr>
                <td>
                    Gender:
                </td>
                 <td class="auto-style2"> <asp:RadioButton ID="RdBMale" runat="server" GroupName="Gender"/> Male &nbsp;&nbsp;&nbsp;&nbsp;</asp:RadioButton><asp:RadioButton ID="RdBFemale" runat="server" GroupName="Gender"/> Female </td>
                 <td>Enter Captcha Code:</td>
                 <td class="auto-style4"><asp:TextBox ID="TxtCaptcha" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
            </tr>
             <tr>
                <td>
                    ContactNumber:
                </td>
                 <td class="auto-style2"> <asp:TextBox ID="TxtMobNo" runat="server" TextMode="Number"/></td>
            </tr>
             <tr>
                <td>
                    Qualification:
                </td>
                 <td class="auto-style2"><asp:DropDownList ID="DDLQualification" runat="server">
                     <asp:ListItem>--select--</asp:ListItem>
                     <asp:ListItem>HighSchool</asp:ListItem>
                     <asp:ListItem>InterMidiate</asp:ListItem>
                     <asp:ListItem>B.A.</asp:ListItem>
                     <asp:ListItem>B.s.c.</asp:ListItem>
                     <asp:ListItem>ITI</asp:ListItem>
                     </asp:DropDownList>
                 </td>
            </tr>
             <tr>
                <td>
                    SelectGroup:
                </td>
                 <td class="auto-style2"><asp:DropDownList ID="DDLSelectGroup" runat="server">
                     <asp:ListItem>--Select--</asp:ListItem>
                     <asp:ListItem>A Group</asp:ListItem>
                     <asp:ListItem>B Group</asp:ListItem>
                     <asp:ListItem>C Group</asp:ListItem>
                     <asp:ListItem>D Group</asp:ListItem>
                     <asp:ListItem>E Group</asp:ListItem>
                     <asp:ListItem>F Goup</asp:ListItem>
                     <asp:ListItem>K Group</asp:ListItem>
                     </asp:DropDownList>
                 </td>
            </tr>
             <tr>
                <td>
                    Address:
                </td>
                 <td class="auto-style2"> <asp:TextBox ID="TxtAddress" runat="server" TextMode="multiline"></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    EmailId:
                </td>
                 <td class="auto-style2"> <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" ></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    Password:
                </td>
                 <td class="auto-style2"><asp:TextBox ID="TxtPass" runat="server" TextMode="Password" /></td>            
                 </tr>
                  <tr>
                <td>
                    ConfirmPassword:
                </td>
                      <td class="auto-style2"><asp:TextBox ID="CPass" runat="server" TextMode="Password" /></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Button ID="BtnRegister" Text="ResisterNow" runat="server" OnClick="BtnRegister_Click"/></td>           
            </tr>
            </table>
            </fieldset>
        </form>
    </div>
</asp:Content>

