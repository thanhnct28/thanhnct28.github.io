<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" Title="Chi tiết sản phẩm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
        .style2
        {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Chi tiết sản phẩm</h3>
    
    <table align="center" class="style1">
        <tr>
            <td class="style2" rowspan="5">
              
                <asp:Image ID="imgProduct" runat="server" Height="136px" 
                    Width="199px" />
              
               </td>
            <td>
                Tên sản phẩm:<asp:Label ID="lblName" CssClass="status" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                Mệnh giá:<asp:Label ID="lblValue" CssClass="status" runat="server" Text="Label"> </asp:Label> VNĐ</td>
        </tr>
        <tr>
            <td>
               Trong kho còn:<asp:Label ID="lblAmount" CssClass="status" runat="server" Text="Label"></asp:Label> áo</td>
        </tr>
        <tr>
            <td>
                Mô tả: Chưa cập nhật....</td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="btnAddToCart" runat="server" onclick="btnAddToCart_Click">Thêm 
                vào giỏ hàng</asp:LinkButton>
&nbsp;&nbsp;&nbsp; <a href="ShoppingCart.aspx">Xem giỏ hàng</a>
            </td>
        </tr>
    </table>
    
</asp:Content>

