<%@ Page Title="" Language="C#" MasterPageFile="~/custmr/custmr.Master" AutoEventWireup="true" CodeBehind="mod_suc.aspx.cs" Inherits="OCHS.custmr.mod_suc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<hr />
<p align="center" style="font-size: large; color: #FFFFFF">You have modify your Booking successfully.<br />

View your final Booking and take a print of Your ticket.<br />
Go to the option 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/custmr/View.aspx">View My Booking</asp:HyperLink> and if everything is fine Take a 
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/custmr/print.aspx">Print.</asp:HyperLink><br />
    Happy Journey...!

</p>
</asp:Content>
