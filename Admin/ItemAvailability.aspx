<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ItemAvailability.aspx.cs" Inherits="Admin_ItemAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <br />
    <h1 style="text-align: center"> 
        <span style="font-family: Rockwell; font-size: x-large; font-weight: normal;">
        <strong>ITEMS STOCK</strong></span></h1>
    <br/>



    <table style="width: 100%">
        <tr>
            <td style="width: 447px; text-align: right">
                <asp:Label ID="catlabel" runat="server" style="font-weight: 700" 
                    Text="Select Category :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px">
                    <asp:ListItem>CR</asp:ListItem>
                    <asp:ListItem>RK</asp:ListItem>
                    <asp:ListItem>BB</asp:ListItem>
                    <asp:ListItem>VO</asp:ListItem>
                    <asp:ListItem>FB</asp:ListItem>
                    <asp:ListItem>SK</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">View</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="338px">
        <Columns>
            <asp:BoundField DataField="proid" HeaderText="ID" />
            <asp:BoundField DataField="proname" HeaderText="Name" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="prostock" HeaderText="Stock" />
            
        </Columns>
    </asp:GridView>



    <br/>
</asp:Content>

