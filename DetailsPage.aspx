<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="DetailsPage.aspx.cs" Inherits="DetailsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <br />
    <table style="width: 94%" align="center">
        <tr>
            <td style="width: 334px">
                <asp:Image ID="productimage" runat="server" BorderStyle="Double" Height="399px" 
                     Width="308px" />
            </td>
            <td>
                <br />
                <asp:Label ID="productname" runat="server" 
                    style="font-weight: 700; font-size: x-large; color: #0033CC;" 
                    ></asp:Label>
                <br />
                <br />
                <asp:Label ID="keyfeatures" runat="server" style="font-size: large; font-weight: 700;" 
                    Text="KEY FEATURES:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="productdescription" runat="server" Text="Label"></asp:Label>
                <span style="font-size: large"><br />
                </span>
                <br />
                <asp:Label ID="price" runat="server" style="font-weight: 700" 
                    Text="PRICE : "></asp:Label>
                <asp:Label ID="productprice" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="qt" runat="server" Font-Bold="True" Text="QUANTITY : "></asp:Label>
                <asp:TextBox ID="quantity" runat="server">1</asp:TextBox>
                <asp:RangeValidator ID="QtyRangeValidator" runat="server" 
                    ControlToValidate="quantity" ErrorMessage="Quantity should be between 1-10" 
                    ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" 
                    ImageUrl="~/Images/atc.jpg" 
                    style="text-align: center" Width="181px" CausesValidation="False" 
                    onclick="ImageButton1_Click" />
                <br />
                <br />
                <asp:ImageButton ID="buynow" runat="server" Height="80px" 
                    ImageUrl="~/Images/buy3.jpg" Width="194px" onclick="buynow_Click" />
            </td>
        </tr>
    </table>
<br />
<br/>
</asp:Content>

