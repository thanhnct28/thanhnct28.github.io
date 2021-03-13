<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Trang chủ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
	<h3>Sản phẩm mới</h3>
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
        <div class="clear"></div>
          <asp:DataPager ID="DataPager1" PagedControlID="ListView1" PageSize="12" runat="server">
            <Fields>
             <asp:NextPreviousPagerField

                         ButtonType="Button"

                         ShowFirstPageButton="true"

                         ShowLastPageButton="true"

                         ShowNextPageButton="true"

                         ShowPreviousPageButton="true" />

           <asp:NumericPagerField />                          
          </Fields>
          </asp:DataPager>
        <asp:ObjectDataSource ID="objDsProducts" runat="server" 
            SelectMethod="SelectTopProductsByTop" TypeName="DAL.Product">
            <SelectParameters>
                <asp:Parameter DefaultValue="15" Name="top" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>			
</asp:Content>

