using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using ValueObject;
using DAL;

public partial class CreateOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
        if (Session["User"] == "")
        {
            Response.Redirect("Login.aspx");
        }

    }
    private void BindData()
    {
        Basket cart = Basket.Instance;
        gvwProducts.DataSource = cart.Items;
        gvwProducts.DataBind();
    }
    protected void gvwProducts_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Basket cart = Basket.Instance;
            e.Row.Cells[3].Text = "Trị giá: " + cart.GetSubTotal().ToString("C");
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            OrderVO ovo = new OrderVO();
            ovo.MemberID = new Member().SelectByUserName(Session["User"].ToString()).MemberID;
            ovo.OrderDate = DateTime.Now;
            ovo.RequiredDate = DateTime.Parse(RequiredDate.Text);
            ovo.ShippedDate = DateTime.Now;
            ovo.Total = Basket.Instance.GetSubTotal().ToString();
            ovo.ShipAddress = txtAddress.Text;
            ovo.ShipCity = txtCity.Text;
            ovo.ShipCountry = txtCountry.Text;
            ovo.Status = 1;

            Order_Base order_base = new Order_Base();
            int orderid = order_base.Insert(ovo);
            Basket basket=Basket.Instance;
            foreach (CartItem i in basket.Items)
            {
                OrdeDetailVO odvo = new OrdeDetailVO();
                odvo.OrderID = orderid;
                odvo.ProductID = i.ProductId;
                odvo.Price = i.UnitPrice.ToString();
                odvo.Amount = i.Quantity;
                odvo.Discount = 0;
                new OrdeDetail_Base().Insert(odvo);
            }
            basket.Items.Clear();
            Session["ASPNETShoppingCart"] = null;
            Response.Redirect("CreateOrderSuccess.htm");
        }
        catch (Exception ex)
        {
            Utilties.Alert.Show("Có lỗi xảy ra:"+ex.Message);
        }
    }
}
