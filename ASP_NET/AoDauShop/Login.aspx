<%@ Page Language="C#" MasterPageFile="~/Template.master" EnableEventValidation="true" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Đăng nhập hệ thống" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
        .guide
        {
        	color:Blue;
        	font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Đăng nhập hệ thống</h3>
    <asp:Label ID="lblMessage" CssClass="status" runat="server" Text=""></asp:Label>
    
    <table align="center" class="style1">
        <tr>
            <td class="guide" colspan="2">
                Bạn phải đăng nhập để có thể mua được hàng.</td>
        </tr>
        <tr>
            <td class="style2">
                Tài khoản:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Width="185px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
               <a href="PasswordRecovery.aspx">Bạn quên mật khẩu?</a> </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" 
                    onclick="btnLogin_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

