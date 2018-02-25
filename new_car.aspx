<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="new_car.aspx.cs" Inherits="OCHS.new_car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
           <div align="center">
           <span style="">
            <asp:Image ID="Image2" runat="server" BorderStyle="Solid" Height="300px" 
                ImageUrl='<%# Eval("pic") %>' Width="524px" />
             <br />
            <br />
           <div align="center"> &nbsp;<asp:Label ID="Name_Of_CarLabel" runat="server" BackColor="White" 
                Font-Bold="True" Font-Size="Large" align="center" ForeColor="Black" 
                Text='<%# Eval("Name_Of_Car") %>' /></div>
            <br />
            &nbsp;<asp:Label ID="DescriptionLabel" runat="server" Font-Size="Large" 
                align="center" ForeColor="White" Text='<%# Eval("Description") %>'></asp:Label>
            <br />
            <br /><br><hr>
            </span></div>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">pic:
            <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
            <br />
            Name_Of_Car:
            <asp:TextBox ID="Name_Of_CarTextBox" runat="server" 
                Text='<%# Bind("Name_Of_Car") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
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
            <span style="">pic:
            <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>' />
            <br />Name_Of_Car:
            <asp:TextBox ID="Name_Of_CarTextBox" runat="server" 
                Text='<%# Bind("Name_Of_Car") %>' />
            <br />Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
         <div align="center">
           <span style="">
            <asp:Image ID="Image2" runat="server" BorderStyle="Solid" Height="300px" 
                ImageUrl='<%# Eval("pic") %>' Width="524px" />
             <br />
            <br />
           <div align="center"> &nbsp;<asp:Label ID="Name_Of_CarLabel" runat="server" BackColor="White" 
                Font-Bold="True" Font-Size="Large" align="center" ForeColor="Black" 
                Text='<%# Eval("Name_Of_Car") %>' /></div>
            <br />
            &nbsp;<asp:Label ID="DescriptionLabel" runat="server" Font-Size="Large" 
                align="center" ForeColor="White" Text='<%# Eval("Description") %>'></asp:Label>
            <br />
            <br /><br><hr>
            </span></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">pic:
            <asp:Label ID="picLabel" runat="server" Text='<%# Eval("pic") %>' />
            <br />
            Name_Of_Car:
            <asp:Label ID="Name_Of_CarLabel" runat="server" 
                Text='<%# Eval("Name_Of_Car") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Eval("Description") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OCHSConnectionString %>" 
        
        SelectCommand="SELECT [pic], [Name_Of_Car], [Description] FROM [car] ORDER BY [sr_no] DESC">
    </asp:SqlDataSource>
<br />
<h1 align="center" style="color: #FFFFFF; font-size: large; background-color: #000000">Products</h1>
<br />

</asp:Content>
