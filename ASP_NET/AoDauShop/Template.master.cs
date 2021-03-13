using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Template : System.Web.UI.MasterPage
{
    public string menuTop;
    public string cartstring;
    protected void Page_Load(object sender, EventArgs e)
    {
        menuTop = loadMenuTop();
        if (Basket.Instance.Items.Count == 0)
            cartstring = "Không có sản phẩm nào.";
        else
            cartstring = String.Format("Có {0} sản phẩm",Basket.Instance.Items.Count);

    }
    public string loadMenuTop()
    { 
        string menu;
      if (Session["User"] == "")
          {

				menu="<li><a href='Default.aspx'>Trang chủ</a></li>"+
					"<li><a href='Register.aspx'>Đăng ký</a></li>"+
					"<li><a href='Login.aspx'>Đăng nhập</a></li>"+
					"<li><a href='#'>Liên hệ</a></li>";
          }
          else
          {
              menu = "<li><a href='Default.aspx'>Trang chủ</a></li>" +
                   "<li><a href='ChangeProfile.aspx'>Đổi thông tin</a></li>" +
                   "<li><a href='ShoppingCart.aspx'>Giỏ hàng</a></li>" +
                   "<li><a onclick='return confirm("+"Bạn có muốn thoát ra?"+")' href='Logout.aspx'>Thoát ra</a></li>" +
                   "<li><a href='#'>Liên hệ</a></li>"; 
          }
      return menu;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SearchResults.aspx?keyword="+txtSearch.Text);
    }
}
