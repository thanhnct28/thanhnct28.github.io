<%@ Page Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="OrderLog.aspx.cs" Inherits="OrderLog" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MoreStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Đơn hàng đã gửi</h3>
    <asp:GridView ID="gvwOrderLog" runat="server" CellPadding="4" 
    ForeColor="#333333" GridLines="None" Width="638px" 
        AutoGenerateColumns="False" >
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="OrderDate" HeaderText="Ngày tạo" />
            <asp:BoundField DataField="RequiredDate" HeaderText="Ngày yêu cầu" />
            <asp:BoundField DataField="ShippedDate" HeaderText="Ngày chuyển" />
            <asp:BoundField DataField="Total" HeaderText="Tổng tiền" />
            <asp:BoundField DataField="ShipAddress" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="Status" HeaderText="Trạng thái" />
            <asp:TemplateField HeaderText="Chi tiết">
                <ItemTemplate>
                     <a onclick='return viewdetails(<%#Eval("OrderID") %>)' style="cursor:pointer;color:Blue;">Xem</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
<script language="javascript" type="text/javascript">
// <!CDATA[

function viewdetails(id) {
        window.open('OrderLogDetail.aspx?ID='+id , 'Chi tiết' , 'toolbar=0 , location=0 , status=1 , menubar=0, scrollbars=1 , resizable=0, top=100, left=300 , width=500 , height=300')
}

// ]]>
</script>
</asp:Content>

