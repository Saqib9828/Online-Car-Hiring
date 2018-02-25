<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OCHS._Default" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 85px;
        }
    </style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="main" style="background-color: #203E34; height: 346px; width: 96%;">
<div class="a" 
            
        style="background-color: #203E34; float: left; width: 40%; height: 84%;">

        <div class="login">
        
        
            <table class="style1" style="color: #FFFFFF; height: 38px;">
                <tr>
                    <td>
                        For make any change in your order please login.</td>
                </tr></table>
                <table class="style1" style="color: #FFFFFF">
            
                <tr>
                    <td class="style2">
                        Boking_ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="62px" 
                            onclick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        
        
        </div>
 <p style="color: #FFFFFF; font-size: medium; width: 98%; height: 72%; background-color: #203E34;">Hi Everybody! This is a car hiring website for your journey, Various Range of cars are available here<br/>
          Just go to the Products link and choose your favorite car which suits better.<br/>
          After final Selection Go to the service page and fill out the form.<br/>
          Finally Print out your ticket, Happy and Safe journey. Thanks! !!</p>
        
</div>

<div class="b" 
        style="float: left; width: 60%; height: 264px;"><br /><br />

        <div id="sliderFrame">
               
        <div id="slider">   
            
            <img src="slider_img/new1.jpg" alt="" />
            <img src="slider_img/new.jpg" alt="" />
            <img src="slider_img/innova.jpg" alt="" />
            <img src="slider_img/i8.jpg" />
            <img src="slider_img/i20.jpg" />
            <img src="slider_img/i10.jpg" />
            <img src="slider_img/honda-city copy.jpg" />
            <img src="slider_img/etios.jpg" />
            <img src="slider_img/duster.jpg" />
            <img src="slider_img/celerio.jpg" />
            </div>


    </div>


</div>
    </asp:Content>
