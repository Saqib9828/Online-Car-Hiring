﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="OCHS.admin.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .style1
    {
        width: 39%;
       
        margin-bottom: 0px;
    }
    .style2
    {
        width: 25%;
        color: #FFFFFF;
    }
    .style3
    {
        width: 70%;
    }

    .style4
    {
        width: 32%;
        color: #FFFFFF;
    }

    .style5
    {
        width: 32%;
        color: #FFFFFF;
        height: 21px;
    }
    .style6
    {
        width: 70%;
        height: 21px;
    }

</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:TextBox ID="TextBox1" runat="server" Height="16px" Visible="False" 
        Width="16px"></asp:TextBox><br />
        

        <div class="b" style="color: #FFFFFF; font-size: large; font-weight: bold;">
        <p align="center">
    <asp:Label ID="Label2" runat="server" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" Text="Welcome   " 
        ForeColor="White"></asp:Label>

        

            Admin</p></div>
        

        <div class="changepass" 
        style="height: 100%; width: 100%;" 
        align="left">

            <br />
            <table class="style1" align="center">
    <tr>
        <td class="style5">
            </td>
        <td class="style6">
            </td>
       
    </tr>
    <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black" 
            >
            UserID</td>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
   <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black">
            Old
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Height="16px" Visible="False" 
                Width="16px"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black">
            New
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
        </td>
       
    </tr>
   <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black">
            Confirm
            Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" 
                TextMode="Password"></asp:TextBox>
        </td>
       
    </tr>
     <tr>
        <td class="style4" align="left" bordercolor="Black" bordercolordark="Black">
            &nbsp;</td>
        <td class="style3">
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Black" 
                BorderStyle="Solid" Text="Change Password" Width="155px" 
                onclick="Button1_Click" />
            &nbsp;<asp:Label ID="Label3" runat="server" CssClass="style2"></asp:Label>
        </td>
       
    </tr>
  
   
    </table>


    </div>
   
   

    <br />
    <br />

</asp:Content>
