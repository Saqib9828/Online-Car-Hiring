<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tavera.aspx.cs" Inherits="OCHS.Tavera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="a" 
            
        style="background-color: #203E34 ; float: left; width: 40%; height: 100%;">
 <p style="color: #FFFFFF; font-size: medium; width: 98%; height: 100%; background-color: #203E34;">This is Chevrolet Tavera fuel efficient car and it runs on both types of fuel petrol an diesel<br/>
             It has a good mileage of 28 km/hr on diesel and sufficient on petrol that is of 18km/hr.<br/>
             Fare charges are Rs.6/KM and a fixed amount Rs.1000/- as a security fee.</p>
        
</div>

<div class="b" 
        style="float: left; background-color: #FF0000; width: 55%; height: 264px;">
    <asp:Image ID="Image2" runat="server" Height="100%" 
        ImageUrl="~/Styles/tavera.jpg" Width="100%" />
    </div>



</asp:Content>
