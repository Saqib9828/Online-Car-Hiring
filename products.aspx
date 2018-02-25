<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="OCHS.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-weight: 700;
            text-decoration: underline;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
        <span class="style1" style="font-size: 48px; color: #6A1818;">Choose your Wagon...</span><br /><hr /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/duster.aspx">Duster</asp:HyperLink>
        <asp:Image ID="Image3" runat="server" Height="50%" 
        ImageUrl="~/Styles/duster.jpg" Width="50%" />    
            <br /><hr /><br />
   <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Xylo.aspx">Xylo</asp:HyperLink>
        <asp:Image ID="Image1" runat="server" Height="50%" 
        ImageUrl="~/Styles/xylo.jpg" Width="50%" />
            <br /><hr /><br />
   <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Fortuner.aspx">Fortuner</asp:HyperLink>
        <asp:Image ID="Image4" runat="server" Height="50%" 
        ImageUrl="~/Styles/fortuner.jpg" Width="50%" />    
            <br /><hr /><br />
   <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Honda.aspx">Honda</asp:HyperLink>
        <asp:Image ID="Image5" runat="server" Height="50%" 
        ImageUrl="~/Styles/honda.jpg" Width="50%" />   
            <br /><hr /><br />
   <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/i10.aspx">i10</asp:HyperLink>
        <asp:Image ID="Image6" runat="server" Height="50%" 
        ImageUrl="~/Styles/i10.jpg" Width="50%" />   
            <br /><hr /><br />
   <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Omni.aspx">Omni</asp:HyperLink>
        <asp:Image ID="Image7" runat="server" Height="50%" 
        ImageUrl="~/Styles/xylo.jpg" Width="50%" />
            <br /> <hr /> <br />
   <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Scorpio.aspx">Scorpio</asp:HyperLink>
        <asp:Image ID="Image8" runat="server" Height="50%" 
        ImageUrl="~/Styles/scorpio.jpg" Width="50%" />
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" BorderColor="White" 
            NavigateUrl="~/wagon/Swift.aspx">Swift</asp:HyperLink>
        <asp:Image ID="Image9" runat="server" Height="50%" 
        ImageUrl="~/Styles/swift.png" Width="50%" />    
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink10" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/Tavera.aspx">Tavera</asp:HyperLink>
        <asp:Image ID="Image2" runat="server" Height="50%" 
        ImageUrl="~/Styles/tavera.jpg" Width="50%" />
            <br /><hr /><br /> 
    <asp:HyperLink ID="HyperLink11" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            style="text-decoration: underline" NavigateUrl="~/wagon/sX4.aspx">sX4</asp:HyperLink>
        <asp:Image ID="Image10" runat="server" Height="50%" 
        ImageUrl="~/Styles/sx4.jpg" Width="50%" /> 
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/santro.aspx">Santro</asp:HyperLink>
        <asp:Image ID="Image11" runat="server" Height="50%" 
        ImageUrl="~/Styles/santro.jpg" Width="50%" />    
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/Innova.aspx">Innova</asp:HyperLink>
        <asp:Image ID="Image12" runat="server" Height="50%" 
        ImageUrl="~/Styles/innova.jpg" Width="50%" />    
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/elantra.aspx">Elantra</asp:HyperLink>
        <asp:Image ID="Image13" runat="server" Height="50%" 
        ImageUrl="~/Styles/elantra.jpg" Width="50%" />    
            <br /><hr /><br />

    <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/celerio.aspx">Celerio</asp:HyperLink>
        <asp:Image ID="Image14" runat="server" Height="50%" 
        ImageUrl="~/Styles/celerio.jpg" Width="50%" />    
            <br /><hr /><br />
    <asp:HyperLink ID="HyperLink15" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/Toyota.aspx">Toyota</asp:HyperLink>
        <asp:Image ID="Image15" runat="server" Height="50%" 
        ImageUrl="~/Styles/toyota.jpg" Width="50%" />    
            <br /><hr /><br />

    <asp:HyperLink ID="HyperLink16" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/verna.aspx">Verna</asp:HyperLink>
        <asp:Image ID="Image16" runat="server" Height="50%" 
        ImageUrl="~/Styles/verna.jpg" Width="50%" />    
            <br /><hr /><br />
     <asp:HyperLink ID="HyperLink17" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/Volks.aspx">Volks</asp:HyperLink>
        <asp:Image ID="Image17" runat="server" Height="50%" 
        ImageUrl="~/Styles/volkswagen.jpg" Width="50%" />    
            <br /><hr /><br />
     <asp:HyperLink ID="HyperLink18" runat="server" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Black" Height="22px" Width="142px" 
            Font-Underline="True" style="text-decoration: underline" 
            NavigateUrl="~/wagon/Volvo.aspx">Volvo</asp:HyperLink>
        <asp:Image ID="Image18" runat="server" Height="50%" 
        ImageUrl="~/Styles/volvo.jpeg" Width="50%" />    
            <br /><hr /><br />
    </p>
</asp:Content>
