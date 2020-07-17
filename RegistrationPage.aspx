<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <title>Sign Up</title>
<br/>
<h1 style="text-align: center; font-family: Rockwell;">Sign up</h1>
<div style="height: 791px; width: 757px">
    <table style="width: 595px" align="center">
        <tr>
            <td align="right" style="height: 24px; width: 187px">
                <asp:Label ID="USERID" runat="server" style="font-weight: 700" Text="User ID:"></asp:Label>
            </td>
            <td align="left" style="height: 24px; width: 171px">
                <asp:TextBox ID="useridtb" runat="server" MaxLength="20" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 24px; width: 402px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="height: 24px; width: 187px">
                &nbsp;</td>
            <td align="left" style="height: 24px; width: 171px">
                &nbsp;</td>
            <td style="height: 24px; width: 402px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="height: 24px; width: 187px">
                <asp:Label ID="LoginLabel2" runat="server" Text="First Name:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" style="height: 24px; width: 171px">
                <asp:TextBox ID="fnametb" runat="server" MaxLength="20"></asp:TextBox>
            </td>
            <td style="height: 24px; width: 402px;">
                <asp:RequiredFieldValidator ID="Loginrfv2" runat="server" 
                    ControlToValidate="fnametb" ErrorMessage="*Please Enter First name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="fnametb" ErrorMessage="*Enter Proper Name" ForeColor="Red" 
                    ValidationExpression="[A-Z a-z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr align="right">
            <td style="width: 187px">
                <asp:Label ID="LoginLabel3" runat="server" Text="Middle Name:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px">
                <asp:TextBox ID="mnametb" runat="server" MaxLength="20"></asp:TextBox>
            </td>
            <td align="left" style="width: 402px">
                <asp:RequiredFieldValidator ID="Loginrfv3" runat="server" 
                    ControlToValidate="mnametb" ErrorMessage="*Please Enter Middle name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="mnametb" ErrorMessage="*Enter Proper Name" ForeColor="Red" 
                    ValidationExpression="[A-Z a-z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 187px">
                <asp:Label ID="LoginLabel4" runat="server" Text="Last Name:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px">
                <asp:TextBox ID="lnametb" runat="server" MaxLength="20"></asp:TextBox>
            </td>
            <td style="width: 402px">
                <asp:RequiredFieldValidator ID="loginrfv4" runat="server" 
                    ControlToValidate="lnametb" ErrorMessage="*Please Enter Last name" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="lnametb" ErrorMessage="*Enter Proper Name" ForeColor="Red" 
                    ValidationExpression="[A-Z a-z ']+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px; height: 5px;" align="right">
                <asp:Label ID="Loginlabel5" runat="server" Text="Gender:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td class="style14" style="width: 171px; height: 5px;">
                <asp:RadioButton ID="rbmale" runat="server" GroupName="r1" Text="Male" 
                    Checked="True" />
                <asp:RadioButton ID="rbfemale" runat="server" GroupName="r1" Text="Female" />
            </td>
            <td style="width: 402px; height: 5px;">
                <asp:Label ID="GenderError" runat="server" style="color: #FF0000" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 187px">
                <asp:Label ID="LoginLabel6" runat="server" Text="Email Address:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px">
                <asp:TextBox ID="emailtb" runat="server" MaxLength="50" Height="22px" 
                    Width="264px"></asp:TextBox>
            </td>
            <td style="width: 402px">
                <asp:RegularExpressionValidator ID="Loginrfv5" runat="server" 
                    ControlToValidate="emailtb" ErrorMessage="*Not a valid email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="color: #FF0000"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator 
                    ID="Loginrfv6" runat="server" 
                    ControlToValidate="emailtb" ErrorMessage="*Please Enter E-mail Id" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 187px; height: 26px;">
                <asp:Label ID="LognLable7" runat="server" Text="Country:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px; height: 26px;">
                <asp:DropDownList ID="countryddl" runat="server" Width="152px" >
                    <asp:ListItem Value="IN">India</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 402px; height: 26px;">
                <asp:RequiredFieldValidator ID="loginfrv7" runat="server" 
                    ControlToValidate="countryddl" ErrorMessage="*Select Country" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 187px">
                <asp:Label ID="loginlbl9" runat="server" Text="Password:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px">
                <asp:TextBox ID="passtb" runat="server" TextMode="Password" MaxLength="20" 
                    Height="20px" Width="188px"></asp:TextBox>
            </td>
            <td style="width: 402px">
                <asp:RequiredFieldValidator ID="loginRequiredFieldValidator8" runat="server" 
                    ControlToValidate="passtb" ErrorMessage="*Enter Password" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVpass" runat="server" 
                    ControlToValidate="passtb" 
                    ErrorMessage="Password must be of minimum of 7-15 characters" 
                    style="color: #FF0000" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\$]{7,15}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 187px">
                <asp:Label ID="loginlbl10" runat="server" Text="Confirm Password:" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td align="left" class="style14" style="width: 171px">
                <asp:TextBox ID="cptb" runat="server" TextMode="Password" MaxLength="20" 
                    style="margin-top: 1px" Height="21px" Width="186px"></asp:TextBox>
            </td>
            <td style="width: 402px">
                <asp:RequiredFieldValidator ID="loginRequiredFieldValidator9" runat="server" 
                    ControlToValidate="cptb" ErrorMessage="*Enter Confirm Password" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="passtb" ControlToValidate="cptb" 
                    ErrorMessage="Password should match" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px; text-align: right;">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="Security Question:"></asp:Label>
            </td>
            <td class="style14" style="width: 171px">
                <asp:DropDownList ID="SecList" runat="server" Height="19px" Width="246px">
                    <asp:ListItem>What is your favourite color?</asp:ListItem>
                    <asp:ListItem>Birth Place?</asp:ListItem>
                    <asp:ListItem>What is the name of your childhood friend?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 402px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="SecList" ErrorMessage="*Select Security question" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; text-align: right;">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px; text-align: right;">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Answer:"></asp:Label>
            </td>
            <td class="style14" style="width: 171px">
                <asp:TextBox ID="Answertb" runat="server" Height="21px" Width="172px"></asp:TextBox>
            </td>
            <td style="width: 402px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Answertb" ErrorMessage="*Enter answer to security question" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 187px; text-align: right;">
                &nbsp;</td>
            <td class="style14" style="width: 171px">
                &nbsp;</td>
            <td style="width: 402px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="registertb" runat="server" Text="REGISTER" 
                    style="font-weight: 700" onclick="registertb_Click" />
                <asp:Label ID="lblRegerror" runat="server" style="color: #009900" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        </table>
</div>


</asp:Content>


