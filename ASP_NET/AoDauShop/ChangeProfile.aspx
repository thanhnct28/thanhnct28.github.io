<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="ChangeProfile.aspx.cs" Inherits="ChangeProfile" Title="Thay đổi thông tin cá nhân" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Đổi thông tin cá nhân</h3>
    <table class="style1" align="center">
    <tr>
        <td class="style4">
            Tài khoản:</td>
        <td class="style3">
            <asp:TextBox ID="txtUserName" runat="server" Width="200px" Enabled="False" 
                ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Yêu cầu tài khoản."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Họ tên:</td>
        <td class="style3">
            <asp:TextBox ID="txtFullName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtFullName" ErrorMessage="Yêu cầu họ tên"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Giới tính:</td>
        <td class="style3">
            <asp:RadioButton ID="rdoMale" runat="server" GroupName="G" Text="Nam" 
                Checked="True" />
            <asp:RadioButton ID="rdoFemale" runat="server" GroupName="G" Text="Nữ" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            Ngày sinh:</td>
        <td class="style3">
            <asp:TextBox ID="txtDOB" runat="server" Width="200px"></asp:TextBox>
            <cc1:CalendarExtender ID="cldDate" TargetControlID="txtDOB" runat="server">
            </cc1:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtDOB" ErrorMessage="Yêu cầu nhập ngày sinh"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Địa chỉ:</td>
        <td class="style3">
            <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="Yêu cầu địa chỉ"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Thành phố:</td>
        <td class="style3">
            <asp:TextBox ID="txtCity" runat="server" Height="21px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtCity" ErrorMessage="Yêu cầu thành phố"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Số điện thoại:</td>
        <td class="style3">
            <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtPhone" ErrorMessage="Yêu cầu điện thoại"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Email:</td>
        <td class="style3">
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Yêu cầu email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" Display="Dynamic" 
                ErrorMessage="Email chưa đúng định dạng" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:Button ID="btnChange" runat="server" Text="Cập nhật" 
                onclick="btnChange_Click" />
        </td>
    </tr>
    </table>
</asp:Content>

