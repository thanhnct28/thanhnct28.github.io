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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DAL.Member mem = new DAL.Member();
        string user = Utilties.Toollist.removeSpecialCharacters(txtUserName.Text);
        string pass = Utilties.Toollist.removeSpecialCharacters(txtPassword.Text);
        if (mem.CheckLoginUser(user, pass))
        {
            Session["User"] = user;
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblMessage.Text = "<br>Tài khoản hoặc mật khẩu không đúng.";
            return;
        }
    }
}
