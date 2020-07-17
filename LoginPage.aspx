<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="Server">
    <title>Login Page</title>
    <br />
    &nbsp;
    <h1 style="font-family: Rockwell; text-align: center; font-size: x-large;">
        Welcome to Shop To Play</h1>
    <div style="height: 83px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span
            style="font-family: 'Monotype Corsiva'"> </span>
        <span style="font-size: large;
                font-family: Rockwell;">If Not A Member Please Register </span>
        </strong>&nbsp;<h3>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="LoginHyprLink1" runat="server" NavigateUrl="~/RegistrationPage.aspx"
                ForeColor="#009900" Style="font-size: x-large; font-family: Rockwell;">SIGN UP!</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </h3>
    </div>
    <div style="width: 749px; height: 225px;">
        <br />
        <table style="width: 71%; font-size: 17px; height: 203px;" border="1" align="center">
            <tr>
                <td colspan="2" bgcolor="#FFFF99" align="center" style="height: 5px">
                    <asp:Label ID="lbllogin" runat="server" Text="Login" Style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 149px; text-align: right;">
                    <asp:Label ID="LoginLabel1" runat="server" Text="EMAIL : "></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                </td>
                <td style="height: 20px; width: 642px;">
                    <asp:TextBox ID="logintb" runat="server" Height="21px" Width="199px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="logintb"
                        ErrorMessage="*Please Enter User name" Style="color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="logintb"
                        ErrorMessage="*Enter Valid Email!" Style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 149px; height: 43px; text-align: right;" class="style14">
                    <asp:Label ID="loginLabel2" runat="server" Text="PASSWORD :"></asp:Label>
                </td>
                <td align="left" style="width: 642px; height: 43px;">
                    <asp:TextBox ID="loginpasstb" runat="server" TextMode="Password" Height="21px" Width="199px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginpasstb"
                        ErrorMessage="*Please Enter password" Style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="height: 12px">
                    <asp:Button ID="btnlogin" runat="server" Text="LOGIN" Font-Bold="True" ForeColor="Black"
                        Height="36px" Style="margin-top: 42px; font-family: Arial, Helvetica, sans-serif;"
                        Width="109px" OnClick="btnlogin_Click" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
    <div style="text-align: center">
        <br />
        <asp:LinkButton ID="forgotpwd" runat="server" Style="font-family: Rockwell;
            font-weight: 700; color: #009900" CausesValidation="False" 
            PostBackUrl="~/ForgotPassword.aspx">FORGOT PASSWORD?</asp:LinkButton>
        <br />
    </div>
</asp:Content>
