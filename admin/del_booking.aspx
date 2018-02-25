<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="del_booking.aspx.cs" Inherits="OCHS.admin.del_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center">delete Booking</h1><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="srno" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
        Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="add" HeaderText="add" SortExpression="add" />
            <asp:BoundField DataField="source" HeaderText="source" 
                SortExpression="source" />
            <asp:BoundField DataField="pic_date" HeaderText="pic_date" 
                SortExpression="pic_date" />
            <asp:BoundField DataField="drop_date" HeaderText="drop_date" 
                SortExpression="drop_date" />
            <asp:BoundField DataField="destination" HeaderText="destination" 
                SortExpression="destination" />
            <asp:BoundField DataField="car" HeaderText="car" SortExpression="car" />
            <asp:BoundField DataField="booking_id" HeaderText="booking_id" 
                SortExpression="booking_id" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="srno" HeaderText="srno" InsertVisible="False" 
                ReadOnly="True" SortExpression="srno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OCHSConnectionString %>" 
        DeleteCommand="DELETE FROM [Booking] WHERE [srno] = @srno" 
        InsertCommand="INSERT INTO [Booking] ([name], [add], [source], [pic_date], [drop_date], [destination], [car], [booking_id], [contact_no]) VALUES (@name, @add, @source, @pic_date, @drop_date, @destination, @car, @booking_id, @contact_no)" 
        SelectCommand="SELECT [name], [add], [source], [pic_date], [drop_date], [destination], [car], [booking_id], [contact_no], [srno] FROM [Booking]" 
        UpdateCommand="UPDATE [Booking] SET [name] = @name, [add] = @add, [source] = @source, [pic_date] = @pic_date, [drop_date] = @drop_date, [destination] = @destination, [car] = @car, [booking_id] = @booking_id, [contact_no] = @contact_no WHERE [srno] = @srno">
        <DeleteParameters>
            <asp:Parameter Name="srno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="add" Type="String" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter DbType="Date" Name="pic_date" />
            <asp:Parameter DbType="Date" Name="drop_date" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="car" Type="String" />
            <asp:Parameter Name="booking_id" Type="String" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="add" Type="String" />
            <asp:Parameter Name="source" Type="String" />
            <asp:Parameter DbType="Date" Name="pic_date" />
            <asp:Parameter DbType="Date" Name="drop_date" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="car" Type="String" />
            <asp:Parameter Name="booking_id" Type="String" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="srno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
