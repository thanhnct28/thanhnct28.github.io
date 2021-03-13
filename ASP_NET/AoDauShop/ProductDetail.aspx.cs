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

public partial class ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ProductVO pvo = new Product().SelectByID(Int32.Parse(Request.QueryString["ID"]));
            lblName.Text = pvo.ProductName;
            lblValue.Text = pvo.Value;
            lblAmount.Text = pvo.Amount;
            imgProduct.ImageUrl = "images/cards/" + pvo.Image;
        }
    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        Basket.Instance.AddItem(Int32.Parse(Request.QueryString["ID"]));
        Response.Redirect("ShoppingCart.aspx");
    }
}

