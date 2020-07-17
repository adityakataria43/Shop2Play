<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <br>
    <div style="width: 765px; height: 436px; text-align: center">
        <table style="width: 100%; height: 288px" __designer:mapid="10">
            <tr __designer:mapid="11">
                <td style="text-align: right; width: 194px" __designer:mapid="12">
                    <asp:Label ID="fpemail" runat="server" 
                        style="font-family: 'Book Antiqua'; font-weight: 700" Text="Email :"></asp:Label>
                </td>
                <td style="text-align: left; width: 330px" __designer:mapid="14">
                    <asp:TextBox ID="fpemailtb" runat="server" Width="250px"></asp:TextBox>
                &nbsp;<asp:Button ID="Submitbtn" runat="server" onclick="Button2_Click" 
                        Text="Submit" CausesValidation="False" />
                </td>
                <td __designer:mapid="16">
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                        ControlToValidate="fpemailtb" 
                        ErrorMessage="* Please enter your registered email_id" ForeColor="Red" 
                        style="text-align: left"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="17">
                <td style="width: 194px" __designer:mapid="18">
                    &nbsp;</td>
                <td style="width: 330px" __designer:mapid="19">
                    &nbsp;</td>
                <td __designer:mapid="1a">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="1b">
                <td style="width: 194px; text-align: right" __designer:mapid="1c">
                    <asp:Label ID="fpsecqts" runat="server" 
                        style="font-weight: 700; font-family: 'Book Antiqua'" 
                        Text="Your Security Question :"></asp:Label>
                </td>
                <td style="width: 330px; text-align: left" __designer:mapid="1e">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td __designer:mapid="20">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="21">
                <td style="width: 194px" __designer:mapid="22">
                    &nbsp;</td>
                <td style="width: 330px" __designer:mapid="23">
                    &nbsp;</td>
                <td __designer:mapid="24">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="25">
                <td style="width: 194px; text-align: right" __designer:mapid="26">
                    <asp:Label ID="fpans" runat="server" 
                        style="font-family: 'Book Antiqua'; font-weight: 700" Text="Answer : "></asp:Label>
                </td>
                <td style="width: 330px; text-align: left" __designer:mapid="28">
                    <asp:TextBox ID="fpanstb" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td __designer:mapid="2a" style="text-align: left">
                    <asp:RequiredFieldValidator ID="rfvanswer" runat="server" 
                        ControlToValidate="fpanstb" ErrorMessage="* Enter your answer" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="2b">
                <td style="width: 194px" __designer:mapid="2c">
                    &nbsp;</td>
                <td style="width: 330px" __designer:mapid="2d">
                    &nbsp;</td>
                <td __designer:mapid="2e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="2f">
                <td style="width: 194px; text-align: right" __designer:mapid="30">
                    <asp:Label ID="Fpresetpass" runat="server" 
                        style="font-weight: 700; font-family: 'Book Antiqua'" Text="New Password :"></asp:Label>
                </td>
                <td style="width: 330px; text-align: left" __designer:mapid="32">
                    <asp:TextBox ID="newpass" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
                <td __designer:mapid="34" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="newpass" ErrorMessage="Enter new password" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                <asp:RegularExpressionValidator ID="REVpass1" runat="server" 
                    ControlToValidate="newpass" 
                    ErrorMessage="Password must be minimum of 7-15 characters" 
                    style="color: #FF0000" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\$]{7,15}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr __designer:mapid="2f">
                <td style="width: 194px; text-align: right" __designer:mapid="30">
                    &nbsp;</td>
                <td style="width: 330px; text-align: left" __designer:mapid="32">
                    &nbsp;</td>
                <td __designer:mapid="34">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="35">
                <td style="width: 194px; height: 19px" __designer:mapid="36" align="right">
                    <asp:Label ID="Fpresetpass0" runat="server" 
                        style="font-weight: 700; font-family: 'Book Antiqua'" 
                        Text="Confirm Password :"></asp:Label>
                </td>
                <td style="height: 19px; width: 330px" __designer:mapid="38" align="left">
                    <asp:TextBox ID="newpass0" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 19px; text-align: left;" __designer:mapid="3a">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="newpass0" ErrorMessage="Enter confirm password" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="fpcnfrmpass" runat="server" 
                        ControlToValidate="newpass0" ErrorMessage="* Password does not match" 
                        ForeColor="Red" ControlToCompare="newpass"></asp:CompareValidator>
                </td>
            </tr>
            <tr __designer:mapid="3b">
                <td colspan="3" __designer:mapid="3c">
                    <asp:Button ID="Resetbtn" runat="server" Height="25px" Text="Reset" 
                        Width="79px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br><br/>

</asp:Content>

