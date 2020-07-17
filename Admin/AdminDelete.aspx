<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDelete.aspx.cs" Inherits="AdminDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <div style="height: 589px; text-align: center">
        <br />
        <br />
        <div style="height: 37px; text-align: left; font-size: x-large;">
             <h2 style="text-align: center; font-family: Rockwell; font-size: x-large">DELETE PRODUCT</h2>
        </div>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" 
             
            style="text-align: center" Width="55px">
            <asp:ListItem>CR</asp:ListItem>
            <asp:ListItem>RK</asp:ListItem>
            <asp:ListItem>VO</asp:ListItem>
            <asp:ListItem>SK</asp:ListItem>
            <asp:ListItem>BB</asp:ListItem>
            <asp:ListItem>FB</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">View</asp:LinkButton>
        <br />
        <br />
        <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:BoundField DataField="proid" HeaderText="ID" />
            <asp:BoundField DataField="proname" HeaderText="Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Delete" CommandArgument='<%# Eval("proid") %>'>Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
          </Columns>
    </asp:GridView>
        <br />
        <br />
        <br />
    </div>
    
</asp:Content>

