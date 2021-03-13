<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" Title="Danh mục sản phẩm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Danh mục sản phẩm</h3>
    <div class="out">
        <asp:ListView ID="ListView1" runat="server" 
        DataSourceID="objDsProducts" >
        <LayoutTemplate>
            <div id="ItemPlaceHolder"  runat="server">Ten</div>
        </LayoutTemplate>
            <ItemTemplate>
                 <div class="in">
                    <a href='ProductDetail.aspx?ID=<%#Eval("ProductID") %>'><img src='images/cards/<%#Eval("Image") %>' alt="" /></a>
                    <p>Mệnh giá :<span style="color:Red"><%#Eval("Value") %></span></p>
                    <p><a href='ProductDetail.aspx?ID=<%#Eval("ProductID") %>'>Chi tiết...</a></p>
                </div>
            </ItemTemplate>
            <EmptyDataTemplate>
                <p class="status">Không có sản phẩm nào trong danh mục này</p>
            </EmptyDataTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="objDsProducts" runat="server" 
            SelectMethod="SelectProductsByTypeID" TypeName="DAL.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="TypeID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

