<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="MyCartBilling.aspx.cs" Inherits="MyCartBilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <div style="height: 825px">
    <div style="position: absolute; top: 386px; left: 386px; height: 703px; width: 716px;">

    <h1 style="text-align: center; font-family: 'Monotype Corsiva'" 
            __designer:mapid="ee">&nbsp;</h1>
        <h1 style="text-align: center; font-family: Rockwell; font-size: x-large;" 
            __designer:mapid="ee">Payment Details</h1>
<div align="center" style="width: 700px; height: 321px" __designer:mapid="ef">

    <table border="1" style="width: 56%" __designer:mapid="f0">
        <tr __designer:mapid="f1">
            <td align="center" colspan="3" style="text-align: center" __designer:mapid="f2">
                <asp:Label ID="Label36" runat="server" style="font-weight: 700" 
                    Text="Payment Mode : "></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                    style="font-weight: 700" Text="Cash On Delivery" />
            </td>
        </tr>
        <tr __designer:mapid="f5">
            <td align="center" colspan="3" style="height: 23px" __designer:mapid="f6">
                <asp:Label ID="Label27" runat="server" Font-Bold="True" 
                    Text="Billing Information"></asp:Label>
            </td>
        </tr>
        <tr __designer:mapid="fc">
            <td style="width: 102px" __designer:mapid="fd">
                <asp:Label ID="Label20" runat="server" Text="Address Line 1:"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="ff" align="left">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="177px"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="101">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Address Line1" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="109">
            <td style="width: 102px" __designer:mapid="10a">
                <asp:Label ID="Label21" runat="server" Text="Address Line2:"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="10c" align="left">
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="177px"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="10e">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Address Line 2" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="116">
            <td style="width: 102px" __designer:mapid="117">
                <asp:Label ID="Label22" runat="server" Text="City:"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="119" align="left">
                <asp:TextBox ID="txtbcity" runat="server" MaxLength="20"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="11b">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtbcity" ErrorMessage="Enter City" style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtbcity" ErrorMessage="Enter Proper city" 
                    ForeColor="Red" ValidationExpression="[A-Z a-z]+">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="123">
            <td style="width: 102px" __designer:mapid="124">
                <asp:Label ID="Label23" runat="server" Text="State:"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="126" align="left">
                <asp:TextBox ID="txtbstate" runat="server" MaxLength="20"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="128">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtbstate" ErrorMessage="Enter State:" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtbstate" ErrorMessage="Enter Proper state" 
                    ForeColor="#CC0000" ValidationExpression="[A-Z a-z]+">*</asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr __designer:mapid="130">
            <td style="width: 102px" __designer:mapid="131">
                <asp:Label ID="Label25" runat="server" Text="Zip Code"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="133" align="left">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="135">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Zipcode" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="13d">
            <td style="width: 102px" __designer:mapid="13e">
                <asp:Label ID="Label26" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td style="width: 310px" __designer:mapid="140" align="left">
                <asp:TextBox ID="txtbcontact" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td style="width: 41px" __designer:mapid="142">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtbcontact" ErrorMessage="Enter Contact No" 
                    style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtbcontact" ErrorMessage="Invalid Contact number" 
                    ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="14f" align="center">
            <td colspan="3" style="text-align: center" __designer:mapid="150" 
                align="center">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Confirm" 
                    style="font-weight: 700" onclick="btnsubmit_Click" Width="103px" />
            </td>
        </tr>
    </table>
    <br __designer:mapid="152"/>
    <div style="position: absolute; top: 432px; left: 182px; width: 389px; height: 347px;">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="375px" 
        style="color: #FF0000; text-align: left; margin-top: 34px;" Width="244px" />
    </div>
</div>
    </div>
</div>
</asp:Content>

