<%@ Page Title="" Language="C#" MasterPageFile="~/custmr/custmr.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="OCHS.custmr.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<hr />
<h1 align="center" style="color: #FFFFFF; font-weight: bolder; font-size: x-large; background-color: #000000; border-top-style: solid; border-bottom-style: solid">Your Booking</h1>

<br />
<hr />
<p align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="column1" HeaderText="E-mail" 
                SortExpression="column1" />
            <asp:BoundField DataField="add" HeaderText="add" SortExpression="add" />
            <asp:BoundField DataField="source" HeaderText="source" 
                SortExpression="source" />
            <asp:BoundField DataField="destination" HeaderText="destination" 
                SortExpression="destination" />
            <asp:BoundField DataField="pic_date" HeaderText="pic_date" 
                SortExpression="pic_date" />
            <asp:BoundField DataField="drop_date" HeaderText="drop_date" 
                SortExpression="drop_date" />
            <asp:BoundField DataField="car" HeaderText="car" SortExpression="car" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OCHSConnectionString %>" 
        SelectCommand="SELECT [booking_id], [name], [contact_no], [e-mail] AS column1, [add], [source], [destination], [pic_date], [drop_date], [car] FROM [Booking] WHERE ([booking_id] = @booking_id)">
        <SelectParameters>
            <asp:SessionParameter Name="booking_id" SessionField="booking_id" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
