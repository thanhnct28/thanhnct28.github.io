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
using Utilties;
using DAL;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtUserName.Text = Session["User"].ToString();
        }
        if (Session["User"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        string old = Toollist.removeSpecialCharacters(txtPassword.Text);
        string newpass = Toollist.removeSpecialCharacters(txtConfirmNewPassword.Text);
        if (txtNewPassword.Text.Trim() != txtConfirmNewPassword.Text.Trim())
        {
            Utilties.Alert.Show("Xác nhận mật khẩu không đúng.");
            return;
        }
        else
        {
           string email=new Member().getEmailByUserName(txtUserName.Text);
           string strresult= new DAL.Member().ChangePassword(old, newpass, Session["User"].ToString());
           new Email().Send_Email(email, "Bạn đã đổi password thành công.", "Bạn đã đổi mật khẩu thành công");
           Utilties.Alert.Show(strresult);
        }
    }
}
