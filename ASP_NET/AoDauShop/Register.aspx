<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="Đăng ký thành viên" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register assembly="MSCaptcha" Namespace="MSCaptcha" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 95%;
        }
        .style2
        {
        }
        .style3
        {
            width: 342px;
        }
    .style4
    {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Đăng ký thành viên</h3>

    <asp:MultiView ID="mtvwRegister" runat="server">
        <asp:View ID="vwRegister" runat="server">
                <table class="style1" align="center">
    <tr>
        <td class="style4">
            Tài khoản:</td>
        <td class="style3">
            <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtUserName" ErrorMessage="Yêu cầu tài khoản."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Mật khẩu:</td>
        <td class="style3">
            <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtPassword" Display="Dynamic" 
                ErrorMessage="Yêu cầu mật khẩu"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Xác nhận mật khẩu:</td>
        <td class="style3">
            <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtPassword" Display="Dynamic" 
                ErrorMessage="Xác nhận mật khẩu"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                Display="Dynamic" ErrorMessage="Xác nhận không đúng."></asp:CompareValidator>
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
            <cc1:CalendarExtender ID="cldDOB"  TargetControlID="txtDOB"  runat="server">
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
        <td class="style4">
            Xác nhận:</td>
        <td class="style3">
            <cc2:CaptchaControl ID="CaptchaControl1" runat="server" CaptchaLength="5" CaptchaHeight="60" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="Yellow" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="58px" Width="209px" FontColor="82, 158, 0" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="txtCapcha" runat="server"></asp:TextBox>
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" 
                onclick="btnRegister_Click" />
        </td>
    </tr>
    </table>
        </asp:View>
        <asp:View ID="vwSuccess" runat="server">
            <div style="color:Red;font-weight:bold;text-align:center">
                <h4>Bạn đã đăng ký thành công.</h4>
                <p><a href="Default.aspx">Vui lòng quay lại trang chủ để mua hàng.</a></p>
            </div>
        </asp:View>
        <asp:View ID="vwLogged" runat="server">
             <div style="color:Red;font-weight:bold;text-align:center">
                <h4>Bạn đang ở trạng thái đăng nhập.</h4>
                <p><a href="Logout.aspx">Vui lòng thoát ra để đăng ký.</a></p>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

