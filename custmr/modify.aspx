<%@ Page Title="" Language="C#" MasterPageFile="~/custmr/custmr.Master" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="OCHS.modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style2
        {
            height: 25px;
            width: 303px;
        }
        .style3
        {
            width: 303px;
        }
        .style4
        {
            height: 25px;
            width: 174px;
        }
        .style5
        {
            width: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="3" align="center" width="90%" class="style1" 
        style="color: #FFFFFF">
    <tr>
        <th colspan="3">
            <marquee>Registration Form ,Please Fill out the form below to book a car...!!!!</marquee>
        </th>
    </tr>
   <tr>
    <td class="style4">
          Booking_ID</td>
    <td class="style2">
         <asp:Label ID="Label4" runat="server" Width="107px" Font-Bold="True" 
             Font-Size="Larger" ForeColor="Red"></asp:Label>
    </td>
    <td class="style1">
        &nbsp;</td>
   </tr>
  
   <tr>
    <td class="style4">
          Name
    </td>
    <td class="style2">
         <asp:TextBox ID="txtUsername" runat="server" CausesValidation="True"></asp:TextBox>
    </td>
    <td class="style1">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
  
    <tr>
        <td class="style5">
            ......................................................</td>
        <td class="style3">
             ................................................................................</td>
        <td>
            &nbsp;</td>

    </tr>
    <tr>
        <td class="style5">
            source
        </td>
        <td class="style3">
             <asp:DropDownList ID="DropDownList2" runat="server" width="128px">
                 <asp:ListItem>Delhi</asp:ListItem>
                 <asp:ListItem>Aligarh</asp:ListItem>
                 <asp:ListItem>Firozabaad</asp:ListItem>
             </asp:DropDownList>
            
        </td>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Required" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
        <td class="style5">
            Destination
        </td>
        <td class="style3">
           <asp:DropDownList ID="DropDownList3" runat="server" width="128px">
               <asp:ListItem>Delhi</asp:ListItem>
               <asp:ListItem>Noida</asp:ListItem>
               <asp:ListItem>Gaziyabaad</asp:ListItem>
               <asp:ListItem>Firozabaad</asp:ListItem>
               <asp:ListItem>Etawa</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Required" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        <td class="style5">
            Pickup date
        </td>
        <td class="style3">
           <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        

    </tr>
    <tr>
         <td class="style5">
            Dropoff date
        </td>
         <td class="style3">
           <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"/>
            &nbsp;<asp:Label ID="Label3" runat="server" Text="DD-MM-YYYY"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
           Select a car
        </td>
        <td class="style3">
           <asp:DropDownList ID="DropDownList4" runat="server" width="128px">
               <asp:ListItem>I20</asp:ListItem>
               <asp:ListItem>Duster</asp:ListItem>
               <asp:ListItem>Xylo</asp:ListItem>
               <asp:ListItem>Fortuner</asp:ListItem>
               <asp:ListItem>Honda</asp:ListItem>
               <asp:ListItem>Omni</asp:ListItem>
               <asp:ListItem>Scorpio</asp:ListItem>
               <asp:ListItem>Swift</asp:ListItem>
               <asp:ListItem>Tavera</asp:ListItem>
               <asp:ListItem>sX4</asp:ListItem>
               <asp:ListItem>Santro</asp:ListItem>
               <asp:ListItem>Innova</asp:ListItem>
               <asp:ListItem>Elantra</asp:ListItem>
               <asp:ListItem>Celerio</asp:ListItem>
               <asp:ListItem>Toyota</asp:ListItem>
               <asp:ListItem>Verna</asp:ListItem>
               <asp:ListItem>Volks</asp:ListItem>
               <asp:ListItem>Volvo</asp:ListItem>
            </asp:DropDownList>
        </td>
          <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Required" ControlToValidate="DropDownList4" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
        <td class="style5">
               <asp:Label ID="Label1" runat="server"></asp:Label> 
        </td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Print" />

        </td>
        <td>
        </td>
    </tr>
</table>
</asp:Content>
