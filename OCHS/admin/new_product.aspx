<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="new_product.aspx.cs" Inherits="OCHS.admin.new_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 337px;
        }
        .style3
        {
            width: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF; background-color: #000000; font-size: x-large"> New Product</h1><br />
    <table class="style1">
        <tr>
            <td align="right" class="style2" style="color: #FFFFFF">
                Name of the Car</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Required Validator" ForeColor="Red" 
                    ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #FFFFFF">
                Description</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="51px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Required Validator" ForeColor="Red" 
                    ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #FFFFFF">
                Photo</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Required Validator" ForeColor="Red" 
                    ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #FFFFFF">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Now" />
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #FFFFFF">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   

</asp:Content>
