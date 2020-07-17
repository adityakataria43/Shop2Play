<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">

    <h1 style="text-align: center; font-family: Rockwell; font-size: x-large;">Add Item</h1>
<div style="width: 655px"> 
    <table style="width: 99%; font-family: 'Times New Roman', Times, serif; font-size: 19px; height: 349px;" 
        align="center">
        <tr>
            <td style="width: 467px">
                <asp:Label ID="lblbid" runat="server" Text="Product ID:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="prodid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 467px">
                <asp:Label ID="lblbname" runat="server" Text="Product Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="productname" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="productname" ErrorMessage="Enter Product Name" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 467px; height: 26px;">
                <asp:Label ID="lblcategory" runat="server" Text="Category:"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:DropDownList ID="dlscategory" runat="server">
                    <asp:ListItem Value="CR"></asp:ListItem>
                    <asp:ListItem Value="FB"></asp:ListItem>
                    <asp:ListItem Value="BB"></asp:ListItem>
                    <asp:ListItem Value="VO"></asp:ListItem>
                    <asp:ListItem Value="SK"></asp:ListItem>
                    <asp:ListItem Value="RK">RK</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 26px; color: #FF0000; width: 25px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 467px">
                <asp:Label ID="lblprice" runat="server" Text="Price:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="productprice" runat="server" MaxLength="5"></asp:TextBox>
            </td>
            <td style="width: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="productprice" ErrorMessage="Enter Price" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="productprice" ErrorMessage="Price range between 1- 99999" 
                    ForeColor="Red" MaximumValue="99999" MinimumValue="1" 
                    style="font-size: large">*</asp:RangeValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 467px">
                <asp:Label ID="Label1" runat="server" Text="Stock:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="productstock" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="productstock" ErrorMessage="Enter Stock" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="productstock" ErrorMessage="Stock range between 1-500" 
                    ForeColor="Red" MaximumValue="500" MinimumValue="1" 
                    style="font-size: large">*</asp:RangeValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 467px; height: 20px">
                <asp:Label ID="lblimage" runat="server" Text="Image:"></asp:Label>
            </td>
            <td style="height: 20px">
                  <asp:FileUpload ID="productfileupload" runat="server" />
            </td>
            <td style="height: 20px; color: #FF0000; width: 25px;">
                  &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 467px">
                <asp:Label ID="lbldescription" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="productdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="productdescription" ErrorMessage="Enter Description" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 467px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnaddItem" runat="server" Text="Add Item" 
                    style="font-weight: 700" onclick="btnaddItem_Click" 
                    UseSubmitBehavior="False" />
            </td>
            <td align="center" style="color: #FF0000; width: 25px;">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        style="color: #FF0000" />
</asp:Content>
