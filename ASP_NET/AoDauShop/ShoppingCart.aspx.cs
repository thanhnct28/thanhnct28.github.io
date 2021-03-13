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

public partial class ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData();
    }
    protected void gvShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            Basket cart = Basket.Instance;
            cart.RemoveItem(productId);
        }
        BindData();
    }
    protected void gvShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Basket cart = Basket.Instance;
            e.Row.Cells[3].Text = "Trị giá: " + cart.GetSubTotal().ToString("C");
        }
    }
    protected void btnUpdateCart_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gvShoppingCart.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                try
                {
                    int productId = Convert.ToInt32(gvShoppingCart.DataKeys[row.RowIndex].Value);
                    int quantity = int.Parse(((TextBox)row.Cells[1].FindControl("txtQuantity")).Text);
                    Basket cart = Basket.Instance;
                    cart.SetItemQuantity(productId, quantity);
                }
                catch (FormatException) { }
            }
        }
        BindData();
    }
    protected void BindData()
    {
        Basket cart = Basket.Instance;
        gvShoppingCart.DataSource = cart.Items;
        gvShoppingCart.DataBind();
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx?TypeID=1");
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        if (Session["User"] == "")
            Response.Redirect("Login.aspx");
        else
        {
            Response.Redirect("CreateOrder.aspx");
        }
    }
}
