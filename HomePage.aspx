<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <div style="width: 672px">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Image ID="Image8" runat="server" Height="196px" 
                            ImageUrl='<%# Bind("image_path") %>' Width="201px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lable3" name="productname" runat="server" 
                            Text='<%# Bind("proname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 109px">
                        <asp:Label ID="Label1" runat="server" Text="Price :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="viewproduct">View</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {
            window.location = "localhost:60079/WebOne/DetailsPage.aspx";    
        }

// ]]>
    </script>
</asp:Content>

