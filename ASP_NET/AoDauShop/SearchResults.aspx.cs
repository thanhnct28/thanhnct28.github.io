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
using DAL;

public partial class SearchResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["keyword"] != null)
        {
            string keyword = Request.QueryString["keyword"];
            keyword = keyword.Replace("'", "&#39;");
            search(keyword);
        }
    }
    private void search(string keyword)
    {
        DataTable dt = new Product().SearchInfo(keyword);
        if (dt.Rows.Count <= 0)
        {
            lblThongBao.Text = "<ul> <li>Không tìm thấy sản phẩm nào với từ khóa: "
                + "<span style='color:red; font-weight:bold;'>" + keyword + "</span></li><li>Tip: Thử tìm kiếm với tiếng việt"
                + " có dấu, hoặc gõ từ khóa ngắn hơn.</li>";
        }
        else
        {
            lblThongBao.Text = "";
        }
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}
