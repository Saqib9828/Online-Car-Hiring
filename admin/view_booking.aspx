<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="view_booking.aspx.cs" Inherits="OCHS.admin.view_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center" style="background-color: #FFFFFF; color: #000000; font-weight: bold; font-size: x-large; border-top-style: solid; border-bottom-style: solid;">Booking</h1>
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#DCDCDC" />
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
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OCHSConnectionString %>" 
        SelectCommand="SELECT [booking_id], [name], [contact_no], [e-mail] AS column1, [add], [source], [destination], [pic_date], [drop_date], [car] FROM [Booking]">
    </asp:SqlDataSource>
</asp:Content>
