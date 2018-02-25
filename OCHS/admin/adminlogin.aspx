<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="OCHS.admin.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="accountInfo" align="left">
              <fieldset class="login" style="color: #FFFFFF">
                    <legend style="color: #FFFFFF; font-weight: bold; font-size: x-large;">Login as Admin</legend>
                    
                    <p style="font-weight: bold; font-size: large">Admin ID:</p>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                    <br />
                    
                    <p style="font-weight: bold; font-size: large">Password:</p>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="350px"></asp:TextBox>
                    
                    <br />
                    &nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                        ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click"/>
                </p>
            </div>

</asp:Content>
