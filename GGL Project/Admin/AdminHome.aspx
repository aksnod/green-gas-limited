<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         #tbldash {
        width:100%;
        margin:0px auto;
        padding:5px;
        border:2px dotted maroon;
        background-color:#ffd800;
        color:white;
        font-size:30px;
        font-weight:bold;
        border-radius:20px;
        }
            #tbldash tr td {
            width:28%;
            height:150px; 
            padding:2px;          
            margin:1%;
            background-color:#00ff21;
            text-align:center;
            border-radius:10px;
            }
            #tbldash tr td:hover{
                background-color:pink;
            }
                #tbldash tr td a.{
                text-decoration:none;
                color:white;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table id="tbldash">
        <tr>
            <td><a href="EventsMgmt.aspx">Events Mgnt</a></td>
            <td><a href="HelpDesk.aspx" >Help Desk</a></td>
            <td><a href="LoginInfo.aspx">Login Info</a></td>
        </tr>
        <tr>
            <td><a href="ModalPaper.aspx"> Model Paper</td>
            <td><a href="CollegeAllotment.aspx">CollegeAllotment</a></td>
            <td><a href="AdmitCard.aspx">Admit Card</a></td>
        </tr>
        <tr>
            <td><a href="Enquiry.aspx">Enquiry</a></td>
            <td><a href="ChangePassword.aspx">Change Password</a></td>
            <td><a href="AdminLogout.aspx">Logout</a></td>
        </tr>
        <tr>
            <td><a href="Colleges.aspx"> Colleges</a></td>
            <td><a href="RegstnMgmt.aspx"> Registration Mgmt</a></td>
            <td><a href="SendSMS.aspx"> Send SMS</a></td>
        </tr>
    </table>
</asp:Content>

