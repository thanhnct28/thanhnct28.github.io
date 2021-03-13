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

public partial class OrderLog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
            DataBind();
    }
    private void DataBind()
    {


        int userid=new Member().SelectByUserName(Session["User"].ToString()).MemberID;
        gvwOrderLog.DataSource = new Order_Base().SelectDynamic("MemberID=" + userid, "OrderDate DESC");
        gvwOrderLog.DataBind();
    }
}
