<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cus_booking.aspx.cs" Inherits="OCHS.cus_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            height: 41px;
        }
        .style3
        {
            width: 262px;
        }
        .style4
        {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="2" align="center" width="90%" 
        class="style1" style="color: #FFFFFF">
    <tr>
        <th colspan="3" class="style2">
            <h style="color:Red;"><marquee>Registration Form ,Please Check Fare per Km of selected car before filling this booking form ...!!!!</marquee></h>
        </th>
    </tr>
        <tr>
        <td>
           Select a car&nbsp; 
            for Check availability</td>
        <td class="style4">
           <asp:DropDownList ID="DropDownList4" runat="server" width="128px" 
                AutoPostBack="True" onselectedindexchanged="DropDownList4_SelectedIndexChanged">
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
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow"></asp:Label>
        </td>
          <td class="style3">
              &nbsp;</td>

        </tr>
    <tr>
        <td>
            Create User_id</td>
        <td class="style4">
            <asp:TextBox ID="txtbid" runat="server" ontextchanged="txtbid_TextChanged" 
                AutoPostBack="True" /><br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
          <td class="style3">
              Give any ID for further 
              query</td>

    </tr>
    <tr>
        <td>
            Password
        </td>
        <td class="style4">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password
        </td>
        <td class="style4">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td class="style3">
            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            .....................................................................................</td>
        <td class="style4">
            ...............................................................................</td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Name
            of customer</td>
        <td class="style4">
            <asp:TextBox ID="txtUsername" runat="server" />
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Contact No.</td>
        <td class="style4">
            <asp:TextBox ID="txtcno0" runat="server" Width="45px" >+91</asp:TextBox>
&nbsp;&nbsp;
            <asp:TextBox ID="txtcno" runat="server" />
        </td>
        <td class="style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="txtcno" ErrorMessage="Enter A valid mobile no." 
    ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>&nbsp;</td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td class="style4">
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>
    </tr>
    <tr>
        <td>
            Address
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox1" runat="server" Height="59px" TextMode="MultiLine" />
        </td>
        <td class="style3">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
        
    </tr>
    <tr>
        <td>
            ...........................................................................</td>
        <td class="style4">
             .......................................................................</td>
        <td class="style3">
            &nbsp;</td>

    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
             &nbsp;</td>
        <td class="style3">
            &nbsp;</td>

    </tr>
    <tr>
        <td>
            source
        </td>
        <td class="style4">
             <asp:DropDownList ID="DropDownList2" runat="server" width="128px">
                 <asp:ListItem>Delhi</asp:ListItem>
                 <asp:ListItem>Aligarh</asp:ListItem>
                 <asp:ListItem>Firozabaad</asp:ListItem>
             </asp:DropDownList>
            
        </td>
        <td class="style3">
            &nbsp;</td>

    </tr>
    <tr>
        <td>
            Destination
        </td>
        <td class="style4">
           <asp:DropDownList ID="DropDownList3" runat="server" width="128px">
               <asp:ListItem>Delhi</asp:ListItem>
               <asp:ListItem>Noida</asp:ListItem>
               <asp:ListItem>Gaziyabaad</asp:ListItem>
               <asp:ListItem>Firozabaad</asp:ListItem>
               <asp:ListItem>Etawa</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style3">
            &nbsp;</td>
        
    </tr>
    <tr>
        <td>
            Pickup date
        </td>
        <td class="style4">
           <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"/>
           
               
        </td>
        

    </tr>
    <tr>
         <td>
            Dropoff date
        </td>
         <td class="style4">
           <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"/>
           
        </td>
    </tr>


    <tr>
        <td>
               <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="16px"></asp:TextBox>
               <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="23px"></asp:TextBox>
        </td>
        <td class="style4">
            <asp:Button ID="Button1" Text="Submit" runat="server" OnClick="Button1_Click" 
                Width="90px" />
               <asp:Label ID="Label1" runat="server"></asp:Label> 
        </td>
        <td class="style3">
        <asp:Button ID="Button2" Text="Print" runat="server" OnClick="Print_details" 
                Width="89px" /> 

        </td>
    </tr>
  
</table>
</asp:Content>
