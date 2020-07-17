<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateStock.aspx.cs" Inherits="Admin_UpdateStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <div style="height: 386px; width: 845px; text-align: center">
        <br />
        <asp:Label ID="UpdateLabel" runat="server" style="font-family: Rockwell" 
            Text="Select Category"></asp:Label>
&nbsp;:
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>CR</asp:ListItem>
            <asp:ListItem>FB</asp:ListItem>
            <asp:ListItem>VO</asp:ListItem>
            <asp:ListItem>BB</asp:ListItem>
            <asp:ListItem>RK</asp:ListItem>
            <asp:ListItem>SK</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton8" runat="server" CausesValidation="False" 
            onclick="LinkButton8_Click">View Products</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="proid" HeaderText="ID" />
                <asp:BoundField DataField="proname" HeaderText="Name" />
                <asp:BoundField DataField="prostock" HeaderText="Stock" />
            </Columns>
        </asp:GridView>
        <br />
        <table>
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="ID : "></asp:Label></td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtid" ErrorMessage="Please Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Stock : "></asp:Label></td>
            <td>
                <asp:TextBox ID="txtstock" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtstock" ErrorMessage="Please Enter Stock" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtstock" ErrorMessage="Stock range between 1-500" ForeColor="Red" 
                        MaximumValue="500" MinimumValue="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
        <td colspan=3 align="center">
            <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" /></td>
        </tr>
        </table>
    </div>
</asp:Content>

