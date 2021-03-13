<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
   <h3>Danh mục sản phẩm</h3>
   <asp:Label ID="lblThongBao" runat="server"></asp:Label>
    <div class="out">
        <asp:ListView ID="ListView1" runat="server" >
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
    </div>

</asp:Content>

