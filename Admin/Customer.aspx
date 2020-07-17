<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Admin_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <asp:GridView ID="CustGrid" runat="server" AutoGenerateColumns="False" 
        Height="178px" Width="433px">
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="User_ID" />
            <asp:BoundField DataField="fname" HeaderText="Name" />
            <asp:BoundField DataField="mname" HeaderText="Middle_Name" />
            <asp:BoundField DataField="lname" HeaderText="Last_Name" />
            <asp:BoundField DataField="email" HeaderText="Email-id" />
        </Columns>
    </asp:GridView>
</asp:Content>

