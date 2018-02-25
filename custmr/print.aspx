<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="OCHS.custmr.print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-repeat: repeat; background-color: #E0E0E0; height: 383px;" 
        align="center">
   <div style="float: left; height: 294px; width: 246px; margin-left: 74px;" 
            align="center">
        <asp:Image ID="Image1" runat="server" Height="225px" 
            ImageUrl="~/Styles/IRCTC_Logo.png" Width="232px" 
            style="margin-top: 20px" />
            
            </div>
            
            <br />
            <div style="float: left; width: 576px; height: 274px;" align="center">
            <h1 align="center" style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #000000">Car Booking Ticket</h1>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <span style="">booking_id:
                        <asp:Label ID="booking_idLabel" runat="server" 
                            Text='<%# Eval("booking_id") %>' />
                        <br />
                        name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        contact_no:
                        <asp:Label ID="contact_noLabel" runat="server" 
                            Text='<%# Eval("contact_no") %>' />
                        <br />
                        column1:
                        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                        <br />
                        add:
                        <asp:Label ID="addLabel" runat="server" Text='<%# Eval("add") %>' />
                        <br />
                        source:
                        <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        <br />
                        destination:
                        <asp:Label ID="destinationLabel" runat="server" 
                            Text='<%# Eval("destination") %>' />
                        <br />
                        pic_date:
                        <asp:Label ID="pic_dateLabel" runat="server" Text='<%# Eval("pic_date") %>' />
                        <br />
                        drop_date:
                        <asp:Label ID="drop_dateLabel" runat="server" Text='<%# Eval("drop_date") %>' />
                        <br />
                        car:
                        <asp:Label ID="carLabel" runat="server" Text='<%# Eval("car") %>' />
                        <br />
<br /></span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">booking_id:
                        <asp:TextBox ID="booking_idTextBox" runat="server" 
                            Text='<%# Bind("booking_id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        contact_no:
                        <asp:TextBox ID="contact_noTextBox" runat="server" 
                            Text='<%# Bind("contact_no") %>' />
                        <br />
                        column1:
                        <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                        <br />
                        add:
                        <asp:TextBox ID="addTextBox" runat="server" Text='<%# Bind("add") %>' />
                        <br />
                        source:
                        <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                        <br />
                        destination:
                        <asp:TextBox ID="destinationTextBox" runat="server" 
                            Text='<%# Bind("destination") %>' />
                        <br />
                        pic_date:
                        <asp:TextBox ID="pic_dateTextBox" runat="server" 
                            Text='<%# Bind("pic_date") %>' />
                        <br />
                        drop_date:
                        <asp:TextBox ID="drop_dateTextBox" runat="server" 
                            Text='<%# Bind("drop_date") %>' />
                        <br />
                        car:
                        <asp:TextBox ID="carTextBox" runat="server" Text='<%# Bind("car") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                        <br /><br /></span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">booking_id:
                        <asp:TextBox ID="booking_idTextBox" runat="server" 
                            Text='<%# Bind("booking_id") %>' />
                        <br />name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />contact_no:
                        <asp:TextBox ID="contact_noTextBox" runat="server" 
                            Text='<%# Bind("contact_no") %>' />
                        <br />column1:
                        <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                        <br />add:
                        <asp:TextBox ID="addTextBox" runat="server" Text='<%# Bind("add") %>' />
                        <br />source:
                        <asp:TextBox ID="sourceTextBox" runat="server" Text='<%# Bind("source") %>' />
                        <br />destination:
                        <asp:TextBox ID="destinationTextBox" runat="server" 
                            Text='<%# Bind("destination") %>' />
                        <br />pic_date:
                        <asp:TextBox ID="pic_dateTextBox" runat="server" 
                            Text='<%# Bind("pic_date") %>' />
                        <br />drop_date:
                        <asp:TextBox ID="drop_dateTextBox" runat="server" 
                            Text='<%# Bind("drop_date") %>' />
                        <br />car:
                        <asp:TextBox ID="carTextBox" runat="server" Text='<%# Bind("car") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                        <br /><br /></span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">booking_id:
                        <asp:Label ID="booking_idLabel" runat="server" 
                            Text='<%# Eval("booking_id") %>' />
                        <br />
                        name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        contact_no:
                        <asp:Label ID="contact_noLabel" runat="server" 
                            Text='<%# Eval("contact_no") %>' />
                        <br />
                        column1:
                        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                        <br />
                        add:
                        <asp:Label ID="addLabel" runat="server" Text='<%# Eval("add") %>' />
                        <br />
                        source:
                        <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        <br />
                        destination:
                        <asp:Label ID="destinationLabel" runat="server" 
                            Text='<%# Eval("destination") %>' />
                        <br />
                        pic_date:
                        <asp:Label ID="pic_dateLabel" runat="server" Text='<%# Eval("pic_date") %>' />
                        <br />
                        drop_date:
                        <asp:Label ID="drop_dateLabel" runat="server" Text='<%# Eval("drop_date") %>' />
                        <br />
                        car:
                        <asp:Label ID="carLabel" runat="server" Text='<%# Eval("car") %>' />
                        <br />
<br /></span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div ID="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">booking_id:
                        <asp:Label ID="booking_idLabel" runat="server" 
                            Text='<%# Eval("booking_id") %>' />
                        <br />
                        name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        contact_no:
                        <asp:Label ID="contact_noLabel" runat="server" 
                            Text='<%# Eval("contact_no") %>' />
                        <br />
                        column1:
                        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                        <br />
                        add:
                        <asp:Label ID="addLabel" runat="server" Text='<%# Eval("add") %>' />
                        <br />
                        source:
                        <asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' />
                        <br />
                        destination:
                        <asp:Label ID="destinationLabel" runat="server" 
                            Text='<%# Eval("destination") %>' />
                        <br />
                        pic_date:
                        <asp:Label ID="pic_dateLabel" runat="server" Text='<%# Eval("pic_date") %>' />
                        <br />
                        drop_date:
                        <asp:Label ID="drop_dateLabel" runat="server" Text='<%# Eval("drop_date") %>' />
                        <br />
                        car:
                        <asp:Label ID="carLabel" runat="server" Text='<%# Eval("car") %>' />
                        <br />
<br /></span>
                    </SelectedItemTemplate>
                </asp:ListView></p>
 
 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OCHSConnectionString %>" 
                    SelectCommand="SELECT [booking_id], [name], [contact_no], [e-mail] AS column1, [add], [source], [destination], [pic_date], [drop_date], [car] FROM [Booking] WHERE ([booking_id] = @booking_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="booking_id" SessionField="booking_id" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
 
 
  </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="User Home" 
        Action="~/custmr/CUS_HOME.aspx" Height="41px" onclick="Button1_Click" 
        Width="163px" />
    </form>
</body>
</html>
