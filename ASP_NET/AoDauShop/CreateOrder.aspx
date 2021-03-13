<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CreateOrder.aspx.cs" Inherits="CreateOrder" Title="Gửi đơn hàng" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 73%;
        }
        .style2
        {
        }
        .style3
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Gửi đơn hàng</h3>
    <asp:GridView ID="gvwProducts"
    EmptyDataText="Chưa có áo nào trong giỏ hàng." 
     AutoGenerateColumns="False"
     ShowFooter="True" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowdatabound="gvwProducts_RowDataBound" Width="664px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="Quantity" HeaderText="Số lượng" />
            <asp:BoundField DataField="UnitPrice" HeaderText="Mệnh giá" />
            <asp:BoundField DataField="TotalPrice" HeaderText="Tổng tiền" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <div class="clear"></div>
    
                             <table align="center" class="style1">
                                 <tr>
                                     <td style="font-weight:bold;text-align:center;text-transform:uppercase" colspan="2">
                                         Bạn hãy điền địa chỉ vào đây</td>
                                 </tr>
                                 <tr>
                                     <td class="style3">
                                         Địa chỉ nhận:&nbsp;</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="56px" TextMode="MultiLine" 
                    Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Ngày yêu cầu nhận:</td>
            <td>
                <asp:TextBox ID="RequiredDate" runat="server" Width="200px"></asp:TextBox>
                <cc1:CalendarExtender ID="cldRequiredDate" TargetControlID="RequiredDate" Format="MM/dd/yyyy" runat="server">
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="RequiredDate" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Thành phố:</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Quốc gia:</td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtCountry" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnSend" runat="server" Text="Gửi đơn hàng" 
                    onclick="btnSend_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>

