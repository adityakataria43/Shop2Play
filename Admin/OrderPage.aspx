<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="Admin_OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        ondatabound="GridView1_DataBound">
        <Columns>
            <asp:BoundField DataField="proid" HeaderText="ProID" />
            <asp:BoundField DataField="proname" HeaderText="ProName" />
            <asp:BoundField DataField="quentity" HeaderText="Quantity" />
            <asp:BoundField DataField="price" HeaderText="Total Price" />
        </Columns>
    </asp:GridView>

</asp:Content>

