<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderLogDetail.aspx.cs" Inherits="OrderLogDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết đơn hàng</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvwOrderLogDetail" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="objDsOrderLogDetail" 
            ForeColor="#333333" GridLines="None" Width="492px">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="Amount" HeaderText="Số lượng" />
                <asp:BoundField DataField="Price" HeaderText="Đơn giá" />
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:ObjectDataSource ID="objDsOrderLogDetail" runat="server" 
            SelectMethod="SelectByOrderID" TypeName="DAL.Orders">
            <SelectParameters>
                <asp:QueryStringParameter Name="orderID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
