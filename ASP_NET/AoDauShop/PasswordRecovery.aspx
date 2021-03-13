<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 77%;
        }
        .style2
        {
    }
    .style3
    {
        width: 118px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Khôi phục mật khẩu</h3>
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                Nhập vào tài khoản:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Nhập vào email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email không đúng dạng" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnRecovery" runat="server" onclick="btnRecovery_Click" 
                    Text="Lấy lại mật khẩu" />
            </td>
        </tr>
 
        </table>
</asp:Content>

