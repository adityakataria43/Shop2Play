<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
<title>Login Page</title><br />
    &nbsp;
<h1 style="font-family: Rockwell; text-align: center; font-size: x-large;">Welcome to Shop To Play</h1>
<div style="height: 83px">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span 
                       style="font-family: 'Monotype Corsiva'"> </span> </strong><h3>
                       <em>
                       <span style="font-family: 'Monotype Corsiva'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></em><span 
                           style="font-size: large; font-family: Rockwell;">ADMIN LOGIN</span><span 
                           style="font-family: Rockwell; font-size: large">&nbsp;&nbsp;</span><span 
                           style="font-size: x-large">&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </h3>
              
</div>

<div style="width: 759px; height: 238px;" >
                                                  
                                                       <br />
                                                  
                                                       <table style="width: 71%; font-size: 17px; height: 203px;" 
                                                        border="1" align="center">
                                                           <tr>
                                                               <td colspan="2" bgcolor="#FFFF99" align="center">
                                                                   <asp:Label ID="lbllogin" runat="server" Text="Login" style="font-weight: 700"></asp:Label>
                                                               </td>
                                                           </tr>
                                                           <tr>
                                                               <td style="height: 2px; width: 149px">
                                                                   <asp:Label ID="LoginAdmin" runat="server" Text="EMAIL : "></asp:Label>
                                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                               </td>
                                                               <td style="height: 2px; width: 425px;">
                                                                   <asp:TextBox ID="adminlogintb" runat="server" Height="21px" 
                                                                        Width="199px"></asp:TextBox>
                                                                   <asp:RequiredFieldValidator ID="rfvadminname" runat="server" 
                                                                       ControlToValidate="adminlogintb" ErrorMessage="*Please Enter User name" 
                                                                       style="color: #FF0000"></asp:RequiredFieldValidator>
                                                                   <br />
                                                               </td>
                                                           </tr>
                                                           <tr>
                                                               <td style="width: 149px" class="style14">
                                                                   <asp:Label ID="LoginPassword" runat="server" Text="PASSWORD :"></asp:Label>
                                                               </td>
                                                               <td align="left" style="width: 425px">
                                                                   <asp:TextBox ID="adminpasstb" runat="server" TextMode="Password" Height="21px" 
                                                                       Width="199px"></asp:TextBox>
                                                                   &nbsp;<asp:RequiredFieldValidator ID="rfvadminpass" runat="server" 
                                                                       ControlToValidate="adminpasstb" ErrorMessage="*Please Enter password" 
                                                                       style="color: #FF0000"></asp:RequiredFieldValidator>
                                                               </td>
                                                           </tr>
                                                           <tr>
                                                               <td colspan="2" align="center">
                                                                   <asp:Button ID="btnlogin" runat="server" Text="LOGIN" Font-Bold="True" 
                                                                       ForeColor="Black" Height="36px" 
                                                                       style="margin-top: 42px; font-family: Arial, Helvetica, sans-serif;" 
                                                                       Width="115px" onclick="btnlogin_Click" />
                                                               </td>
                                                           </tr>
                                                       </table>
                                                       </div >
</asp:Content>

