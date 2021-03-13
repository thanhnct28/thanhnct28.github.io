<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" Title="Giỏ hàng của bạn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3 id="title">Giỏ hàng của bạn</h3>
                <a href="Default.aspx">< Trở lại trang sản phẩm</a>  
  
            <br /><br />  
            <asp:GridView runat="server" ID="gvShoppingCart" 
        AutoGenerateColumns="False" 
        EmptyDataText="Chưa có thẻ nào trong giỏ hàng." GridLines="None" 
        Width="94%" CellPadding="4" ShowFooter="True" DataKeyNames="ProductId" 
        OnRowDataBound="gvShoppingCart_RowDataBound" 
        OnRowCommand="gvShoppingCart_RowCommand" ForeColor="#333333">  
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />  
                <FooterStyle HorizontalAlign="Right" BackColor="#507CD1" ForeColor="#FFFFFF" 
                    Font-Bold="True" />  
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="#F8F8F8" />  
                <RowStyle BackColor="#EFF3FB" />
                <Columns>  
  
                    <asp:BoundField DataField="Name" HeaderText="Tên Sản Phẩm" />  
                    <asp:TemplateField HeaderText="Số lượng">  
                        <ItemTemplate>  
                            <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />  
                            <cc1:FilteredTextBoxExtender ID="ftQuantity" ValidChars="1234567890" TargetControlID="txtQuantity" runat="server">
                            </cc1:FilteredTextBoxExtender>
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Xóa" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>  
  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                    <asp:BoundField DataField="UnitPrice" HeaderText="Mệnh giá" 
                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" 
                        DataFormatString="{0:C}" >  
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="TotalPrice" HeaderText="Tổng tiền" 
                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" 
                        DataFormatString="{0:C}" >  
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                </Columns>  
            </asp:GridView>  
  
            <br />  
            <asp:Button runat="server" ID="btnUpdateCart" Text="Cập nhật giỏ hàng" OnClick="btnUpdateCart_Click" />  
            <asp:Button ID="btnContinue" runat="server" Text="Chọn tiếp" 
        onclick="btnContinue_Click" />
            <asp:Button ID="btnPay" runat="server" Text="Thanh toán" 
        onclick="btnPay_Click" />
            </asp:Content>

