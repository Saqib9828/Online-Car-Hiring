<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Volvo.aspx.cs" Inherits="OCHS.Volvo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="main" style="background-color: #203E34; height: 265px; width: 96%;">
<div class="a" 
            
        style="background-color: #203E34 ; float: left; width: 40%; height: 100%;">
 <p style="color: #FFFFFF; font-size: medium; width: 98%; height: 100%; background-color: #203E34;">This is Maruti Suzuki Baleno gud fuel efficient car running on diesel have mileage of 25 km/hr<br>
             It is suitable for picnic and long drive it has moderate speed manual transmission. 
             </p>
        
</div>

<div class="b" 
        style="float: left; background-color: #FF0000; width: 60%; height: 264px;">
    <asp:Image ID="Image2" runat="server" Height="100%" 
        ImageUrl="~/Styles/volvo.jpeg" Width="100%" />
    </div>


</div>
</asp:Content>
