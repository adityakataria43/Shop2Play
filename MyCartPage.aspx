<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="MyCartPage.aspx.cs" Inherits="MyCartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <div style="height: 996px; width: 819px">
<br />
    <div style="position: absolute; top: 363px; left: 355px; height: 822px; width: 789px;">
   <div style="width: 162px; height: 51px; margin-bottom: 0px; position: absolute; top: 27px; left: 333px;">
    <h1 style="position: absolute; font-family: Rockwell; font-size: x-large;">My Cart</h1>
    </div>
    <div style="position: absolute; top: 87px; left: 114px; height: 650px; width: 611px;">

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            ondatabound="GridView2_DataBound" ShowFooter="True" Width="100%">
            <Columns>
                <asp:BoundField DataField="proid" HeaderText="Product ID" />
                <asp:BoundField DataField="proname" HeaderText="Name" />
                <asp:BoundField DataField="quentity" HeaderText="Quantity" />
                <asp:BoundField DataField="price" HeaderText="Total Price" />
            </Columns>
        </asp:GridView>

        <br />
        <div style="position: absolute; top: auto; left: 126px; height: 211px; width: 297px;">
            <table style="width: 100%; position: absolute; top: 0px; left: 0px; height: 128px;">
                <tr>
                    <td align="center" style="width: 138px">
                        <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                    </td>
                    <td align="center" style="text-align: left">
                        <asp:TextBox ID="productid" runat="server" style="text-align: left"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 138px; height: 73px;">
                        <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td align="center" style="text-align: left; height: 73px;">
                        <asp:TextBox ID="productqt" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="productqt" ErrorMessage="Quantity should be between 1-10" 
                            ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 138px; text-align: left;">
                        <asp:Button ID="Button1" runat="server" Text="Delete" onclick="Button1_Click" />
                    </td>
                    <td align="center" style="text-align: right">
                        <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="text-align: center">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                            Text="Pay Now" />
                    </td>
                </tr>
            </table>
        </div>

    </div>
    </div>
    </div>
</asp:Content>

