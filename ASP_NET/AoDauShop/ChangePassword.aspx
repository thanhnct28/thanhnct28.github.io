<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 60%;
        }
    .style2
    {
    }
    .style3
    {
        width: 150px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Thay đổi mật khẩu</h3>
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                Tên truy nhập:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Width="180px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mật khẩu cũ:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mật khẩu mới:</td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Xác nhận mật khẩu mới:</td>
            <td>
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnChange" runat="server" onclick="btnChange_Click" 
                    Text="Cập nhật" />
            </td>
        </tr>
        </table>
</asp:Content>

